import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lottie/lottie.dart';
import 'package:proweb_student_app/api/local_data/local_data.dart';
import 'package:proweb_student_app/api/repositories/video_product_repositiories/video_product_repositiories.dart';
import 'package:proweb_student_app/bloc/download_video/download_video_bloc.dart';
import 'package:proweb_student_app/bloc/material_module_view/material_module_view_bloc.dart';
import 'package:proweb_student_app/interface/components/app_bar/app_bar.dart';
import 'package:proweb_student_app/interface/components/error_load/error_load.dart';
import 'package:proweb_student_app/interface/components/md3_circule_indicator/md3_circule_indicator.dart';
import 'package:proweb_student_app/interface/components/no_data/no_data.dart';
import 'package:proweb_student_app/interface/pages/group/main_group_features/lesson_video_features/widgets/lesson_video_content.dart';
import 'package:proweb_student_app/models/db/db.dart';
import 'package:proweb_student_app/models/download_file/downloader_files_bloc.dart';
import 'package:proweb_student_app/models/editorjs/editorjs_model.dart';
import 'package:proweb_student_app/models/file_download/file_download_model.dart';
import 'package:proweb_student_app/models/material_module_item/material_module_item.dart';
import 'package:proweb_student_app/models/products/products.dart';
import 'package:proweb_student_app/models/products_modules/products_modules.dart';
import 'package:proweb_student_app/models/video_model/video_model.dart';
import 'package:proweb_student_app/models/video_sendet_model/video_sendet_model.dart';
import 'package:proweb_student_app/utils/download_manager/file_download_manager.dart';
import 'package:proweb_student_app/utils/download_manager/video_download_manager.dart';
import 'package:proweb_student_app/utils/enum/base_enum.dart';
import 'package:proweb_student_app/utils/file_icon_manager/file_icon_manager.dart';
import 'package:proweb_student_app/utils/gi/injection_container.dart';
import 'package:proweb_student_app/utils/player_widget/player_widget.dart';
import 'package:proweb_student_app/utils/theme/default_theme/custom_colors.dart';
import 'package:flutter_highlight/flutter_highlight.dart';
import 'package:flutter_highlight/themes/monokai.dart';
import 'package:flutter_html/flutter_html.dart';

@RoutePage()
class MaterialProductScreen extends StatelessWidget {
  final int materialId;
  final ProductsModules module;
  final Products product;
  const MaterialProductScreen({
    super.key,
    required this.materialId,
    required this.module,
    required this.product,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          MaterialModuleViewBloc()
            ..add(MaterialModuleViewEvent.started(materialId: materialId)),
      child: AnnotatedRegion(
        value: FlexColorScheme.themedSystemNavigationBar(
          context,
          systemNavBarStyle: FlexSystemNavBarStyle.transparent,
        ),
        child: Scaffold(
          appBar: MainAppBar(isBorder: false),
          body: module.access == true
              ? MaterialBody(
                  materialId: materialId,
                  module: module,
                  product: product,
                )
              : Center(
                  child: NoData(
                    text: 'shop_app.Access_to_the_module_is_closed'.tr(),
                    icon: Icons.lock,
                  ),
                ),
        ),
      ),
    );
  }
}

class MaterialBody extends StatelessWidget {
  final int materialId;
  final ProductsModules module;
  final Products product;
  const MaterialBody({
    super.key,
    required this.materialId,
    required this.module,
    required this.product,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MaterialModuleViewBloc, MaterialModuleViewState>(
      builder: (context, state) {
        return state.when(
          initial: () => _baseLoad(),
          load: () => _baseLoad(),
          error: () {
            return Center(
              child: ErrorLoad(
                action: FilledButton(
                  onPressed: () {
                    final bloc = context.read<MaterialModuleViewBloc>();
                    bloc.add(
                      MaterialModuleViewEvent.started(materialId: materialId),
                    );
                  },
                  child: Text('global_data.try_again'.tr()),
                ),
              ),
            );
          },
          complited: (material) {
            return ContentMaterialProduct(
              material: material,
              module: module,
              product: product,
            );
          },
        );
      },
    );
  }

  Widget _baseLoad() {
    return Center(child: Md3CirculeIndicator());
  }
}

class ContentMaterialProduct extends StatefulWidget {
  final MaterialModuleItem material;
  final ProductsModules module;
  final Products product;
  const ContentMaterialProduct({
    super.key,
    required this.material,
    required this.module,
    required this.product,
  });

  @override
  State<ContentMaterialProduct> createState() => _ContentMaterialProductState();
}

class _ContentMaterialProductState extends State<ContentMaterialProduct> {
  String? initPath;
  String? initSlug;
  String? preview;
  int initIndex = 0;
  List<MiddelwareModelVideo> videosModel = [];

  @override
  void initState() {
    super.initState();
    final videos = widget.material.videos;
    if (videos != null && videos.isNotEmpty) {
      for (var element in videos) {
        final playlist = element.video?.playlist;
        final preview = element.video?.preview;
        final slug = element.video?.slug;
        final title = element.video?.title;
        final size = element.video?.size;
        final duration = element.video?.durations;
        final isDownload = element.video?.isDownload;
        if (playlist != null && preview != null && slug != null) {
          videosModel.add(
            MiddelwareModelVideo(
              path: playlist,
              slug: slug,
              preview: preview,
              title: title ?? '',
              size: size ?? 0,
              duration: duration ?? 0,
              isDownload: isDownload ?? false,
            ),
          );
        }
      }
    }
    _selectVideo(initIndex);
  }

  void _selectVideo(int position) {
    if (videosModel.isNotEmpty && (videosModel.length - 1) >= position) {
      final video = videosModel.elementAtOrNull(position);
      if (video != null) {
        setState(() {
          initPath = video.path;
          initSlug = video.slug;
          initIndex = position;
          preview = video.preview;
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    final customColors = Theme.of(context).extension<CustomColors>();
    return Column(
      children: [
        PlayerWidget(
          key: ValueKey<int>(initIndex),
          playlists: sl<LocalData>().generateUrlVideo(
            publickPath: initPath!,
            slug: initSlug!,
          ),
          preview: preview,
        ),
        Expanded(
          child: ListView(
            children: [
              if (videosModel.length > 1)
                Container(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  margin: EdgeInsets.only(top: 15),
                  width: MediaQuery.of(context).size.width,
                  color: customColors?.containerColor,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    spacing: 10,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Text('video.list_of_video_lessons'.tr()),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width,
                        height: 100,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          padding: EdgeInsets.symmetric(horizontal: 10),
                          children: List.generate(videosModel.length, (index) {
                            return Padding(
                              padding: EdgeInsets.only(right: 10),
                              child: ItemListVideoLesson(
                                index: index,
                                initIndex: initIndex,
                                material: widget.material,
                                model: videosModel[index],
                                selectVideo: () {
                                  if (initIndex != index) {
                                    _selectVideo(index);
                                  }
                                },
                              ),
                            );
                          }),
                        ),
                      ),
                    ],
                  ),
                ),
              Padding(
                padding: EdgeInsetsGeometry.symmetric(vertical: 10),
                child: LessonContent(
                  material: widget.material,
                  module: widget.module,
                  product: widget.product,
                ),
              ),
              if (widget.material.description?.isNotEmpty == true)
                Padding(
                  padding: EdgeInsets.all(10),
                  child: Container(
                    padding: EdgeInsets.symmetric(vertical: 20),
                    decoration: BoxDecoration(
                      color: customColors?.containerColor,
                      borderRadius: BorderRadius.circular(22),
                    ),
                    child: Column(
                      spacing: 5,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: List.generate(
                        widget.material.description!.length,
                        (index) {
                          final block = widget.material.description!.elementAt(
                            index,
                          );
                          return renderBlock(block);
                        },
                      ),
                    ),
                  ),
                ),
              if (widget.material.files?.isNotEmpty == true)
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: FileWorkMaterial(attachFile: widget.material.files!),
                ),
            ],
          ),
        ),
      ],
    );
  }

  double headerFontSize(int level) {
    const h1 = 28.0;
    const step = 3.0;
    const min = 12.0;
    final lvl = level.clamp(1, 6);
    final s = h1 - (lvl - 1) * step;
    return s < min ? min : s;
  }

  Widget renderBlock(EditorJsBlock block) {
    final padding = 15;
    switch (block.type.toLowerCase()) {
      case "header":
        final data = HeaderData.fromJson(block.data);
        return Padding(
          padding: EdgeInsets.symmetric(horizontal: padding.toDouble()),
          child: Text(
            data.text,
            style: TextStyle(
              fontSize: headerFontSize(data.level),
              fontWeight: FontWeight.bold,
            ),
          ),
        );

      case "paragraph":
        final data = ParagraphData.fromJson(block.data);
        return Padding(
          padding: EdgeInsets.symmetric(horizontal: padding.toDouble()),
          child: Html(
            data: data.text,
            style: {
              "i": Style(fontStyle: FontStyle.italic),
              "b": Style(fontWeight: FontWeight.bold),
              "a": Style(
                color: Colors.blue,
                textDecoration: TextDecoration.underline,
              ),
            },
            onLinkTap: (url, attributes, element) {
              sl<LocalData>().openLink(url: url);
            },
          ),
        );

      case "list":
        final data = ListData.fromJson(block.data);
        return Padding(
          padding: EdgeInsets.symmetric(horizontal: padding.toDouble()),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: List.generate(data.items.length, (i) {
              final item = data.items[i];
              if (data.style == "ordered") {
                return Text("${i + 1}. $item");
              }
              return Text("• $item");
            }),
          ),
        );

      case "code":
        final data = CodeData.fromJson(block.data);
        return CodeViewDescription(code: data.code, lang: data.languageCode);

      default:
        return Text(
          "shop_app.Unknown_block".tr(namedArgs: {"block_type": block.type}),
        );
    }
  }
}

class CodeViewDescription extends StatefulWidget {
  final String code;
  final String lang;
  const CodeViewDescription({
    super.key,
    required this.code,
    required this.lang,
  });

  @override
  State<CodeViewDescription> createState() => _CodeViewDescriptionState();
}

class _CodeViewDescriptionState extends State<CodeViewDescription> {
  @override
  Widget build(BuildContext context) {
    return HighlightView(
      widget.code,
      language: widget.lang,
      padding: const EdgeInsets.all(8),
      theme: monokaiTheme,
      tabSize: 2,
      textStyle: TextStyle(fontSize: 12),
    );
  }
}

class ItemListVideoLesson extends StatefulWidget {
  final MiddelwareModelVideo model;
  final MaterialModuleItem material;
  final int initIndex;
  final int index;
  final void Function() selectVideo;
  const ItemListVideoLesson({
    super.key,
    required this.model,
    required this.initIndex,
    required this.index,
    required this.selectVideo,
    required this.material,
  });

  @override
  State<ItemListVideoLesson> createState() => _ItemListVideoLessonState();
}

class _ItemListVideoLessonState extends State<ItemListVideoLesson> {
  Offset _tapPosition = Offset.zero;

  void _getTapPosition(TapDownDetails position) {
    final RenderBox renderBox = context.findRenderObject() as RenderBox;
    setState(() {
      _tapPosition = renderBox.localToGlobal(position.localPosition);
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.selectVideo,
      onTapDown: _getTapPosition,
      onLongPress: () {
        _showContextMenu(context);
      },
      child: SizedBox(
        width: 130,
        child: AspectRatio(
          aspectRatio: 16 / 9,
          child: Column(
            spacing: 5,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: AspectRatio(
                    aspectRatio: 16 / 9,
                    child: Container(
                      height: 60,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: CachedNetworkImageProvider(
                            widget.model.preview,
                          ),
                          fit: BoxFit.cover,
                        ),
                      ),
                      child: AnimatedSwitcher(
                        duration: Duration(milliseconds: 300),
                        child: widget.initIndex == widget.index
                            ? Container(
                                color: Colors.black.withAlpha(150),
                                child: Center(
                                  child: Lottie.asset(
                                    'assets/lottie/Playing.json',
                                  ),
                                ),
                              )
                            : null,
                      ),
                    ),
                  ),
                ),
              ),
              Text(
                widget.model.title,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _showContextMenu(BuildContext context) async {
    RenderObject? overlay = Overlay.of(context).context.findRenderObject();
    final customColors = Theme.of(context).extension<CustomColors>();

    final result = await showMenu<int>(
      context: context,
      position: RelativeRect.fromRect(
        Rect.fromLTWH(_tapPosition.dx, _tapPosition.dy, 10, 10),
        Rect.fromLTWH(
          0,
          0,
          overlay!.paintBounds.size.width,
          overlay.paintBounds.size.height,
        ),
      ),
      color: customColors?.containerColor,
      items: [
        if (widget.initIndex != widget.index)
          PopupMenuItem(
            value: 0,
            child: Row(
              spacing: 8,
              children: [
                Icon(Icons.play_arrow, color: customColors?.additionalTwo),
                Text(
                  "video.plaeng_video".tr(),
                  style: TextStyle(color: customColors?.primaryTextColor),
                ),
              ],
            ),
          ),
        PopupMenuItem(
          value: 2,
          child: Row(
            spacing: 8,
            children: [
              Icon(Icons.info, color: customColors?.additionalTwo),
              Text(
                "video.information_video".tr(),
                style: TextStyle(color: customColors?.primaryTextColor),
              ),
            ],
          ),
        ),
      ],
    );
    if (context.mounted && result != null) {
      if (result == 1) {
      } else if (result == 0) {
        widget.selectVideo();
      } else if (result == 2) {
        _openInfoDialog(context);
      }
    }
  }

  Future<void> _openInfoDialog(BuildContext context) async {
    if (context.mounted) {
      final customColors = Theme.of(context).extension<CustomColors>();
      await showDialog(
        context: context,
        builder: (contextDialog) {
          return AlertDialog(
            contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 5),
            title: Text(
              'video.information_about_the_video'.tr(),
              style: TextStyle(fontSize: 25),
            ),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                ListTile(
                  title: Text(
                    'downloads.info_file_name'.tr(),
                    style: TextStyle(color: customColors?.additionalTwo),
                  ),
                  subtitle: Text(widget.model.title),
                ),
                ListTile(
                  title: Text(
                    'video.video_size'.tr(),
                    style: TextStyle(color: customColors?.additionalTwo),
                  ),
                  subtitle: Text(sl<LocalData>().formatSize(widget.model.size)),
                ),
                ListTile(
                  title: Text(
                    'video.duration_video'.tr(),
                    style: TextStyle(color: customColors?.additionalTwo),
                  ),
                  subtitle: Text(
                    sl<LocalData>().secondToTime(
                      widget.model.duration.toDouble(),
                    ),
                  ),
                ),
              ],
            ),
            actions: [
              TextButton(
                child: Text('global_data.cansel_btn'.tr()),
                onPressed: () {
                  Navigator.of(contextDialog).pop();
                },
              ),
            ],
          );
        },
      );
    }
  }
}

class LessonContent extends StatelessWidget {
  final MaterialModuleItem material;
  final ProductsModules module;
  final Products product;
  const LessonContent({
    super.key,
    required this.material,
    required this.module,
    required this.product,
  });

  @override
  Widget build(BuildContext context) {
    final customColors = Theme.of(context).extension<CustomColors>();
    final List<VideoModel> videosModels = [];
    final videos = material.videos;
    if (videos != null) {
      for (var element in videos) {
        if (element.video != null) {
          videosModels.add(element.video!);
        }
      }
    }
    return Padding(
      padding: const EdgeInsets.only(left: 10, right: 10, bottom: 10, top: 5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          ListTile(
            onTap: () {
              showModalBottomSheet(
                context: context,
                isScrollControlled: true,
                useSafeArea: true,
                showDragHandle: true,
                builder: (context) {
                  return BottomSheetLesson(
                    material: material,
                    module: module,
                    product: product,
                  );
                },
              );
            },
            tileColor: customColors?.containerColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            title: Text(material.name ?? '- - -'),
            trailing: IconDowloaderVideosView(
              videos: videosModels,
              material: material,
            ),
          ),
        ],
      ),
    );
  }
}

class IconDowloaderVideosView extends StatelessWidget {
  final List<VideoModel> videos;
  final MaterialModuleItem material;
  const IconDowloaderVideosView({
    super.key,
    required this.videos,
    required this.material,
  });

  @override
  Widget build(BuildContext context) {
    return videos.isEmpty
        ? SizedBox()
        : BlocBuilder<DownloadVideoBloc, DownloadVideoState>(
            builder: (context, state) {
              return state.when(
                initial: () {
                  return SizedBox(
                    width: 25,
                    height: 25,
                    child: CircularProgressIndicator(strokeWidth: 1),
                  );
                },
                download: (download, downloaders) {
                  final List<VideoModel> downloads = [];
                  final find = videos.firstWhere((element) {
                    return download != null && element.slug == download.slug;
                  }, orElse: () => VideoModel());

                  if (download != null) {
                    if (find.slug != null) {
                      final type = download.progressType;
                      if (type == ProgressTypeDownloadVideo.segements) {
                        final progress = (download.progress / 100);
                        return SizedBox(
                          width: 25,
                          height: 25,
                          child: CircularProgressIndicator(
                            strokeWidth: 1,
                            value: progress < 0.05 ? null : progress,
                          ),
                        );
                      } else {
                        return SizedBox(
                          width: 25,
                          height: 25,
                          child: CircularProgressIndicator(strokeWidth: 1),
                        );
                      }
                    }
                  } else {
                    for (var element in videos) {
                      final slug = element.slug;
                      if (slug != null) {
                        final find = downloaders.firstWhere(
                          (element) {
                            return element.slug == slug;
                          },
                          orElse: () => VideoSavedData(
                            slug: '',
                            title: '',
                            playlist: '',
                            createdAt: 0,
                          ),
                        );
                        if (find.slug.trim().isNotEmpty) {
                          downloads.add(element);
                        }
                      }
                    }
                    if (downloads.length == videos.length) {
                      return Icon(Icons.download_done);
                    } else if (downloads.length < videos.length) {
                      return Icon(Icons.download);
                    }
                  }
                  return SizedBox();
                },
              );
            },
          );
  }
}

class BottomSheetLesson extends StatelessWidget {
  final MaterialModuleItem material;
  final ProductsModules module;
  final Products product;
  const BottomSheetLesson({
    super.key,
    required this.material,
    required this.module,
    required this.product,
  });

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).viewPadding.bottom;
    return ListView(
      shrinkWrap: true,
      children: [
        ...List.generate(material.videos?.length ?? 0, (index) {
          VideoModel? video = material.videos?[index].video;
          if (video == null) return SizedBox();
          String? preview = video.preview;
          String? title = video.title;
          int? size = video.size;
          String? playlist = video.playlist;
          String? slug = video.slug;

          return ListTile(
            leading: preview != null
                ? SizedBox(
                    height: 80,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: AspectRatio(
                        aspectRatio: 16 / 9,
                        child: CachedNetworkImage(imageUrl: preview),
                      ),
                    ),
                  )
                : null,
            title: title != null
                ? Text(title, maxLines: 1, overflow: TextOverflow.ellipsis)
                : null,
            subtitle: size != null
                ? Text(
                    sl<LocalData>().formatSize(size),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  )
                : null,
            trailing: BlocBuilder<DownloadVideoBloc, DownloadVideoState>(
              builder: (context, state) {
                return state.when(
                  initial: () => SizedBox(),
                  download: (download, downloaders) {
                    VideoSavedData find = downloaders.firstWhere(
                      (element) => element.slug == slug,
                      orElse: () => VideoSavedData(
                        playlist: '',
                        slug: '0',
                        title: '',
                        createdAt: 0,
                      ),
                    );
                    if (download == null && find.slug == '0') {
                      return IconButton(
                        onPressed: () {
                          if (playlist == null) return;
                          if (slug == null) return;
                          sl<DownloadManager>().downloadM3u8(
                            VideoSendetModel(
                              playlist: playlist,
                              progress: 0,
                              slug: slug,
                              progressType: ProgressTypeDownloadVideo.key,
                              preview: material.cover ?? preview,
                              title: title,
                              duration: video.durations,
                              size: size,
                            ),
                            callback: () async {
                              final repositiry =
                                  sl<VideoProductRepositiories>();
                              final productId = product.id;
                              final productName = product.name;
                              final cover = product.hoverCover ?? product.cover;
                              final moduleId = module.id;
                              final moduleName = module.name;
                              final materialId = material.id;
                              final materialName = material.name;
                              final materialNamber = material.position ?? 0;
                              final materialCover = material.cover;
                              if (productId == null) return;
                              if (productName == null) return;
                              if (cover == null) return;
                              if (moduleId == null) return;
                              if (moduleName == null) return;
                              if (materialId == null) return;
                              if (materialName == null) return;
                              if (materialCover == null) return;
                              await repositiry.insertProduct(
                                product: ExclusiveProductModelData(
                                  productId: productId,
                                  productName: productName,
                                  cover: cover,
                                ),
                              );

                              await repositiry.insertModule(
                                module: ExclusiveProductModuleModelData(
                                  moduleId: moduleId,
                                  productId: productId,
                                  moduleName: moduleName,
                                  moduleNumber: materialNamber,
                                ),
                              );

                              await repositiry.insertMaterial(
                                material:
                                    ExclusiveProductModuleMaterialModelData(
                                      materialId: materialId,
                                      moduleId: moduleId,
                                      moduleName: materialName,
                                      cover: materialCover,
                                    ),
                              );
                              await repositiry.insertVideo(
                                video:
                                    ExclusiveProductModuleMaterialVideoModelData(
                                      id: 0,
                                      materialId: materialId,
                                      slug: slug,
                                    ),
                              );
                            },
                          );
                        },
                        icon: Icon(Icons.download),
                      );
                    } else if (find.slug != '0') {
                      return Icon(Icons.download_done);
                    } else if (download != null && download.slug == slug) {
                      final type = download.progressType;
                      if (type == ProgressTypeDownloadVideo.segements) {
                        final progress = (download.progress / 100);
                        return SizedBox(
                          width: 25,
                          height: 25,
                          child: CircularProgressIndicator(
                            strokeWidth: 1,
                            value: progress < 0.05 ? null : progress,
                          ),
                        );
                      } else {
                        return SizedBox(
                          width: 25,
                          height: 25,
                          child: CircularProgressIndicator(strokeWidth: 1),
                        );
                      }
                    } else {
                      return SizedBox();
                    }
                  },
                );
              },
            ),
          );
        }),
        SizedBox(height: height + 5),
      ],
    );
  }
}

class FileWorkMaterial extends StatefulWidget {
  final List<Files> attachFile;
  const FileWorkMaterial({super.key, required this.attachFile});

  @override
  State<FileWorkMaterial> createState() => _FileWorkMaterialState();
}

class _FileWorkMaterialState extends State<FileWorkMaterial> {
  @override
  Widget build(BuildContext context) {
    final customColors = Theme.of(context).extension<CustomColors>();
    final shape = RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10),
      side: BorderSide(
        color: customColors?.borderColor ?? Colors.transparent,
        width: 1,
      ),
    );
    final files = widget.attachFile
        .where((element) => element.file is String)
        .toList();
    bool isFiles = false;
    if (files.isNotEmpty) isFiles = true;
    return ExpansionTile(
      backgroundColor: customColors?.containerColor,
      collapsedBackgroundColor: customColors?.containerColor,
      collapsedShape: shape,
      shape: shape,
      leading: Icon(Icons.insert_drive_file_sharp),
      initiallyExpanded: isFiles,
      title: Text('shop_app.Materials_for_familiarization'.tr()),
      children: [
        Divider(height: 1),
        if (!isFiles)
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: NoData(
              text: 'group_homework.file_to_work_not_found'.tr(),
              icon: Icons.insert_drive_file_sharp,
              color: customColors?.primaryBg,
            ),
          )
        else
          ...List.generate(files.length, (index) {
            final item = files[index];
            final filePath = item.file;
            if (filePath == null) return SizedBox();
            String downloadPath = filePath;
            if (!downloadPath.contains('http')) {
              downloadPath = '${GlobalPath.main}${item.file!}';
            }

            return ListTile(
              leading: item.file != null
                  ? FileIconManager().getIconPath(filePath: downloadPath)
                  : null,
              title: Text(
                item.name ?? '',
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
              trailing: TrailingFileButton(item: item),
            );
          }),
      ],
    );
  }
}

class TrailingFileButton extends StatelessWidget {
  final Files item;
  const TrailingFileButton({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DownloaderFilesBloc, DownloaderFilesState>(
      builder: (context, state) {
        return state.when(
          initial: () => SizedBox(),
          download: (download, downloaders) {
            final find = downloaders.firstWhere(
              (element) => element.id == item.id,
              orElse: () =>
                  FileSavedData(displayName: '', id: 0, link: '', createdAt: 0),
            );
            if (download == null && find.id == 0) {
              return IconButton(
                onPressed: () {
                  if (item.file == null) return;
                  sl<DownloadManagerFile>().download(
                    FileDownloadModel(
                      progress: 0,
                      progressType: ProgressTypeDownloadVideo.key,
                      createdAt: DateTime.now().millisecondsSinceEpoch,
                      displayName: item.name ?? '',
                      id: item.id ?? 0,
                      link: item.file!,
                    ),
                  );
                },
                icon: Icon(Icons.download),
              );
            } else if (find.id != 0) {
              return Row(
                mainAxisSize: MainAxisSize.min,
                spacing: 5,
                children: [
                  IconButton(
                    icon: Icon(Icons.share),
                    alignment: Alignment.center,
                    onPressed: () async {
                      await sl<LocalData>().shareFiles(files: [find.link]);
                    },
                  ),
                  IconButton(
                    icon: Icon(Icons.keyboard_arrow_right),
                    alignment: Alignment.centerRight,
                    onPressed: () async {
                      await sl<LocalData>().openFile(path: find.link);
                    },
                  ),
                ],
              );
            } else if (download != null && download.id == item.id) {
              final type = download.progressType;
              if (type == ProgressTypeDownloadVideo.segements) {
                final progress = (download.progress / 100);
                return SizedBox(
                  width: 25,
                  height: 25,
                  child: CircularProgressIndicator(
                    strokeWidth: 1,
                    value: progress < 0.05 ? null : progress,
                  ),
                );
              } else {
                return SizedBox(
                  width: 25,
                  height: 25,
                  child: CircularProgressIndicator(strokeWidth: 1),
                );
              }
            } else {
              return SizedBox();
            }
          },
        );
      },
    );
  }
}
