// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'skibidi_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$SkibidiEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(File image) sendPicForRoast,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(File image)? sendPicForRoast,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(File image)? sendPicForRoast,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Started value) started,
    required TResult Function(SendPicForRoast value) sendPicForRoast,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Started value)? started,
    TResult? Function(SendPicForRoast value)? sendPicForRoast,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(SendPicForRoast value)? sendPicForRoast,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SkibidiEventCopyWith<$Res> {
  factory $SkibidiEventCopyWith(
    SkibidiEvent value,
    $Res Function(SkibidiEvent) then,
  ) = _$SkibidiEventCopyWithImpl<$Res, SkibidiEvent>;
}

/// @nodoc
class _$SkibidiEventCopyWithImpl<$Res, $Val extends SkibidiEvent>
    implements $SkibidiEventCopyWith<$Res> {
  _$SkibidiEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SkibidiEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$StartedImplCopyWith<$Res> {
  factory _$$StartedImplCopyWith(
    _$StartedImpl value,
    $Res Function(_$StartedImpl) then,
  ) = __$$StartedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StartedImplCopyWithImpl<$Res>
    extends _$SkibidiEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
    _$StartedImpl _value,
    $Res Function(_$StartedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of SkibidiEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$StartedImpl implements Started {
  const _$StartedImpl();

  @override
  String toString() {
    return 'SkibidiEvent.started()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StartedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(File image) sendPicForRoast,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(File image)? sendPicForRoast,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(File image)? sendPicForRoast,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Started value) started,
    required TResult Function(SendPicForRoast value) sendPicForRoast,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Started value)? started,
    TResult? Function(SendPicForRoast value)? sendPicForRoast,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(SendPicForRoast value)? sendPicForRoast,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class Started implements SkibidiEvent {
  const factory Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$SendPicForRoastImplCopyWith<$Res> {
  factory _$$SendPicForRoastImplCopyWith(
    _$SendPicForRoastImpl value,
    $Res Function(_$SendPicForRoastImpl) then,
  ) = __$$SendPicForRoastImplCopyWithImpl<$Res>;
  @useResult
  $Res call({File image});
}

/// @nodoc
class __$$SendPicForRoastImplCopyWithImpl<$Res>
    extends _$SkibidiEventCopyWithImpl<$Res, _$SendPicForRoastImpl>
    implements _$$SendPicForRoastImplCopyWith<$Res> {
  __$$SendPicForRoastImplCopyWithImpl(
    _$SendPicForRoastImpl _value,
    $Res Function(_$SendPicForRoastImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of SkibidiEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? image = null}) {
    return _then(
      _$SendPicForRoastImpl(
        null == image
            ? _value.image
            : image // ignore: cast_nullable_to_non_nullable
                  as File,
      ),
    );
  }
}

/// @nodoc

class _$SendPicForRoastImpl implements SendPicForRoast {
  const _$SendPicForRoastImpl(this.image);

  @override
  final File image;

  @override
  String toString() {
    return 'SkibidiEvent.sendPicForRoast(image: $image)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SendPicForRoastImpl &&
            (identical(other.image, image) || other.image == image));
  }

  @override
  int get hashCode => Object.hash(runtimeType, image);

  /// Create a copy of SkibidiEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SendPicForRoastImplCopyWith<_$SendPicForRoastImpl> get copyWith =>
      __$$SendPicForRoastImplCopyWithImpl<_$SendPicForRoastImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(File image) sendPicForRoast,
  }) {
    return sendPicForRoast(image);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(File image)? sendPicForRoast,
  }) {
    return sendPicForRoast?.call(image);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(File image)? sendPicForRoast,
    required TResult orElse(),
  }) {
    if (sendPicForRoast != null) {
      return sendPicForRoast(image);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Started value) started,
    required TResult Function(SendPicForRoast value) sendPicForRoast,
  }) {
    return sendPicForRoast(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Started value)? started,
    TResult? Function(SendPicForRoast value)? sendPicForRoast,
  }) {
    return sendPicForRoast?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(SendPicForRoast value)? sendPicForRoast,
    required TResult orElse(),
  }) {
    if (sendPicForRoast != null) {
      return sendPicForRoast(this);
    }
    return orElse();
  }
}

abstract class SendPicForRoast implements SkibidiEvent {
  const factory SendPicForRoast(final File image) = _$SendPicForRoastImpl;

  File get image;

  /// Create a copy of SkibidiEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SendPicForRoastImplCopyWith<_$SendPicForRoastImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SkibidiState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() skibidiCookingRoast,
    required TResult Function(String roast) skibidiRoastGenerated,
    required TResult Function(String error) skibidiError,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? skibidiCookingRoast,
    TResult? Function(String roast)? skibidiRoastGenerated,
    TResult? Function(String error)? skibidiError,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? skibidiCookingRoast,
    TResult Function(String roast)? skibidiRoastGenerated,
    TResult Function(String error)? skibidiError,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(SkibidiCookingRoast value) skibidiCookingRoast,
    required TResult Function(SkibidiRoastGenerated value)
    skibidiRoastGenerated,
    required TResult Function(SkibidiError value) skibidiError,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(SkibidiCookingRoast value)? skibidiCookingRoast,
    TResult? Function(SkibidiRoastGenerated value)? skibidiRoastGenerated,
    TResult? Function(SkibidiError value)? skibidiError,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(SkibidiCookingRoast value)? skibidiCookingRoast,
    TResult Function(SkibidiRoastGenerated value)? skibidiRoastGenerated,
    TResult Function(SkibidiError value)? skibidiError,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SkibidiStateCopyWith<$Res> {
  factory $SkibidiStateCopyWith(
    SkibidiState value,
    $Res Function(SkibidiState) then,
  ) = _$SkibidiStateCopyWithImpl<$Res, SkibidiState>;
}

/// @nodoc
class _$SkibidiStateCopyWithImpl<$Res, $Val extends SkibidiState>
    implements $SkibidiStateCopyWith<$Res> {
  _$SkibidiStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SkibidiState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
    _$InitialImpl value,
    $Res Function(_$InitialImpl) then,
  ) = __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$SkibidiStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
    _$InitialImpl _value,
    $Res Function(_$InitialImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of SkibidiState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'SkibidiState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() skibidiCookingRoast,
    required TResult Function(String roast) skibidiRoastGenerated,
    required TResult Function(String error) skibidiError,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? skibidiCookingRoast,
    TResult? Function(String roast)? skibidiRoastGenerated,
    TResult? Function(String error)? skibidiError,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? skibidiCookingRoast,
    TResult Function(String roast)? skibidiRoastGenerated,
    TResult Function(String error)? skibidiError,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(SkibidiCookingRoast value) skibidiCookingRoast,
    required TResult Function(SkibidiRoastGenerated value)
    skibidiRoastGenerated,
    required TResult Function(SkibidiError value) skibidiError,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(SkibidiCookingRoast value)? skibidiCookingRoast,
    TResult? Function(SkibidiRoastGenerated value)? skibidiRoastGenerated,
    TResult? Function(SkibidiError value)? skibidiError,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(SkibidiCookingRoast value)? skibidiCookingRoast,
    TResult Function(SkibidiRoastGenerated value)? skibidiRoastGenerated,
    TResult Function(SkibidiError value)? skibidiError,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements SkibidiState {
  const factory Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$SkibidiCookingRoastImplCopyWith<$Res> {
  factory _$$SkibidiCookingRoastImplCopyWith(
    _$SkibidiCookingRoastImpl value,
    $Res Function(_$SkibidiCookingRoastImpl) then,
  ) = __$$SkibidiCookingRoastImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SkibidiCookingRoastImplCopyWithImpl<$Res>
    extends _$SkibidiStateCopyWithImpl<$Res, _$SkibidiCookingRoastImpl>
    implements _$$SkibidiCookingRoastImplCopyWith<$Res> {
  __$$SkibidiCookingRoastImplCopyWithImpl(
    _$SkibidiCookingRoastImpl _value,
    $Res Function(_$SkibidiCookingRoastImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of SkibidiState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$SkibidiCookingRoastImpl implements SkibidiCookingRoast {
  const _$SkibidiCookingRoastImpl();

  @override
  String toString() {
    return 'SkibidiState.skibidiCookingRoast()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SkibidiCookingRoastImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() skibidiCookingRoast,
    required TResult Function(String roast) skibidiRoastGenerated,
    required TResult Function(String error) skibidiError,
  }) {
    return skibidiCookingRoast();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? skibidiCookingRoast,
    TResult? Function(String roast)? skibidiRoastGenerated,
    TResult? Function(String error)? skibidiError,
  }) {
    return skibidiCookingRoast?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? skibidiCookingRoast,
    TResult Function(String roast)? skibidiRoastGenerated,
    TResult Function(String error)? skibidiError,
    required TResult orElse(),
  }) {
    if (skibidiCookingRoast != null) {
      return skibidiCookingRoast();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(SkibidiCookingRoast value) skibidiCookingRoast,
    required TResult Function(SkibidiRoastGenerated value)
    skibidiRoastGenerated,
    required TResult Function(SkibidiError value) skibidiError,
  }) {
    return skibidiCookingRoast(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(SkibidiCookingRoast value)? skibidiCookingRoast,
    TResult? Function(SkibidiRoastGenerated value)? skibidiRoastGenerated,
    TResult? Function(SkibidiError value)? skibidiError,
  }) {
    return skibidiCookingRoast?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(SkibidiCookingRoast value)? skibidiCookingRoast,
    TResult Function(SkibidiRoastGenerated value)? skibidiRoastGenerated,
    TResult Function(SkibidiError value)? skibidiError,
    required TResult orElse(),
  }) {
    if (skibidiCookingRoast != null) {
      return skibidiCookingRoast(this);
    }
    return orElse();
  }
}

abstract class SkibidiCookingRoast implements SkibidiState {
  const factory SkibidiCookingRoast() = _$SkibidiCookingRoastImpl;
}

/// @nodoc
abstract class _$$SkibidiRoastGeneratedImplCopyWith<$Res> {
  factory _$$SkibidiRoastGeneratedImplCopyWith(
    _$SkibidiRoastGeneratedImpl value,
    $Res Function(_$SkibidiRoastGeneratedImpl) then,
  ) = __$$SkibidiRoastGeneratedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String roast});
}

/// @nodoc
class __$$SkibidiRoastGeneratedImplCopyWithImpl<$Res>
    extends _$SkibidiStateCopyWithImpl<$Res, _$SkibidiRoastGeneratedImpl>
    implements _$$SkibidiRoastGeneratedImplCopyWith<$Res> {
  __$$SkibidiRoastGeneratedImplCopyWithImpl(
    _$SkibidiRoastGeneratedImpl _value,
    $Res Function(_$SkibidiRoastGeneratedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of SkibidiState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? roast = null}) {
    return _then(
      _$SkibidiRoastGeneratedImpl(
        null == roast
            ? _value.roast
            : roast // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc

class _$SkibidiRoastGeneratedImpl implements SkibidiRoastGenerated {
  const _$SkibidiRoastGeneratedImpl(this.roast);

  @override
  final String roast;

  @override
  String toString() {
    return 'SkibidiState.skibidiRoastGenerated(roast: $roast)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SkibidiRoastGeneratedImpl &&
            (identical(other.roast, roast) || other.roast == roast));
  }

  @override
  int get hashCode => Object.hash(runtimeType, roast);

  /// Create a copy of SkibidiState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SkibidiRoastGeneratedImplCopyWith<_$SkibidiRoastGeneratedImpl>
  get copyWith =>
      __$$SkibidiRoastGeneratedImplCopyWithImpl<_$SkibidiRoastGeneratedImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() skibidiCookingRoast,
    required TResult Function(String roast) skibidiRoastGenerated,
    required TResult Function(String error) skibidiError,
  }) {
    return skibidiRoastGenerated(roast);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? skibidiCookingRoast,
    TResult? Function(String roast)? skibidiRoastGenerated,
    TResult? Function(String error)? skibidiError,
  }) {
    return skibidiRoastGenerated?.call(roast);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? skibidiCookingRoast,
    TResult Function(String roast)? skibidiRoastGenerated,
    TResult Function(String error)? skibidiError,
    required TResult orElse(),
  }) {
    if (skibidiRoastGenerated != null) {
      return skibidiRoastGenerated(roast);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(SkibidiCookingRoast value) skibidiCookingRoast,
    required TResult Function(SkibidiRoastGenerated value)
    skibidiRoastGenerated,
    required TResult Function(SkibidiError value) skibidiError,
  }) {
    return skibidiRoastGenerated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(SkibidiCookingRoast value)? skibidiCookingRoast,
    TResult? Function(SkibidiRoastGenerated value)? skibidiRoastGenerated,
    TResult? Function(SkibidiError value)? skibidiError,
  }) {
    return skibidiRoastGenerated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(SkibidiCookingRoast value)? skibidiCookingRoast,
    TResult Function(SkibidiRoastGenerated value)? skibidiRoastGenerated,
    TResult Function(SkibidiError value)? skibidiError,
    required TResult orElse(),
  }) {
    if (skibidiRoastGenerated != null) {
      return skibidiRoastGenerated(this);
    }
    return orElse();
  }
}

abstract class SkibidiRoastGenerated implements SkibidiState {
  const factory SkibidiRoastGenerated(final String roast) =
      _$SkibidiRoastGeneratedImpl;

  String get roast;

  /// Create a copy of SkibidiState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SkibidiRoastGeneratedImplCopyWith<_$SkibidiRoastGeneratedImpl>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SkibidiErrorImplCopyWith<$Res> {
  factory _$$SkibidiErrorImplCopyWith(
    _$SkibidiErrorImpl value,
    $Res Function(_$SkibidiErrorImpl) then,
  ) = __$$SkibidiErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$SkibidiErrorImplCopyWithImpl<$Res>
    extends _$SkibidiStateCopyWithImpl<$Res, _$SkibidiErrorImpl>
    implements _$$SkibidiErrorImplCopyWith<$Res> {
  __$$SkibidiErrorImplCopyWithImpl(
    _$SkibidiErrorImpl _value,
    $Res Function(_$SkibidiErrorImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of SkibidiState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? error = null}) {
    return _then(
      _$SkibidiErrorImpl(
        null == error
            ? _value.error
            : error // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc

class _$SkibidiErrorImpl implements SkibidiError {
  const _$SkibidiErrorImpl(this.error);

  @override
  final String error;

  @override
  String toString() {
    return 'SkibidiState.skibidiError(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SkibidiErrorImpl &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  /// Create a copy of SkibidiState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SkibidiErrorImplCopyWith<_$SkibidiErrorImpl> get copyWith =>
      __$$SkibidiErrorImplCopyWithImpl<_$SkibidiErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() skibidiCookingRoast,
    required TResult Function(String roast) skibidiRoastGenerated,
    required TResult Function(String error) skibidiError,
  }) {
    return skibidiError(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? skibidiCookingRoast,
    TResult? Function(String roast)? skibidiRoastGenerated,
    TResult? Function(String error)? skibidiError,
  }) {
    return skibidiError?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? skibidiCookingRoast,
    TResult Function(String roast)? skibidiRoastGenerated,
    TResult Function(String error)? skibidiError,
    required TResult orElse(),
  }) {
    if (skibidiError != null) {
      return skibidiError(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(SkibidiCookingRoast value) skibidiCookingRoast,
    required TResult Function(SkibidiRoastGenerated value)
    skibidiRoastGenerated,
    required TResult Function(SkibidiError value) skibidiError,
  }) {
    return skibidiError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(SkibidiCookingRoast value)? skibidiCookingRoast,
    TResult? Function(SkibidiRoastGenerated value)? skibidiRoastGenerated,
    TResult? Function(SkibidiError value)? skibidiError,
  }) {
    return skibidiError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(SkibidiCookingRoast value)? skibidiCookingRoast,
    TResult Function(SkibidiRoastGenerated value)? skibidiRoastGenerated,
    TResult Function(SkibidiError value)? skibidiError,
    required TResult orElse(),
  }) {
    if (skibidiError != null) {
      return skibidiError(this);
    }
    return orElse();
  }
}

abstract class SkibidiError implements SkibidiState {
  const factory SkibidiError(final String error) = _$SkibidiErrorImpl;

  String get error;

  /// Create a copy of SkibidiState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SkibidiErrorImplCopyWith<_$SkibidiErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
