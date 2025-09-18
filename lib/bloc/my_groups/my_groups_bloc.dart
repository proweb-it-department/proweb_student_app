import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:proweb_student_app/api/network/main/get/main.dart';
import 'package:proweb_student_app/models/my_groups_item/my_groups_item.dart';
import 'package:proweb_student_app/utils/gi/injection_container.dart';

part 'my_groups_event.dart';
part 'my_groups_state.dart';
part 'my_groups_bloc.freezed.dart';

class MyGroupsBloc extends Bloc<MyGroupsEvent, MyGroupsState> {
  MyGroupsBloc() : super(_Initial()) {
    on<MyGroupsEvent>((event, emit) async {
      started() async {
        emit(MyGroupsState.loading());
        final myGroups = await sl<GetResponsesMain>().myGroups();
        if (myGroups != null) {
          if (myGroups.isNotEmpty) {
            return emit(MyGroupsState.complited(groups: myGroups));
          } else {
            return emit(MyGroupsState.notFound());
          }
        } else {
          return emit(MyGroupsState.errorLoad());
        }
      }

      await event.when(started: started);
    });
  }
}
