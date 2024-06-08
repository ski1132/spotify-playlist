// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'track_album_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TrackAlbumModel _$TrackAlbumModelFromJson(Map<String, dynamic> json) {
  return _TrackAlbumModel.fromJson(json);
}

/// @nodoc
mixin _$TrackAlbumModel {
  @JsonKey(name: 'limit')
  int get limit => throw _privateConstructorUsedError;
  @JsonKey(name: 'offset')
  int get offset => throw _privateConstructorUsedError;
  @JsonKey(name: 'total')
  int get total => throw _privateConstructorUsedError;
  @JsonKey(name: 'items')
  List<AlbumDetailModel> get items => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TrackAlbumModelCopyWith<TrackAlbumModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TrackAlbumModelCopyWith<$Res> {
  factory $TrackAlbumModelCopyWith(
          TrackAlbumModel value, $Res Function(TrackAlbumModel) then) =
      _$TrackAlbumModelCopyWithImpl<$Res, TrackAlbumModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'limit') int limit,
      @JsonKey(name: 'offset') int offset,
      @JsonKey(name: 'total') int total,
      @JsonKey(name: 'items') List<AlbumDetailModel> items});
}

/// @nodoc
class _$TrackAlbumModelCopyWithImpl<$Res, $Val extends TrackAlbumModel>
    implements $TrackAlbumModelCopyWith<$Res> {
  _$TrackAlbumModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? limit = null,
    Object? offset = null,
    Object? total = null,
    Object? items = null,
  }) {
    return _then(_value.copyWith(
      limit: null == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int,
      offset: null == offset
          ? _value.offset
          : offset // ignore: cast_nullable_to_non_nullable
              as int,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
      items: null == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<AlbumDetailModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TrackAlbumModelImplCopyWith<$Res>
    implements $TrackAlbumModelCopyWith<$Res> {
  factory _$$TrackAlbumModelImplCopyWith(_$TrackAlbumModelImpl value,
          $Res Function(_$TrackAlbumModelImpl) then) =
      __$$TrackAlbumModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'limit') int limit,
      @JsonKey(name: 'offset') int offset,
      @JsonKey(name: 'total') int total,
      @JsonKey(name: 'items') List<AlbumDetailModel> items});
}

/// @nodoc
class __$$TrackAlbumModelImplCopyWithImpl<$Res>
    extends _$TrackAlbumModelCopyWithImpl<$Res, _$TrackAlbumModelImpl>
    implements _$$TrackAlbumModelImplCopyWith<$Res> {
  __$$TrackAlbumModelImplCopyWithImpl(
      _$TrackAlbumModelImpl _value, $Res Function(_$TrackAlbumModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? limit = null,
    Object? offset = null,
    Object? total = null,
    Object? items = null,
  }) {
    return _then(_$TrackAlbumModelImpl(
      limit: null == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int,
      offset: null == offset
          ? _value.offset
          : offset // ignore: cast_nullable_to_non_nullable
              as int,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
      items: null == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<AlbumDetailModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TrackAlbumModelImpl implements _TrackAlbumModel {
  const _$TrackAlbumModelImpl(
      {@JsonKey(name: 'limit') required this.limit,
      @JsonKey(name: 'offset') required this.offset,
      @JsonKey(name: 'total') required this.total,
      @JsonKey(name: 'items') required final List<AlbumDetailModel> items})
      : _items = items;

  factory _$TrackAlbumModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$TrackAlbumModelImplFromJson(json);

  @override
  @JsonKey(name: 'limit')
  final int limit;
  @override
  @JsonKey(name: 'offset')
  final int offset;
  @override
  @JsonKey(name: 'total')
  final int total;
  final List<AlbumDetailModel> _items;
  @override
  @JsonKey(name: 'items')
  List<AlbumDetailModel> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  String toString() {
    return 'TrackAlbumModel(limit: $limit, offset: $offset, total: $total, items: $items)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TrackAlbumModelImpl &&
            (identical(other.limit, limit) || other.limit == limit) &&
            (identical(other.offset, offset) || other.offset == offset) &&
            (identical(other.total, total) || other.total == total) &&
            const DeepCollectionEquality().equals(other._items, _items));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, limit, offset, total,
      const DeepCollectionEquality().hash(_items));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TrackAlbumModelImplCopyWith<_$TrackAlbumModelImpl> get copyWith =>
      __$$TrackAlbumModelImplCopyWithImpl<_$TrackAlbumModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TrackAlbumModelImplToJson(
      this,
    );
  }
}

abstract class _TrackAlbumModel implements TrackAlbumModel {
  const factory _TrackAlbumModel(
      {@JsonKey(name: 'limit') required final int limit,
      @JsonKey(name: 'offset') required final int offset,
      @JsonKey(name: 'total') required final int total,
      @JsonKey(name: 'items')
      required final List<AlbumDetailModel> items}) = _$TrackAlbumModelImpl;

  factory _TrackAlbumModel.fromJson(Map<String, dynamic> json) =
      _$TrackAlbumModelImpl.fromJson;

  @override
  @JsonKey(name: 'limit')
  int get limit;
  @override
  @JsonKey(name: 'offset')
  int get offset;
  @override
  @JsonKey(name: 'total')
  int get total;
  @override
  @JsonKey(name: 'items')
  List<AlbumDetailModel> get items;
  @override
  @JsonKey(ignore: true)
  _$$TrackAlbumModelImplCopyWith<_$TrackAlbumModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
