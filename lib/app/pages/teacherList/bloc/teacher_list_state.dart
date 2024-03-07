part of 'teacher_list_bloc.dart';

@freezed
class TeacherListState with _$TeacherListState {
  const factory TeacherListState({
    required List<Teacher> list,
  }) = _TeacherListState;
   factory TeacherListState.initial(){
    return const TeacherListState(list: []);
  }
}
