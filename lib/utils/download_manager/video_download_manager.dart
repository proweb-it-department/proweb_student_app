import 'dart:async';
import 'dart:collection';
import 'dart:io';
import 'dart:math';
import 'package:dio/dio.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:path_provider/path_provider.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:proweb_student_app/api/local_data/local_data.dart';
import 'package:proweb_student_app/bloc/download_video/download_video_bloc.dart';
import 'package:proweb_student_app/models/video_sendet_model/video_sendet_model.dart';
import 'package:proweb_student_app/server/server.dart';
import 'package:proweb_student_app/utils/enum/base_enum.dart';
import 'package:proweb_student_app/utils/gi/injection_container.dart';

class DownloadManager {
  FlutterLocalNotificationsPlugin? _notificationsPlugin;
  final List<String> slugs = [];
  String? stopedSlugs;
  final String baseDir = '/playlists';
  DownloadVideoBloc? _bloc;
  String videoPath = GlobalPath.video;

  static const int _defaultConcurrency = 6;
  static const int _maxRetries = 4;

  final Map<String, List<CancelToken>> _cancelTokens = {};

  final Map<String, List<HttpClient>> _httpClients = {};

  final Map<String, int> _activeIds = {};

  final Set<String> _stopping = {};

  void initNotifi(FlutterLocalNotificationsPlugin? notifi) {
    _notificationsPlugin = notifi;
  }

  Future<void> init(DownloadVideoBloc contextBloc) async {
    _bloc = contextBloc;
  }

  void setSlugs(List<String> slugList) {
    slugs.addAll(slugList);
  }

  Future<void> _checkNotificationPermission() async {
    if (await Permission.notification.isDenied) {
      await Permission.notification.request();
    }
  }

  Future<String> _prepareSaveDir(String slug) async {
    final directory = await getApplicationDocumentsDirectory();
    String localPath = '${directory.path}$baseDir/$slug';
    final savedDir = Directory(localPath);
    if (!savedDir.existsSync()) {
      savedDir.createSync(recursive: true);
    }
    return localPath;
  }

  bool _shouldStop(String slug) =>
      stopedSlugs == slug || _stopping.contains(slug);

  Future<void> downloadM3u8(
    VideoSendetModel data, {
    Future<void> Function()? callback,
  }) async {
    final id = Random().nextInt(1000);
    _activeIds[data.slug] = id;
    _cancelTokens.putIfAbsent(data.slug, () => []);
    _httpClients.putIfAbsent(data.slug, () => []);
    final baseDirectory = '/$baseDir/${data.slug}';
    final localPath = await _prepareSaveDir(data.slug);
    String? preview;
    String? fileName;
    try {
      if (_bloc == null) return;

      String? key;
      var modelReturned = data.copyWith(
        playlist: '',
        slug: data.slug,
        key: key,
        progress: 0,
        progressType: ProgressTypeDownloadVideo.key,
      );

      saveModel(modelReturned);
      if (data.preview != null) {
        fileName = extractFileNameAndExtension(data.preview!, data.slug);
        if (fileName != null) {
          modelReturned = modelReturned.copyWith(
            progress: 0,
            progressType: ProgressTypeDownloadVideo.preview,
          );
          saveModel(modelReturned);
          try {
            if (_shouldStop(data.slug)) return;
            final okPreview = await _downloadToFileDio(
              downloadPath: data.preview!,
              savePath: localPath,
              nameFile: fileName,
              slug: data.slug,
            );
            preview = '$localPath/$fileName';
            if (okPreview) {
              modelReturned = modelReturned.copyWith(
                preview: data.preview,
                progress: 100,
              );
            } else {
              modelReturned = modelReturned.copyWith(
                preview: null,
                progress: 100,
              );
            }
          } catch (_) {
            modelReturned = modelReturned.copyWith(
              preview: null,
              progress: 100,
            );
          }
          saveModel(modelReturned);
        } else {
          modelReturned = modelReturned.copyWith(preview: null, progress: 100);
          saveModel(modelReturned);
        }
      }
      await _checkNotificationPermission();
      await _showNotification(
        0,
        100,
        id: id,
        title: data.title,
        previewUrl: preview,
      );

      final response = await sl<Dio>().get(
        '$videoPath/api/v1/video/key/${data.slug}/',
      );
      if (response.data is String) key = response.data;
      if (key == null) {
        _showErrorNotification(id: id);
        modelReturned = modelReturned.copyWith(
          progressType: ProgressTypeDownloadVideo.error,
        );
        saveModel(modelReturned);
        return;
      }
      modelReturned = modelReturned.copyWith(
        key: key,
        progress: 100,
        progressType: ProgressTypeDownloadVideo.key,
      );
      saveModel(modelReturned);

      if (_shouldStop(data.slug)) {
        return;
      }

      final m3u8Path = '$localPath/${data.slug}.m3u8';
      final globalM3U8 = '$baseDirectory/${data.slug}.m3u8';
      modelReturned = modelReturned.copyWith(
        playlist: globalM3U8,
        progress: 0,
        progressType: ProgressTypeDownloadVideo.generalM3U8,
      );
      saveModel(modelReturned);

      final okMain = await _downloadToFileDio(
        downloadPath: data.playlist,
        savePath: localPath,
        nameFile: '${data.slug}.m3u8',
        slug: data.slug,
      );
      if (_shouldStop(data.slug)) return;
      if (!okMain) {
        await _removeDir(localPath);
        _showErrorNotification(id: id);
        modelReturned = modelReturned.copyWith(
          progressType: ProgressTypeDownloadVideo.error,
        );
        saveModel(modelReturned);
        return;
      }
      modelReturned = modelReturned.copyWith(
        progress: 100,
        progressType: ProgressTypeDownloadVideo.generalM3U8,
      );
      saveModel(modelReturned);

      final file = File(m3u8Path);
      String outerText = await file.readAsString();
      outerText = decryptAES(outerText);
      final lines = outerText.split('\n');

      final innerM3U8List = lines
          .where((line) => line.trim().endsWith('.m3u8'))
          .toList();

      for (final element in innerM3U8List) {
        if (_shouldStop(data.slug)) return;

        final exp = RegExp(r"/(\d{3,5})/");
        final match = exp.firstMatch(element);
        if (match == null) {
          _showErrorNotification(id: id);
          await _removeDir(localPath);
          modelReturned = modelReturned.copyWith(
            progressType: ProgressTypeDownloadVideo.error,
          );
          saveModel(modelReturned);
          return;
        }
        modelReturned = modelReturned.copyWith(
          progress: 0,
          progressType: ProgressTypeDownloadVideo.innerM3U8,
        );
        saveModel(modelReturned);

        final number = int.parse(match.group(1)!);
        final localPathInner = await _prepareSaveDir('${data.slug}/$number');
        final m3u8PathInner = '$localPathInner/${data.slug}.m3u8';
        final baseInnerDirectory = '$baseDirectory/$number';
        final baseInnerM3U8Directory =
            '$baseDirectory/$number/${data.slug}.m3u8';

        outerText = outerText.replaceFirst(element, baseInnerM3U8Directory);

        final okInner = await _downloadToFileDio(
          downloadPath: element,
          savePath: localPathInner,
          nameFile: '${data.slug}.m3u8',
          slug: data.slug,
        );
        if (!okInner) {
          await _removeDir(localPath);
          _showErrorNotification(id: id);
          modelReturned = modelReturned.copyWith(
            progressType: ProgressTypeDownloadVideo.error,
          );
          saveModel(modelReturned);
          return;
        }
        modelReturned = modelReturned.copyWith(
          progress: 100,
          progressType: ProgressTypeDownloadVideo.innerM3U8,
        );
        saveModel(modelReturned);

        final fileInner = File(m3u8PathInner);
        String fileInnerString = await fileInner.readAsString();
        fileInnerString = decryptAES(fileInnerString);
        List<String> fileInnerLines = fileInnerString.split('\n');
        final tsSegments = fileInnerLines
            .where((line) => line.trim().endsWith('.ts'))
            .toList();
        final totalSegments = tsSegments.length;
        int completedSegments = 0;

        if (totalSegments == 0) {
          await fileInner.writeAsString(fileInnerLines.join('\n'));
          continue;
        }

        final rewrittenInner = StringBuffer();
        for (final line in fileInnerLines) {
          if (line.trim().endsWith('.ts')) {
            final fileName = line.split('/').last;
            rewrittenInner.writeln('$baseInnerDirectory/$fileName');
          } else {
            rewrittenInner.writeln(line);
          }
        }

        final List<_SegmentTask> tasks = [];
        final baseForResolve = Uri.parse(data.playlist);

        for (final segment in tsSegments) {
          final tsUrl = baseForResolve.resolve(segment).toString();
          final fileName = segment.split('/').last;
          tasks.add(
            _SegmentTask(
              url: tsUrl,
              saveDir: localPathInner,
              fileName: fileName,
            ),
          );
        }

        await _downloadSegmentsParallel(
          slug: data.slug,
          tasks: tasks,
          concurrency: _defaultConcurrency,
          onEachDone: () async {
            completedSegments++;
            final progress = (completedSegments / totalSegments * 100).round();
            await _updateNotification(
              progress,
              id: id,
              title: data.title,
              previewUrl: preview,
            );
            modelReturned = modelReturned.copyWith(
              progress: progress,
              progressType: ProgressTypeDownloadVideo.segements,
            );
            saveModel(modelReturned);
          },
        );

        if (_shouldStop(data.slug)) return;
        await fileInner.writeAsString(rewrittenInner.toString());
      }

      await File(m3u8Path).writeAsString(outerText);
      if (callback != null) await callback();
      modelReturned = modelReturned.copyWith(
        progress: 100,
        preview: fileName,
        progressType: ProgressTypeDownloadVideo.complited,
      );
      saveModel(modelReturned);
      await _completeNotification(id: id);
    } catch (e) {
      saveModel(
        VideoSendetModel(
          playlist: '',
          slug: data.slug,
          progress: 0,
          progressType: ProgressTypeDownloadVideo.error,
        ),
      );
      _showErrorNotification(id: _activeIds[data.slug] ?? 0);
    } finally {
      _cancelTokens.remove(data.slug);
      final clients = _httpClients.remove(data.slug);
      if (clients != null) {
        for (final c in clients) {
          try {
            c.close(force: true);
          } catch (_) {}
        }
      }
      _activeIds.remove(data.slug);
      _stopping.remove(data.slug);
    }
  }

  void saveModel(VideoSendetModel model) {
    _bloc?.add(DownloadVideoEvent.download(download: model));
  }

  void stopenDownload(String slug) {
    _stopping.add(slug);
    stopedSlugs = slug;

    final tokens = _cancelTokens.remove(slug);
    if (tokens != null) {
      for (final t in tokens) {
        if (!t.isCancelled) {
          try {
            t.cancel('Stopped by user');
          } catch (_) {}
        }
      }
    }

    final clients = _httpClients.remove(slug);
    if (clients != null) {
      for (final c in clients) {
        try {
          c.close(force: true);
        } catch (_) {}
      }
    }

    final id = _activeIds[slug] ?? 0;

    final model = VideoSendetModel(
      playlist: '',
      slug: slug,
      progress: 0,
      progressType: ProgressTypeDownloadVideo.stop,
    );
    _stopedDownload(model, id);
  }

  void _stopedDownload(VideoSendetModel model, int id) {
    _bloc?.add(DownloadVideoEvent.deleteAllNotStorage());
    _bloc?.add(DownloadVideoEvent.download(download: model));
    _stopedNotification(id: id);
    stopedSlugs = null;
  }

  Future<void> _removeDir(String dir) async {
    final directory = Directory(dir);
    if (await directory.exists()) {
      await directory.delete(recursive: true);
    }
  }

  Future<void> _showNotification(
    int progress,
    int maxProgress, {
    required int id,
    String? previewUrl,
    String? title,
  }) async {
    final AndroidNotificationDetails androidDetails =
        AndroidNotificationDetails(
          'download_channel',
          '${'video.notification_downloaded'.tr()} ${title ?? ''}',
          importance: Importance.high,
          priority: Priority.high,
          playSound: false,
          enableVibration: false,
          vibrationPattern: Int64List(0),
          onlyAlertOnce: true,
          ongoing: true,
          showProgress: true,
          indeterminate: true,

          styleInformation: BigTextStyleInformation(
            'video.notification_pedding'.tr(),
          ),
          largeIcon: previewUrl != null
              ? FilePathAndroidBitmap(previewUrl)
              : null,
        );
    final DarwinNotificationDetails iosDetails = DarwinNotificationDetails();

    final notificationDetails = NotificationDetails(
      android: androidDetails,
      iOS: iosDetails,
    );
    await _notificationsPlugin?.show(
      id,
      '${'video.notification_downloaded'.tr()} ${title ?? ''}',
      'video.notification_pedding'.tr(),

      notificationDetails,
    );
  }

  Future<void> _updateNotification(
    int progress, {
    required int id,
    String? title,
    String? previewUrl,
  }) async {
    final androidDetails = AndroidNotificationDetails(
      'download_channel',
      '${'video.notification_downloaded'.tr()} ${title ?? ''}',
      showProgress: true,
      progress: progress,
      maxProgress: 100,
      importance: Importance.low,
      priority: Priority.low,
      playSound: false,
      enableVibration: false,
      vibrationPattern: Int64List(0),
      onlyAlertOnce: true,
      styleInformation: BigTextStyleInformation(
        '${'video.notification_progress'.tr()} $progress%',
        contentTitle: '${'video.notification_downloaded'.tr()}\n${title ?? ''}',
        summaryText: '$progress%',
      ),
      ongoing: true,
      largeIcon: previewUrl != null ? FilePathAndroidBitmap(previewUrl) : null,
    );
    final iosDetails = DarwinNotificationDetails(
      presentAlert: true,
      presentSound: false,
      presentBadge: false,
      attachments: previewUrl != null
          ? [DarwinNotificationAttachment(previewUrl)]
          : null,
      subtitle: '${'video.notification_progress'.tr()} $progress%',
      threadIdentifier: 'download_video',
    );
    final notificationDetails = NotificationDetails(
      android: androidDetails,
      iOS: iosDetails,
    );
    await _notificationsPlugin?.show(
      id,
      '${'video.notification_downloaded'.tr()} ${title ?? ''}',
      '${'video.notification_progress'.tr()} $progress%',
      notificationDetails,
    );
  }

  Future<void> _stopedNotification({required int id}) async {
    final androidDetails = AndroidNotificationDetails(
      'download_channel',
      'video.notification_stoped'.tr(),
      showProgress: false,
      importance: Importance.low,
      priority: Priority.low,
      playSound: false,
      enableVibration: false,
      vibrationPattern: Int64List(0),
      onlyAlertOnce: true,
      styleInformation: BigTextStyleInformation(
        'video.notification_stoped'.tr(),
      ),
    );

    final DarwinNotificationDetails iosDetails = DarwinNotificationDetails();
    final notificationDetails = NotificationDetails(
      android: androidDetails,
      iOS: iosDetails,
    );

    await _notificationsPlugin?.show(
      id,
      'video.notification_downloaded_stoped'.tr(),
      'video.notification_downloaded_stoped'.tr(),
      notificationDetails,
    );
  }

  Future<void> _completeNotification({required int id}) async {
    await _notificationsPlugin?.cancel(id);
  }

  Future<void> _showErrorNotification({required int id}) async {
    final AndroidNotificationDetails androidDetails =
        AndroidNotificationDetails(
          'download_channel',
          'video.notification_error_title'.tr(),
          channelDescription: 'video.notification_error_channel_description'
              .tr(),
          importance: Importance.none,
          priority: Priority.defaultPriority,
        );

    final DarwinNotificationDetails iosDetails = DarwinNotificationDetails();
    final notificationDetails = NotificationDetails(
      android: androidDetails,
      iOS: iosDetails,
    );

    await _notificationsPlugin?.show(
      id,
      'video.notification_error_title'.tr(),
      'video.notification_error_description'.tr(),
      notificationDetails,
    );
  }

  Future<bool> _downloadStream({
    required String url,
    required String saveDir,
    required String fileName,
    required String slug,
    int maxRetries = _maxRetries,
  }) async {
    int attempt = 0;
    while (attempt < maxRetries) {
      if (_shouldStop(slug)) return false;
      HttpClient client = HttpClient();
      _httpClients.putIfAbsent(slug, () => []).add(client);

      IOSink? sink;
      try {
        final file = File('$saveDir/$fileName');
        if (!await file.parent.exists()) {
          await file.parent.create(recursive: true);
        }

        final request = await client.getUrl(Uri.parse(url));
        final response = await request.close();

        if (response.statusCode != 200) {
          client.close(force: true);
          throw HttpException('Bad status: ${response.statusCode}');
        }

        sink = file.openWrite();
        await for (final chunk in response) {
          if (_shouldStop(slug)) {
            await sink.close();
            try {
              client.close(force: true);
            } catch (_) {}
            return false;
          }
          sink.add(chunk);
        }
        await sink.flush();
        await sink.close();
        try {
          client.close();
        } catch (_) {}
        _httpClients[slug]?.remove(client);
        return true;
      } catch (_) {
        try {
          if (sink != null) await sink.close();
        } catch (_) {}
        try {
          client.close(force: true);
        } catch (_) {}
        _httpClients[slug]?.remove(client);

        if (_shouldStop(slug)) return false;
        attempt++;
        if (attempt >= maxRetries) {
          return false;
        }
        await Future.delayed(const Duration(seconds: 2));
      }
    }
    return false;
  }

  Future<bool> _downloadToFileDio({
    required String downloadPath,
    required String savePath,
    required String nameFile,
    required String slug,
  }) async {
    int attempt = 0;
    final Dio dio = sl<Dio>();
    final token = CancelToken();
    _cancelTokens.putIfAbsent(slug, () => []).add(token);

    try {
      while (attempt < _maxRetries && !_shouldStop(slug)) {
        try {
          await dio.download(
            downloadPath,
            '$savePath/$nameFile',
            cancelToken: token,
            options: Options(
              headers: {
                'Authorization': 'Bearer ${sl<LocalData>().getAccessToken()}',
              },
            ),
          );
          return true;
        } catch (e) {
          if (_shouldStop(slug) || token.isCancelled) return false;
          attempt++;
          if (attempt >= _maxRetries) {
            return false;
          }
          await Future.delayed(const Duration(seconds: 2));
        }
      }
      return false;
    } finally {
      _cancelTokens[slug]?.remove(token);
    }
  }

  Future<void> _downloadSegmentsParallel({
    required String slug,
    required List<_SegmentTask> tasks,
    required int concurrency,
    required FutureOr<void> Function() onEachDone,
  }) async {
    if (tasks.isEmpty) return;
    if (_shouldStop(slug)) return;

    final queue = Queue<_SegmentTask>()..addAll(tasks);
    int inFlight = 0;
    final completer = Completer<void>();

    Future<void> startNext() async {
      if (_shouldStop(slug)) {
        if (!completer.isCompleted && inFlight == 0) completer.complete();
        return;
      }

      while (inFlight < concurrency && queue.isNotEmpty && !_shouldStop(slug)) {
        final task = queue.removeFirst();
        inFlight++;

        () async {
          final ok = await _downloadStream(
            url: task.url,
            saveDir: task.saveDir,
            fileName: task.fileName,
            slug: slug,
          );
          inFlight--;
          if (ok) {
            await onEachDone();
          }
          if (queue.isNotEmpty && !_shouldStop(slug)) {
            await startNext();
          } else if (inFlight == 0 && queue.isEmpty && !completer.isCompleted) {
            completer.complete();
          }
        }();
      }

      if (inFlight == 0 && queue.isEmpty && !completer.isCompleted) {
        completer.complete();
      }
    }

    await startNext();
    await completer.future;
  }

  String? extractFileNameAndExtension(String url, String slug) {
    final regex = RegExp(r'/([^/]+\.[^/]+)$');
    final match = regex.firstMatch(url);
    if (match != null) {
      final fullFileName = match.group(1)!;
      final parts = fullFileName.split('.');
      final extension = parts.last;
      return '${slug}_preview.$extension';
    }
    return null;
  }
}

class _SegmentTask {
  final String url;
  final String saveDir;
  final String fileName;

  _SegmentTask({
    required this.url,
    required this.saveDir,
    required this.fileName,
  });
}
