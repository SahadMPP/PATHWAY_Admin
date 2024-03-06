// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sideview_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SideviewEvent {
  int get index => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int index) selectionSection,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int index)? selectionSection,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int index)? selectionSection,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_selectionSection value) selectionSection,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_selectionSection value)? selectionSection,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_selectionSection value)? selectionSection,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SideviewEventCopyWith<SideviewEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SideviewEventCopyWith<$Res> {
  factory $SideviewEventCopyWith(
          SideviewEvent value, $Res Function(SideviewEvent) then) =
      _$SideviewEventCopyWithImpl<$Res, SideviewEvent>;
  @useResult
  $Res call({int index});
}

/// @nodoc
class _$SideviewEventCopyWithImpl<$Res, $Val extends SideviewEvent>
    implements $SideviewEventCopyWith<$Res> {
  _$SideviewEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
  }) {
    return _then(_value.copyWith(
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$selectionSectionImplCopyWith<$Res>
    implements $SideviewEventCopyWith<$Res> {
  factory _$$selectionSectionImplCopyWith(_$selectionSectionImpl value,
          $Res Function(_$selectionSectionImpl) then) =
      __$$selectionSectionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int index});
}

/// @nodoc
class __$$selectionSectionImplCopyWithImpl<$Res>
    extends _$SideviewEventCopyWithImpl<$Res, _$selectionSectionImpl>
    implements _$$selectionSectionImplCopyWith<$Res> {
  __$$selectionSectionImplCopyWithImpl(_$selectionSectionImpl _value,
      $Res Function(_$selectionSectionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
  }) {
    return _then(_$selectionSectionImpl(
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$selectionSectionImpl implements _selectionSection {
  const _$selectionSectionImpl({required this.index});

  @override
  final int index;

  @override
  String toString() {
    return 'SideviewEvent.selectionSection(index: $index)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$selectionSectionImpl &&
            (identical(other.index, index) || other.index == index));
  }

  @override
  int get hashCode => Object.hash(runtimeType, index);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$selectionSectionImplCopyWith<_$selectionSectionImpl> get copyWith =>
      __$$selectionSectionImplCopyWithImpl<_$selectionSectionImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int index) selectionSection,
  }) {
    return selectionSection(index);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int index)? selectionSection,
  }) {
    return selectionSection?.call(index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int index)? selectionSection,
    required TResult orElse(),
  }) {
    if (selectionSection != null) {
      return selectionSection(index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_selectionSection value) selectionSection,
  }) {
    return selectionSection(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_selectionSection value)? selectionSection,
  }) {
    return selectionSection?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_selectionSection value)? selectionSection,
    required TResult orElse(),
  }) {
    if (selectionSection != null) {
      return selectionSection(this);
    }
    return orElse();
  }
}

abstract class _selectionSection implements SideviewEvent {
  const factory _selectionSection({required final int index}) =
      _$selectionSectionImpl;

  @override
  int get index;
  @override
  @JsonKey(ignore: true)
  _$$selectionSectionImplCopyWith<_$selectionSectionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SideviewState {
  bool get isSelected => throw _privateConstructorUsedError;
  int get selectedIndex => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SideviewStateCopyWith<SideviewState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SideviewStateCopyWith<$Res> {
  factory $SideviewStateCopyWith(
          SideviewState value, $Res Function(SideviewState) then) =
      _$SideviewStateCopyWithImpl<$Res, SideviewState>;
  @useResult
  $Res call({bool isSelected, int selectedIndex});
}

/// @nodoc
class _$SideviewStateCopyWithImpl<$Res, $Val extends SideviewState>
    implements $SideviewStateCopyWith<$Res> {
  _$SideviewStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isSelected = null,
    Object? selectedIndex = null,
  }) {
    return _then(_value.copyWith(
      isSelected: null == isSelected
          ? _value.isSelected
          : isSelected // ignore: cast_nullable_to_non_nullable
              as bool,
      selectedIndex: null == selectedIndex
          ? _value.selectedIndex
          : selectedIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SideviewStateImplCopyWith<$Res>
    implements $SideviewStateCopyWith<$Res> {
  factory _$$SideviewStateImplCopyWith(
          _$SideviewStateImpl value, $Res Function(_$SideviewStateImpl) then) =
      __$$SideviewStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isSelected, int selectedIndex});
}

/// @nodoc
class __$$SideviewStateImplCopyWithImpl<$Res>
    extends _$SideviewStateCopyWithImpl<$Res, _$SideviewStateImpl>
    implements _$$SideviewStateImplCopyWith<$Res> {
  __$$SideviewStateImplCopyWithImpl(
      _$SideviewStateImpl _value, $Res Function(_$SideviewStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isSelected = null,
    Object? selectedIndex = null,
  }) {
    return _then(_$SideviewStateImpl(
      isSelected: null == isSelected
          ? _value.isSelected
          : isSelected // ignore: cast_nullable_to_non_nullable
              as bool,
      selectedIndex: null == selectedIndex
          ? _value.selectedIndex
          : selectedIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$SideviewStateImpl implements _SideviewState {
  const _$SideviewStateImpl(
      {required this.isSelected, required this.selectedIndex});

  @override
  final bool isSelected;
  @override
  final int selectedIndex;

  @override
  String toString() {
    return 'SideviewState(isSelected: $isSelected, selectedIndex: $selectedIndex)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SideviewStateImpl &&
            (identical(other.isSelected, isSelected) ||
                other.isSelected == isSelected) &&
            (identical(other.selectedIndex, selectedIndex) ||
                other.selectedIndex == selectedIndex));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isSelected, selectedIndex);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SideviewStateImplCopyWith<_$SideviewStateImpl> get copyWith =>
      __$$SideviewStateImplCopyWithImpl<_$SideviewStateImpl>(this, _$identity);
}

abstract class _SideviewState implements SideviewState {
  const factory _SideviewState(
      {required final bool isSelected,
      required final int selectedIndex}) = _$SideviewStateImpl;

  @override
  bool get isSelected;
  @override
  int get selectedIndex;
  @override
  @JsonKey(ignore: true)
  _$$SideviewStateImplCopyWith<_$SideviewStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
