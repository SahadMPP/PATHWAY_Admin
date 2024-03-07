import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pathway_admin/app/data/middleware/admin_api.dart';
import 'package:pathway_admin/app/data/models/teacher.dart';

part 'teacher_list_event.dart';
part 'teacher_list_state.dart';
part 'teacher_list_bloc.freezed.dart';

class TeacherListBloc extends Bloc<TeacherListEvent, TeacherListState> {
  TeacherListBloc() : super(TeacherListState.initial()) {
    on<_giveingInitialValue>((event, emit)async {
    emit(state.copyWith(list: await AdminApi.getTeacher()));  
    });

    on<_filterValue>((event, emit) async{
    emit(state.copyWith(list: await AdminApi.getTeacher()));
      List<Teacher> result = [];
      if (event.typeText.isEmpty) {
        result = state.list;
      } else {
        result = state.list
            .where((user) =>
                user.name.toLowerCase().contains(event.typeText.toLowerCase()))
            .toList();
      }
      emit(state.copyWith(list: result));
    });
  }
}
