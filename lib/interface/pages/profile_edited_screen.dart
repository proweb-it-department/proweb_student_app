import 'dart:io';
import 'dart:typed_data';

import 'package:auto_route/auto_route.dart';
import 'package:crop_your_image/crop_your_image.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mime/mime.dart';
import 'package:proweb_student_app/api/local_data/local_data.dart';
import 'package:proweb_student_app/bloc/feadback_list/feadback_list_bloc.dart';
import 'package:proweb_student_app/bloc/profile/profile_data_bloc.dart';
import 'package:proweb_student_app/interface/components/avatar/avatar.dart';
import 'package:proweb_student_app/interface/components/error_load/error_load.dart';
import 'package:proweb_student_app/interface/components/icon_avatar.dart';
import 'package:proweb_student_app/interface/components/list_tile_builder.dart';
import 'package:proweb_student_app/interface/components/md3_circule_indicator/md3_circule_indicator.dart';
import 'package:proweb_student_app/router/auto_router.gr.dart';
import 'package:proweb_student_app/utils/gi/injection_container.dart';
import 'package:proweb_student_app/utils/theme/default_theme/custom_colors.dart';

@RoutePage()
class ProfileEditedScreen extends StatelessWidget {
  const ProfileEditedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion(
      value: FlexColorScheme.themedSystemNavigationBar(
        context,
        systemNavBarStyle: FlexSystemNavBarStyle.transparent,
      ),
      child: BlocProvider(
        create: (context) =>
            FeadbackListBloc()..add(FeadbackListEvent.started(offset: 0)),
        child: Scaffold(
          appBar: AppBar(title: Text('Изменить профиль')),
          body: ProfileEditedBody(),
        ),
      ),
    );
  }
}

class ProfileEditedBody extends StatefulWidget {
  const ProfileEditedBody({super.key});

  @override
  State<ProfileEditedBody> createState() => _ProfileEditedBodyState();
}

class _ProfileEditedBodyState extends State<ProfileEditedBody> {
  bool isLoadImage = false;
  bool isLoadDate = false;

  Future<void> _openChangeImage(BuildContext context) async {
    final profileBloc = context.read<ProfileDataBloc>();
    FilePickerResult? result = await sl<LocalData>().filePicker(
      type: FileType.media,
    );

    if (result != null) {
      if (result.files.single.path != null) {
        final mime = lookupMimeType(result.files.single.path!);
        if (mime?.contains('image') == true) {
          final path = result.files.single.path;
          if (context.mounted && path != null) {
            final image = await showDialog<Uint8List>(
              useSafeArea: false,
              context: context,
              builder: (context) {
                final CropController controller = CropController();
                return Dialog.fullscreen(
                  child: Scaffold(
                    appBar: AppBar(
                      actions: [
                        IconButton(
                          onPressed: () {
                            controller.crop();
                          },
                          icon: Icon(Icons.check),
                        ),
                      ],
                    ),
                    body: CropSelectImage(path: path, controller: controller),
                  ),
                );
              },
            );
            if (image != null) {
              setState(() {
                isLoadImage = true;
              });
              profileBloc.add(ProfileDataEvent.uploadImage(image: image));
              await profileBloc.stream.first;
              setState(() {
                isLoadImage = false;
              });
            }
          }
        }
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    final profileBloc = context.watch<ProfileDataBloc>();
    final profile = profileBloc.state.when(
      initial: () => null,
      view: (profile) => profile,
    );
    final customColor = Theme.of(context).extension<CustomColors>();
    if (profile == null) {
      return Md3CirculeIndicator();
    }
    return SingleChildScrollView(
      padding: EdgeInsets.all(10),
      child: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () => _openChangeImage(context),
              child: Stack(
                clipBehavior: Clip.none,
                children: [
                  if (!isLoadImage)
                    Avatar(
                      profile: profile,
                      size: 120,
                      circular: 120,
                      fontSize: 60,
                    )
                  else
                    Md3CirculeIndicator(center: false, size: 60),
                  if (!isLoadImage)
                    Positioned(
                      bottom: -15,
                      right: -15,
                      child: IconButton.outlined(
                        onPressed: () => _openChangeImage(context),
                        icon: IconAvatar(icon: Icons.camera_alt),
                        style: OutlinedButton.styleFrom(
                          padding: EdgeInsets.all(6),
                          backgroundColor: customColor?.primaryBg,
                          side: BorderSide(
                            color: customColor?.primaryBg ?? Colors.transparent,
                            width: 0,
                            style: BorderStyle.none,
                          ),
                          shape: const CircleBorder(),
                        ),
                      ),
                    ),
                ],
              ),
            ),
            SizedBox(height: 30),
            Material(
              color: Colors.transparent,
              child: ListTileBuilder(
                isStart: true,
                isEnd: false,
                builder: (shape, contentPadding, isThreeLine) {
                  return ListTile(
                    shape: shape,
                    contentPadding: contentPadding,
                    isThreeLine: isThreeLine,
                    tileColor: customColor?.containerColor,
                    minTileHeight: 10,
                    leading: Avatar(
                      profile: profile,
                      backgroundColor: customColor?.primaryBg,
                    ),
                    title: Text('Ваше имя'),
                    subtitle: Text(sl<LocalData>().nameMyProfile(profile)),
                  );
                },
              ),
            ),
            SizedBox(height: 2),
            Material(
              color: Colors.transparent,
              child: ListTileBuilder(
                isStart: false,
                isEnd: true,
                builder: (shape, contentPadding, isThreeLine) {
                  return ListTile(
                    shape: shape,
                    contentPadding: contentPadding,
                    tileColor: customColor?.containerColor,
                    leading: IconAvatar(icon: Icons.cake, size: 40),
                    title: Text('Дата рождения'),
                    subtitle: Text(
                      profile.dateOfBirth == null
                          ? 'Не задано'
                          : sl<LocalData>().getDateString(
                              date: DateTime.parse(profile.dateOfBirth!),
                            ),
                    ),
                    trailing: isLoadDate
                        ? Md3CirculeIndicator(
                            size: 40,
                            center: false,
                            background: customColor?.primaryBg,
                          )
                        : IconButton(
                            onPressed: () async {
                              final datetime = await showDatePicker(
                                context: context,
                                firstDate: DateTime(1940),
                                lastDate: DateTime(DateTime.now().year - 7),
                                builder: (context, child) {
                                  final DatePickerThemeData
                                  datePickerTheme = DatePickerThemeData(
                                    backgroundColor: customColor?.primaryBg,
                                    headerBackgroundColor:
                                        customColor?.primaryBg,
                                    headerForegroundColor:
                                        customColor?.primaryTextColor,
                                    headerHeadlineStyle: const TextStyle(
                                      fontSize: 32,
                                      fontWeight: FontWeight.w600,
                                    ),
                                    headerHelpStyle: const TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500,
                                    ),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(28),
                                    ),
                                    elevation: 6,
                                    cancelButtonStyle: ButtonStyle(
                                      foregroundColor: WidgetStateProperty.all(
                                        customColor?.primaryTextColor,
                                      ),
                                      textStyle: WidgetStateProperty.all(
                                        const TextStyle(
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                    ),
                                    confirmButtonStyle: ButtonStyle(
                                      foregroundColor: WidgetStateProperty.all(
                                        customColor?.primaryTextColor,
                                      ),
                                      textStyle: WidgetStateProperty.all(
                                        const TextStyle(
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                    ),
                                    dayBackgroundColor:
                                        WidgetStateProperty.resolveWith((
                                          states,
                                        ) {
                                          if (states.contains(
                                            WidgetState.selected,
                                          )) {
                                            return customColor?.additionalTwo;
                                          }
                                          return null;
                                        }),
                                    toggleButtonTextStyle: TextStyle(
                                      color: customColor?.primaryTextColor,
                                    ),

                                    dayForegroundColor:
                                        WidgetStateProperty.resolveWith((
                                          states,
                                        ) {
                                          if (states.contains(
                                            WidgetState.selected,
                                          )) {
                                            return Colors.white;
                                          }
                                          if (states.contains(
                                            WidgetState.disabled,
                                          )) {
                                            return Colors.grey;
                                          }
                                          return customColor
                                              ?.primaryTextColorOp;
                                        }),
                                    dayOverlayColor: WidgetStateProperty.all(
                                      customColor?.containerColor,
                                    ),

                                    todayBackgroundColor:
                                        WidgetStateProperty.resolveWith((
                                          states,
                                        ) {
                                          if (states.contains(
                                            WidgetState.selected,
                                          )) {
                                            return customColor?.additionalTwo;
                                          }
                                          return Colors.transparent;
                                        }),
                                    todayForegroundColor:
                                        WidgetStateProperty.resolveWith((
                                          states,
                                        ) {
                                          if (states.contains(
                                            WidgetState.selected,
                                          )) {
                                            return Colors.white;
                                          }
                                          return Colors.blue;
                                        }),
                                    todayBorder: const BorderSide(
                                      color: Colors.blue,
                                      width: 1.5,
                                    ),

                                    yearBackgroundColor:
                                        WidgetStateProperty.resolveWith((
                                          states,
                                        ) {
                                          if (states.contains(
                                            WidgetState.selected,
                                          )) {
                                            return customColor?.additionalTwo;
                                          }
                                          return null;
                                        }),
                                    yearForegroundColor:
                                        WidgetStateProperty.resolveWith((
                                          states,
                                        ) {
                                          if (states.contains(
                                            WidgetState.selected,
                                          )) {
                                            return customColor
                                                ?.primaryTextColor;
                                          }
                                          return customColor
                                              ?.primaryTextColorOp;
                                        }),
                                    yearOverlayColor: WidgetStateProperty.all(
                                      customColor?.containerColor,
                                    ),

                                    dividerColor: customColor?.borderColors,

                                    weekdayStyle: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500,
                                      color: customColor?.primaryTextColorOp,
                                    ),

                                    dayStyle: const TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                    ),

                                    yearStyle: const TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                    ),

                                    rangePickerBackgroundColor: Colors.white,
                                    rangePickerHeaderBackgroundColor:
                                        Colors.blue,
                                    rangePickerHeaderForegroundColor:
                                        Colors.white,
                                    rangePickerSurfaceTintColor:
                                        Colors.transparent,
                                    rangeSelectionBackgroundColor: Colors.blue
                                        .withOpacity(0.15),
                                  );
                                  return Theme(
                                    data: ThemeData(
                                      iconButtonTheme: IconButtonThemeData(
                                        style: IconButton.styleFrom(
                                          backgroundColor:
                                              customColor?.additionalTwo,
                                        ),
                                      ),
                                      iconTheme: IconThemeData(
                                        color: customColor?.primaryTextColor,
                                      ),
                                      datePickerTheme: datePickerTheme,
                                    ),
                                    child: child ?? SizedBox(),
                                  );
                                },
                                initialDate: profile.dateOfBirth == null
                                    ? null
                                    : DateTime.parse(profile.dateOfBirth!),
                              );
                              if (datetime != null &&
                                  context.mounted &&
                                  mounted) {
                                final dmy = sl<LocalData>().getDateString(
                                  date: datetime,
                                  seporator: DateSeporator.dash,
                                );
                                setState(() {
                                  isLoadDate = true;
                                });
                                profileBloc.add(
                                  ProfileDataEvent.updateBirth(date: dmy),
                                );
                                await profileBloc.stream.first;
                                setState(() {
                                  isLoadDate = false;
                                });
                              }
                            },
                            icon: Icon(Icons.edit),
                            style: IconButton.styleFrom(
                              backgroundColor: customColor?.primaryBg,
                            ),
                          ),
                  );
                },
              ),
            ),
            SizedBox(height: 10),
            SizedBox(
              width: double.infinity,
              child: Opacity(
                opacity: 0.7,
                child: Text(
                  'Изменение Ф.И.О. самостоятельно недоступно в целях обеспечения достоверности персональных данных. Если вы обнаружили ошибку в указанных данных, пожалуйста, обратитесь к вашему администратору либо создайте обращение через форму обратной связи - администрация PROWEB обязательно поможет вам в решении данного вопроса.',
                ),
              ),
            ),
            SizedBox(height: 10),
            SizedBox(
              width: double.infinity,
              child: FilledButton.icon(
                onPressed: () {
                  context.router.push(
                    CreatedFeadbackRoute(
                      bloc: context.read<FeadbackListBloc>(),
                    ),
                  );
                },
                label: Text('Создать обращение'),
                icon: Icon(Icons.add),
                style: FilledButton.styleFrom(
                  backgroundColor: customColor?.containerColor,
                  textStyle: TextStyle(color: customColor?.primaryTextColor),
                  iconColor: customColor?.primaryTextColor,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CropSelectImage extends StatefulWidget {
  final String path;
  final CropController controller;
  const CropSelectImage({
    super.key,
    required this.path,
    required this.controller,
  });

  @override
  State<CropSelectImage> createState() => _CropSelectImageState();
}

class _CropSelectImageState extends State<CropSelectImage> {
  Future<Uint8List?> _getFile() async {
    final file = File(widget.path);
    if (await file.exists()) {
      final u = await file.readAsBytes();
      return u;
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    final customColor = Theme.of(context).extension<CustomColors>();
    return FutureBuilder<Uint8List?>(
      future: _getFile(),
      builder: (context, asyncSnapshot) {
        if (asyncSnapshot.connectionState != ConnectionState.done) {
          return Md3CirculeIndicator();
        }
        final data = asyncSnapshot.data;
        if (data == null) {
          return ErrorLoad();
        }
        return Center(
          child: Crop(
            image: data,
            controller: widget.controller,
            onCropped: (result) {
              switch (result) {
                case CropSuccess(:final croppedImage):
                  return context.mounted
                      ? Navigator.of(context).pop(croppedImage)
                      : null;
                case CropFailure():
                  return;
              }
            },
            aspectRatio: 1,
            initialRectBuilder: InitialRectBuilder.withSizeAndRatio(
              size: 1,
              aspectRatio: 1,
            ),

            baseColor: customColor?.primaryBg ?? Colors.black,
            maskColor: (customColor?.primaryBg ?? Colors.black).withAlpha(100),

            progressIndicator: Md3CirculeIndicator(),
            withCircleUi: true,
            cornerDotBuilder: (size, edgeAlignment) => SizedBox(),
            clipBehavior: Clip.none,
            interactive: true,
            fixCropRect: true,
          ),
        );
      },
    );
  }
}
