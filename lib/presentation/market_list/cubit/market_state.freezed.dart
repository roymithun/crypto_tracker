// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'market_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$MarketListSuccess {
  Map<MarketEntity, List<SymbolEntity>> get marketToSymbolMap =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MarketListSuccessCopyWith<MarketListSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MarketListSuccessCopyWith<$Res> {
  factory $MarketListSuccessCopyWith(
          MarketListSuccess value, $Res Function(MarketListSuccess) then) =
      _$MarketListSuccessCopyWithImpl<$Res>;
  $Res call({Map<MarketEntity, List<SymbolEntity>> marketToSymbolMap});
}

/// @nodoc
class _$MarketListSuccessCopyWithImpl<$Res>
    implements $MarketListSuccessCopyWith<$Res> {
  _$MarketListSuccessCopyWithImpl(this._value, this._then);

  final MarketListSuccess _value;
  // ignore: unused_field
  final $Res Function(MarketListSuccess) _then;

  @override
  $Res call({
    Object? marketToSymbolMap = freezed,
  }) {
    return _then(_value.copyWith(
      marketToSymbolMap: marketToSymbolMap == freezed
          ? _value.marketToSymbolMap
          : marketToSymbolMap // ignore: cast_nullable_to_non_nullable
              as Map<MarketEntity, List<SymbolEntity>>,
    ));
  }
}

/// @nodoc
abstract class _$$_MarketListSuccessCopyWith<$Res>
    implements $MarketListSuccessCopyWith<$Res> {
  factory _$$_MarketListSuccessCopyWith(_$_MarketListSuccess value,
          $Res Function(_$_MarketListSuccess) then) =
      __$$_MarketListSuccessCopyWithImpl<$Res>;
  @override
  $Res call({Map<MarketEntity, List<SymbolEntity>> marketToSymbolMap});
}

/// @nodoc
class __$$_MarketListSuccessCopyWithImpl<$Res>
    extends _$MarketListSuccessCopyWithImpl<$Res>
    implements _$$_MarketListSuccessCopyWith<$Res> {
  __$$_MarketListSuccessCopyWithImpl(
      _$_MarketListSuccess _value, $Res Function(_$_MarketListSuccess) _then)
      : super(_value, (v) => _then(v as _$_MarketListSuccess));

  @override
  _$_MarketListSuccess get _value => super._value as _$_MarketListSuccess;

  @override
  $Res call({
    Object? marketToSymbolMap = freezed,
  }) {
    return _then(_$_MarketListSuccess(
      marketToSymbolMap: marketToSymbolMap == freezed
          ? _value._marketToSymbolMap
          : marketToSymbolMap // ignore: cast_nullable_to_non_nullable
              as Map<MarketEntity, List<SymbolEntity>>,
    ));
  }
}

/// @nodoc

class _$_MarketListSuccess implements _MarketListSuccess {
  const _$_MarketListSuccess(
      {required final Map<MarketEntity, List<SymbolEntity>> marketToSymbolMap})
      : _marketToSymbolMap = marketToSymbolMap;

  final Map<MarketEntity, List<SymbolEntity>> _marketToSymbolMap;
  @override
  Map<MarketEntity, List<SymbolEntity>> get marketToSymbolMap {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_marketToSymbolMap);
  }

  @override
  String toString() {
    return 'MarketListSuccess(marketToSymbolMap: $marketToSymbolMap)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MarketListSuccess &&
            const DeepCollectionEquality()
                .equals(other._marketToSymbolMap, _marketToSymbolMap));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_marketToSymbolMap));

  @JsonKey(ignore: true)
  @override
  _$$_MarketListSuccessCopyWith<_$_MarketListSuccess> get copyWith =>
      __$$_MarketListSuccessCopyWithImpl<_$_MarketListSuccess>(
          this, _$identity);
}

abstract class _MarketListSuccess implements MarketListSuccess {
  const factory _MarketListSuccess(
      {required final Map<MarketEntity, List<SymbolEntity>>
          marketToSymbolMap}) = _$_MarketListSuccess;

  @override
  Map<MarketEntity, List<SymbolEntity>> get marketToSymbolMap;
  @override
  @JsonKey(ignore: true)
  _$$_MarketListSuccessCopyWith<_$_MarketListSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$MarketListError {
  String get message => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MarketListErrorCopyWith<MarketListError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MarketListErrorCopyWith<$Res> {
  factory $MarketListErrorCopyWith(
          MarketListError value, $Res Function(MarketListError) then) =
      _$MarketListErrorCopyWithImpl<$Res>;
  $Res call({String message});
}

/// @nodoc
class _$MarketListErrorCopyWithImpl<$Res>
    implements $MarketListErrorCopyWith<$Res> {
  _$MarketListErrorCopyWithImpl(this._value, this._then);

  final MarketListError _value;
  // ignore: unused_field
  final $Res Function(MarketListError) _then;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_value.copyWith(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_MarketListErrorCopyWith<$Res>
    implements $MarketListErrorCopyWith<$Res> {
  factory _$$_MarketListErrorCopyWith(
          _$_MarketListError value, $Res Function(_$_MarketListError) then) =
      __$$_MarketListErrorCopyWithImpl<$Res>;
  @override
  $Res call({String message});
}

/// @nodoc
class __$$_MarketListErrorCopyWithImpl<$Res>
    extends _$MarketListErrorCopyWithImpl<$Res>
    implements _$$_MarketListErrorCopyWith<$Res> {
  __$$_MarketListErrorCopyWithImpl(
      _$_MarketListError _value, $Res Function(_$_MarketListError) _then)
      : super(_value, (v) => _then(v as _$_MarketListError));

  @override
  _$_MarketListError get _value => super._value as _$_MarketListError;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$_MarketListError(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_MarketListError implements _MarketListError {
  const _$_MarketListError({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'MarketListError(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MarketListError &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  _$$_MarketListErrorCopyWith<_$_MarketListError> get copyWith =>
      __$$_MarketListErrorCopyWithImpl<_$_MarketListError>(this, _$identity);
}

abstract class _MarketListError implements MarketListError {
  const factory _MarketListError({required final String message}) =
      _$_MarketListError;

  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$_MarketListErrorCopyWith<_$_MarketListError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$MarketListSelectionUpdate {
  MarketEntity get marketEntity => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MarketListSelectionUpdateCopyWith<MarketListSelectionUpdate> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MarketListSelectionUpdateCopyWith<$Res> {
  factory $MarketListSelectionUpdateCopyWith(MarketListSelectionUpdate value,
          $Res Function(MarketListSelectionUpdate) then) =
      _$MarketListSelectionUpdateCopyWithImpl<$Res>;
  $Res call({MarketEntity marketEntity});
}

/// @nodoc
class _$MarketListSelectionUpdateCopyWithImpl<$Res>
    implements $MarketListSelectionUpdateCopyWith<$Res> {
  _$MarketListSelectionUpdateCopyWithImpl(this._value, this._then);

  final MarketListSelectionUpdate _value;
  // ignore: unused_field
  final $Res Function(MarketListSelectionUpdate) _then;

  @override
  $Res call({
    Object? marketEntity = freezed,
  }) {
    return _then(_value.copyWith(
      marketEntity: marketEntity == freezed
          ? _value.marketEntity
          : marketEntity // ignore: cast_nullable_to_non_nullable
              as MarketEntity,
    ));
  }
}

/// @nodoc
abstract class _$$_MarketListSelectionUpdateCopyWith<$Res>
    implements $MarketListSelectionUpdateCopyWith<$Res> {
  factory _$$_MarketListSelectionUpdateCopyWith(
          _$_MarketListSelectionUpdate value,
          $Res Function(_$_MarketListSelectionUpdate) then) =
      __$$_MarketListSelectionUpdateCopyWithImpl<$Res>;
  @override
  $Res call({MarketEntity marketEntity});
}

/// @nodoc
class __$$_MarketListSelectionUpdateCopyWithImpl<$Res>
    extends _$MarketListSelectionUpdateCopyWithImpl<$Res>
    implements _$$_MarketListSelectionUpdateCopyWith<$Res> {
  __$$_MarketListSelectionUpdateCopyWithImpl(
      _$_MarketListSelectionUpdate _value,
      $Res Function(_$_MarketListSelectionUpdate) _then)
      : super(_value, (v) => _then(v as _$_MarketListSelectionUpdate));

  @override
  _$_MarketListSelectionUpdate get _value =>
      super._value as _$_MarketListSelectionUpdate;

  @override
  $Res call({
    Object? marketEntity = freezed,
  }) {
    return _then(_$_MarketListSelectionUpdate(
      marketEntity: marketEntity == freezed
          ? _value.marketEntity
          : marketEntity // ignore: cast_nullable_to_non_nullable
              as MarketEntity,
    ));
  }
}

/// @nodoc

class _$_MarketListSelectionUpdate implements _MarketListSelectionUpdate {
  const _$_MarketListSelectionUpdate({required this.marketEntity});

  @override
  final MarketEntity marketEntity;

  @override
  String toString() {
    return 'MarketListSelectionUpdate(marketEntity: $marketEntity)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MarketListSelectionUpdate &&
            const DeepCollectionEquality()
                .equals(other.marketEntity, marketEntity));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(marketEntity));

  @JsonKey(ignore: true)
  @override
  _$$_MarketListSelectionUpdateCopyWith<_$_MarketListSelectionUpdate>
      get copyWith => __$$_MarketListSelectionUpdateCopyWithImpl<
          _$_MarketListSelectionUpdate>(this, _$identity);
}

abstract class _MarketListSelectionUpdate implements MarketListSelectionUpdate {
  const factory _MarketListSelectionUpdate(
          {required final MarketEntity marketEntity}) =
      _$_MarketListSelectionUpdate;

  @override
  MarketEntity get marketEntity;
  @override
  @JsonKey(ignore: true)
  _$$_MarketListSelectionUpdateCopyWith<_$_MarketListSelectionUpdate>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$TickSuccess {
  Stream<TickSpotData> get streamTick => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TickSuccessCopyWith<TickSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TickSuccessCopyWith<$Res> {
  factory $TickSuccessCopyWith(
          TickSuccess value, $Res Function(TickSuccess) then) =
      _$TickSuccessCopyWithImpl<$Res>;
  $Res call({Stream<TickSpotData> streamTick});
}

/// @nodoc
class _$TickSuccessCopyWithImpl<$Res> implements $TickSuccessCopyWith<$Res> {
  _$TickSuccessCopyWithImpl(this._value, this._then);

  final TickSuccess _value;
  // ignore: unused_field
  final $Res Function(TickSuccess) _then;

  @override
  $Res call({
    Object? streamTick = freezed,
  }) {
    return _then(_value.copyWith(
      streamTick: streamTick == freezed
          ? _value.streamTick
          : streamTick // ignore: cast_nullable_to_non_nullable
              as Stream<TickSpotData>,
    ));
  }
}

/// @nodoc
abstract class _$$_TickSuccessCopyWith<$Res>
    implements $TickSuccessCopyWith<$Res> {
  factory _$$_TickSuccessCopyWith(
          _$_TickSuccess value, $Res Function(_$_TickSuccess) then) =
      __$$_TickSuccessCopyWithImpl<$Res>;
  @override
  $Res call({Stream<TickSpotData> streamTick});
}

/// @nodoc
class __$$_TickSuccessCopyWithImpl<$Res> extends _$TickSuccessCopyWithImpl<$Res>
    implements _$$_TickSuccessCopyWith<$Res> {
  __$$_TickSuccessCopyWithImpl(
      _$_TickSuccess _value, $Res Function(_$_TickSuccess) _then)
      : super(_value, (v) => _then(v as _$_TickSuccess));

  @override
  _$_TickSuccess get _value => super._value as _$_TickSuccess;

  @override
  $Res call({
    Object? streamTick = freezed,
  }) {
    return _then(_$_TickSuccess(
      streamTick: streamTick == freezed
          ? _value.streamTick
          : streamTick // ignore: cast_nullable_to_non_nullable
              as Stream<TickSpotData>,
    ));
  }
}

/// @nodoc

class _$_TickSuccess implements _TickSuccess {
  const _$_TickSuccess({required this.streamTick});

  @override
  final Stream<TickSpotData> streamTick;

  @override
  String toString() {
    return 'TickSuccess(streamTick: $streamTick)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TickSuccess &&
            const DeepCollectionEquality()
                .equals(other.streamTick, streamTick));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(streamTick));

  @JsonKey(ignore: true)
  @override
  _$$_TickSuccessCopyWith<_$_TickSuccess> get copyWith =>
      __$$_TickSuccessCopyWithImpl<_$_TickSuccess>(this, _$identity);
}

abstract class _TickSuccess implements TickSuccess {
  const factory _TickSuccess({required final Stream<TickSpotData> streamTick}) =
      _$_TickSuccess;

  @override
  Stream<TickSpotData> get streamTick;
  @override
  @JsonKey(ignore: true)
  _$$_TickSuccessCopyWith<_$_TickSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$TickDataUpdate {
  TickSpotData get tick => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TickDataUpdateCopyWith<TickDataUpdate> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TickDataUpdateCopyWith<$Res> {
  factory $TickDataUpdateCopyWith(
          TickDataUpdate value, $Res Function(TickDataUpdate) then) =
      _$TickDataUpdateCopyWithImpl<$Res>;
  $Res call({TickSpotData tick});
}

/// @nodoc
class _$TickDataUpdateCopyWithImpl<$Res>
    implements $TickDataUpdateCopyWith<$Res> {
  _$TickDataUpdateCopyWithImpl(this._value, this._then);

  final TickDataUpdate _value;
  // ignore: unused_field
  final $Res Function(TickDataUpdate) _then;

  @override
  $Res call({
    Object? tick = freezed,
  }) {
    return _then(_value.copyWith(
      tick: tick == freezed
          ? _value.tick
          : tick // ignore: cast_nullable_to_non_nullable
              as TickSpotData,
    ));
  }
}

/// @nodoc
abstract class _$$_TickDataUpdateCopyWith<$Res>
    implements $TickDataUpdateCopyWith<$Res> {
  factory _$$_TickDataUpdateCopyWith(
          _$_TickDataUpdate value, $Res Function(_$_TickDataUpdate) then) =
      __$$_TickDataUpdateCopyWithImpl<$Res>;
  @override
  $Res call({TickSpotData tick});
}

/// @nodoc
class __$$_TickDataUpdateCopyWithImpl<$Res>
    extends _$TickDataUpdateCopyWithImpl<$Res>
    implements _$$_TickDataUpdateCopyWith<$Res> {
  __$$_TickDataUpdateCopyWithImpl(
      _$_TickDataUpdate _value, $Res Function(_$_TickDataUpdate) _then)
      : super(_value, (v) => _then(v as _$_TickDataUpdate));

  @override
  _$_TickDataUpdate get _value => super._value as _$_TickDataUpdate;

  @override
  $Res call({
    Object? tick = freezed,
  }) {
    return _then(_$_TickDataUpdate(
      tick: tick == freezed
          ? _value.tick
          : tick // ignore: cast_nullable_to_non_nullable
              as TickSpotData,
    ));
  }
}

/// @nodoc

class _$_TickDataUpdate implements _TickDataUpdate {
  const _$_TickDataUpdate({required this.tick});

  @override
  final TickSpotData tick;

  @override
  String toString() {
    return 'TickDataUpdate(tick: $tick)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TickDataUpdate &&
            const DeepCollectionEquality().equals(other.tick, tick));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(tick));

  @JsonKey(ignore: true)
  @override
  _$$_TickDataUpdateCopyWith<_$_TickDataUpdate> get copyWith =>
      __$$_TickDataUpdateCopyWithImpl<_$_TickDataUpdate>(this, _$identity);
}

abstract class _TickDataUpdate implements TickDataUpdate {
  const factory _TickDataUpdate({required final TickSpotData tick}) =
      _$_TickDataUpdate;

  @override
  TickSpotData get tick;
  @override
  @JsonKey(ignore: true)
  _$$_TickDataUpdateCopyWith<_$_TickDataUpdate> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$TickError {
  String get message => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TickErrorCopyWith<TickError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TickErrorCopyWith<$Res> {
  factory $TickErrorCopyWith(TickError value, $Res Function(TickError) then) =
      _$TickErrorCopyWithImpl<$Res>;
  $Res call({String message});
}

/// @nodoc
class _$TickErrorCopyWithImpl<$Res> implements $TickErrorCopyWith<$Res> {
  _$TickErrorCopyWithImpl(this._value, this._then);

  final TickError _value;
  // ignore: unused_field
  final $Res Function(TickError) _then;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_value.copyWith(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_TickErrorCopyWith<$Res> implements $TickErrorCopyWith<$Res> {
  factory _$$_TickErrorCopyWith(
          _$_TickError value, $Res Function(_$_TickError) then) =
      __$$_TickErrorCopyWithImpl<$Res>;
  @override
  $Res call({String message});
}

/// @nodoc
class __$$_TickErrorCopyWithImpl<$Res> extends _$TickErrorCopyWithImpl<$Res>
    implements _$$_TickErrorCopyWith<$Res> {
  __$$_TickErrorCopyWithImpl(
      _$_TickError _value, $Res Function(_$_TickError) _then)
      : super(_value, (v) => _then(v as _$_TickError));

  @override
  _$_TickError get _value => super._value as _$_TickError;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$_TickError(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_TickError implements _TickError {
  const _$_TickError({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'TickError(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TickError &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  _$$_TickErrorCopyWith<_$_TickError> get copyWith =>
      __$$_TickErrorCopyWithImpl<_$_TickError>(this, _$identity);
}

abstract class _TickError implements TickError {
  const factory _TickError({required final String message}) = _$_TickError;

  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$_TickErrorCopyWith<_$_TickError> get copyWith =>
      throw _privateConstructorUsedError;
}
