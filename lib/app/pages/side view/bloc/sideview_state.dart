part of 'sideview_bloc.dart';

@freezed
class SideviewState with _$SideviewState {
  const factory SideviewState({
   required bool isSelected,
 required int selectedIndex ,
  }) = _SideviewState;

  factory SideviewState.initial(){
    return const SideviewState(isSelected: true, selectedIndex: 0);
  }
}
