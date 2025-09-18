import 'dart:io';

import 'package:mime/mime.dart';
import 'package:path_provider/path_provider.dart';
import 'package:proweb_student_app/api/video_repository/video_repository.dart';
import 'package:proweb_student_app/utils/gi/injection_container.dart';
import 'package:shelf_router/shelf_router.dart';
import 'package:shelf/shelf.dart';
import 'package:shelf/shelf_io.dart' as io;

HttpServer? _httpServer;
const PORT = 50432;
final baseaPath = '/playlists';
Future<void> server() async {
  var app = Router();
  app.get('/video/', getM3U8Main);
  app.get('/replace/<slug>/<format>/<m3u8>', replacerM3U8);
  app.get('/replace/local/<slug>/<format>/<m3u8>', replacerLocalM3U8);
  app.get('/local/<slug>/<format>/<m3u8>', localM3U8);
  app.get('/key/<slug>/', keySlug);
  app.get('/preview/<slug>/', previewSlug);
  app.get('/segment/<slug>/<format>/<m3u8>', segementView);
  _httpServer = await io.serve(
    app.call,
    InternetAddress.loopbackIPv4,
    PORT,
    shared: true,
  );
}

Future<Response> getM3U8Main(Request request) async {
  final query = request.requestedUri.queryParameters;
  final String? publickpath = query['publickpath'];
  final String? slug = query['slug'];
  if (publickpath == null || slug == null) {
    return Response.badRequest();
  }

  try {
    if (publickpath.contains('https://') || publickpath.contains('http://')) {
      final request = sl<DioHTTP>();
      final dioResponse = await request.dio.get(publickpath);
      String? playlist = dioResponse.data;
      if (playlist != null) {
        final baseurl = '${GlobalPath.video}/api/v1/video/collection';
        final replaceurl =
            'http://${InternetAddress.loopbackIPv4.host}:$PORT/replace';
        playlist = playlist.replaceAll(baseurl, replaceurl);
        return Response.ok(playlist);
      } else {
        return Response.badRequest();
      }
    } else {
      final dir = await getApplicationDocumentsDirectory();
      final String filePath = '${dir.path}/$publickpath';
      final file = File(filePath);
      if (await file.exists()) {
        final lines = await file.readAsLines();
        String fileString = await file.readAsString();
        final m3u8s = lines.where((line) {
          return line.endsWith('.m3u8');
        }).toList();
        for (var element in m3u8s) {
          String path = element.replaceFirst('$baseaPath/', '');
          fileString = fileString.replaceFirst(
            element,
            'http://${InternetAddress.loopbackIPv4.host}:$PORT/replace/local$path',
          );
          // fileString = fileString.replaceFirst(element, '/replace/local$path');
        }
        return Response.ok(fileString);
      } else {
        return Response.badRequest();
      }
    }
  } catch (e) {
    return Response.badRequest();
  }
}

Future<Response> replacerM3U8(
  Request request,
  String slug,
  String format,
  String m3u8,
) async {
  try {
    final request = sl<DioHTTP>();
    final baseurl =
        '${GlobalPath.video}/api/v1/video/collection/$slug/$format/$m3u8';
    final dioResponse = await request.dio.get(baseurl);
    String? playlist = dioResponse.data;
    if (playlist != null) {
      final host = GlobalPath.video;
      playlist = playlist.replaceFirst(
        '[KEY]',
        '$host/api/v1/video/key/$slug/',
      );
      playlist = playlist.replaceFirst(
        '[IV]',
        '0x00000000000000000000000000000000',
      );
      return Response.ok(playlist);
    } else {
      return Response.badRequest();
    }
  } catch (e) {
    print(e);
    return Response.badRequest();
  }
}

Future<Response> replacerLocalM3U8(
  Request request,
  String slug,
  String format,
  String m3u8,
) async {
  try {
    final request = sl<DioHTTP>();
    final baseurl =
        'http://${InternetAddress.loopbackIPv4.host}:$PORT/local/$slug/$format/$m3u8';
    final dioResponse = await request.dio.get(baseurl);
    String? playlist = dioResponse.data;
    if (playlist != null) {
      playlist = playlist.replaceFirst(
        '[KEY]',
        'http://${InternetAddress.loopbackIPv4.host}:$PORT/key/$slug/',
      );
      playlist = playlist.replaceFirst(
        '[IV]',
        '0x00000000000000000000000000000000',
      );
      final dir = await getApplicationDocumentsDirectory();
      final path = 'file://${dir.path}$baseaPath';
      playlist = playlist.replaceAll(
        path,
        'http://${InternetAddress.loopbackIPv4.host}:$PORT/segment',
      );
      return Response.ok(playlist);
    } else {
      return Response.badRequest();
    }
  } catch (e) {
    print(e);
    return Response.badRequest();
  }
}

Future<Response> localM3U8(
  Request request,
  String slug,
  String format,
  String m3u8,
) async {
  try {
    final dir = await getApplicationDocumentsDirectory();
    final filePath = '${dir.path}/$baseaPath/$slug/$format/$m3u8'.replaceFirst(
      '//',
      '/',
    );
    final file = File(filePath);

    if (await file.exists()) {
      final fileLines = await file.readAsLines();
      String fileString = await file.readAsString();
      final tsSegments = fileLines.where((line) {
        return line.endsWith('.ts');
      }).toList();
      for (var element in tsSegments) {
        fileString = fileString.replaceFirst(
          element,
          '${dir.uri}/$element'.replaceFirst('////', '/'),
        );
      }
      return Response.ok(fileString);
    } else {
      return Response.badRequest();
    }
  } catch (e) {
    return Response.badRequest();
  }
}

Future<Response> keySlug(Request request, String slug) async {
  try {
    final rep = sl<VideoRepository>();
    final data = await rep.getVideoBySlug(slug);
    if (data == null) return Response.badRequest();
    if (data.key == null) return Response.badRequest();
    return Response.ok(data.key);
  } catch (e) {
    return Response.badRequest();
  }
}

Future<Response> previewSlug(Request request, String slug) async {
  final rep = sl<VideoRepository>();
  final data = await rep.getVideoBySlugPreview(slug);

  if (data == null) return Response.badRequest();
  if (data.preview == null) return Response.badRequest();
  final dir = await getApplicationDocumentsDirectory();
  final filePath = '${dir.path}/$baseaPath/$slug/${data.preview!}';
  final file = File(filePath);
  if (await file.exists()) {
    final fileBytes = await file.readAsBytes();
    final mimeType = lookupMimeType(filePath) ?? 'application/octet-stream';

    return Response.ok(fileBytes, headers: {'Content-Type': mimeType});
  } else {
    return Response.badRequest();
  }
}

Future<Response?> segementView(
  Request request,
  String slug,
  String format,
  String m3u8,
) async {
  try {
    final dir = await getApplicationDocumentsDirectory();
    final filePath = '${dir.path}/$baseaPath/$slug/$format/$m3u8';
    final file = File(filePath);
    if (await file.exists()) {
      final fileBytes = await file.readAsBytes();
      final mimeType = lookupMimeType(filePath) ?? 'application/octet-stream';
      return Response.ok(fileBytes, headers: {'Content-Type': mimeType});
    }
  } catch (e) {
    return Response.badRequest();
  }
  return null;
}

Future<void> stopServer() async {
  if (_httpServer != null) {
    await _httpServer!.close(force: true);
  }
}
