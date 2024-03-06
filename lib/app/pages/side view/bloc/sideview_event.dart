part of 'sideview_bloc.dart';

@freezed
class SideviewEvent with _$SideviewEvent {
  const factory SideviewEvent.selectionSection({
    required int index,
  }) = _selectionSection;
  
}