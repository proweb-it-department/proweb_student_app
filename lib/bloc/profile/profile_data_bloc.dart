import 'dart:typed_data';

import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:proweb_student_app/api/local_data/local_data.dart';
import 'package:proweb_student_app/api/network/auth/post/auth.dart';
import 'package:proweb_student_app/models/my_profile/my_profile.dart';
import 'package:proweb_student_app/utils/gi/injection_container.dart';

part 'profile_data_event.dart';
part 'profile_data_state.dart';
part 'profile_data_bloc.freezed.dart';

class ProfileDataBloc extends Bloc<ProfileDataEvent, ProfileDataState> {
  ProfileDataBloc() : super(_ProfileDataInitial()) {
    on<ProfileDataEvent>((event, emit) async {
      started() async {
        if (state is _ProfileDataView) return;
        await sl<LocalData>().requestMyProfile(GetMyProfileEnum.local);
        final MyProfile? profile = sl<LocalData>().profile;
        if (profile != null) {
          emit(ProfileDataState.view(profile: profile));
        }
        await sl<LocalData>().requestMyProfile(GetMyProfileEnum.network);
        final MyProfile? profileNetwork = sl<LocalData>().profile;
        if (profileNetwork != null) {
          emit(ProfileDataState.view(profile: profileNetwork));
        }
      }

      uploadImage(Uint8List img) async {
        final profile = state.whenOrNull(view: (profile) => profile);
        if (profile == null) return;
        final form = FormData.fromMap({
          'image': MultipartFile.fromBytes(
            img,
            filename: '${DateTime.now().millisecond}.png',
          ),
        });
        final auth = sl<PostResponsesAuth>();
        await auth.updateProfile(form);
        await sl<LocalData>().requestMyProfile(GetMyProfileEnum.network);
        final MyProfile? profileNetwork = sl<LocalData>().profile;
        if (profileNetwork != null) {
          emit(ProfileDataState.view(profile: profileNetwork));
        }
      }

      updateBirth(String date) async {
        final profile = state.whenOrNull(view: (profile) => profile);
        if (profile == null) return;
        final form = FormData.fromMap({'date_of_birth': date});
        final auth = sl<PostResponsesAuth>();
        await auth.updateProfile(form);
        await sl<LocalData>().requestMyProfile(GetMyProfileEnum.network);
        final MyProfile? profileNetwork = sl<LocalData>().profile;
        if (profileNetwork != null) {
          emit(ProfileDataState.view(profile: profileNetwork));
        }
      }

      await event.when(
        started: started,
        uploadImage: uploadImage,
        updateBirth: updateBirth,
      );
    });
  }
}
