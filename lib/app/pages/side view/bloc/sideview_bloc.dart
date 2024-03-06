import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'sideview_event.dart';
part 'sideview_state.dart';
part 'sideview_bloc.freezed.dart';

class SideviewBloc extends Bloc<SideviewEvent, SideviewState> {
  SideviewBloc() : super(SideviewState.initial()) {
  on<_selectionSection>((event, emit) {
    bool isCurrent;

    if (state.isSelected) {
      isCurrent = false;
    }else{
      isCurrent = true;
    }
    emit(state.copyWith(selectedIndex: event.index,isSelected: isCurrent));
  });
  }
}
