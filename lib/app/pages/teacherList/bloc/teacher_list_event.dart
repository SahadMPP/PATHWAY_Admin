part of 'teacher_list_bloc.dart';

@freezed
class TeacherListEvent with _$TeacherListEvent {
  const factory TeacherListEvent.giveingInitialValue() = _giveingInitialValue;
  const factory TeacherListEvent.filterValue({
    required String typeText,
  }) = _filterValue;
  
  
}