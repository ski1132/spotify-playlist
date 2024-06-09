// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'track_search_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TrackSearchModel _$TrackSearchModelFromJson(Map<String, dynamic> json) {
  return _TrackSearchModel.fromJson(json);
}

/// @nodoc
mixin _$TrackSearchModel {
  @JsonKey(name: 'id')
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'type')
  String get type => throw _privateConstructorUsedError;
  @JsonKey(name: 'album')
  AlbumSearchModel get album => throw _privateConstructorUsedError;
  @JsonKey(name: 'name')
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'artists')
  List<ArtistSearchModel> get artists => throw _privateConstructorUsedError;
  @JsonKey(name: 'duration_ms')
  int get durationMs => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TrackSearchModelCopyWith<TrackSearchModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TrackSearchModelCopyWith<$Res> {
  factory $TrackSearchModelCopyWith(
          TrackSearchModel value, $Res Function(TrackSearchModel) then) =
      _$TrackSearchModelCopyWithImpl<$Res, TrackSearchModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String id,
      @JsonKey(name: 'type') String type,
      @JsonKey(name: 'album') AlbumSearchModel album,
      @JsonKey(name: 'name') String name,
      @JsonKey(name: 'artists') List<ArtistSearchModel> artists,
      @JsonKey(name: 'duration_ms') int durationMs});

  $AlbumSearchModelCopyWith<$Res> get album;
}

/// @nodoc
class _$TrackSearchModelCopyWithImpl<$Res, $Val extends TrackSearchModel>
    implements $TrackSearchModelCopyWith<$Res> {
  _$TrackSearchModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? type = null,
    Object? album = null,
    Object? name = null,
    Object? artists = null,
    Object? durationMs = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      album: null == album
          ? _value.album
          : album // ignore: cast_nullable_to_non_nullable
              as AlbumSearchModel,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      artists: null == artists
          ? _value.artists
          : artists // ignore: cast_nullable_to_non_nullable
              as List<ArtistSearchModel>,
      durationMs: null == durationMs
          ? _value.durationMs
          : durationMs // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AlbumSearchModelCopyWith<$Res> get album {
    return $AlbumSearchModelCopyWith<$Res>(_value.album, (value) {
      return _then(_value.copyWith(album: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TrackSearchModelImplCopyWith<$Res>
    implements $TrackSearchModelCopyWith<$Res> {
  factory _$$TrackSearchModelImplCopyWith(_$TrackSearchModelImpl value,
          $Res Function(_$TrackSearchModelImpl) then) =
      __$$TrackSearchModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String id,
      @JsonKey(name: 'type') String type,
      @JsonKey(name: 'album') AlbumSearchModel album,
      @JsonKey(name: 'name') String name,
      @JsonKey(name: 'artists') List<ArtistSearchModel> artists,
      @JsonKey(name: 'duration_ms') int durationMs});

  @override
  $AlbumSearchModelCopyWith<$Res> get album;
}

/// @nodoc
class __$$TrackSearchModelImplCopyWithImpl<$Res>
    extends _$TrackSearchModelCopyWithImpl<$Res, _$TrackSearchModelImpl>
    implements _$$TrackSearchModelImplCopyWith<$Res> {
  __$$TrackSearchModelImplCopyWithImpl(_$TrackSearchModelImpl _value,
      $Res Function(_$TrackSearchModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? type = null,
    Object? album = null,
    Object? name = null,
    Object? artists = null,
    Object? durationMs = null,
  }) {
    return _then(_$TrackSearchModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      album: null == album
          ? _value.album
          : album // ignore: cast_nullable_to_non_nullable
              as AlbumSearchModel,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      artists: null == artists
          ? _value._artists
          : artists // ignore: cast_nullable_to_non_nullable
              as List<ArtistSearchModel>,
      durationMs: null == durationMs
          ? _value.durationMs
          : durationMs // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TrackSearchModelImpl implements _TrackSearchModel {
  const _$TrackSearchModelImpl(
      {@JsonKey(name: 'id') required this.id,
      @JsonKey(name: 'type') required this.type,
      @JsonKey(name: 'album') required this.album,
      @JsonKey(name: 'name') required this.name,
      @JsonKey(name: 'artists') required final List<ArtistSearchModel> artists,
      @JsonKey(name: 'duration_ms') required this.durationMs})
      : _artists = artists;

  factory _$TrackSearchModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$TrackSearchModelImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final String id;
  @override
  @JsonKey(name: 'type')
  final String type;
  @override
  @JsonKey(name: 'album')
  final AlbumSearchModel album;
  @override
  @JsonKey(name: 'name')
  final String name;
  final List<ArtistSearchModel> _artists;
  @override
  @JsonKey(name: 'artists')
  List<ArtistSearchModel> get artists {
    if (_artists is EqualUnmodifiableListView) return _artists;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_artists);
  }

  @override
  @JsonKey(name: 'duration_ms')
  final int durationMs;

  @override
  String toString() {
    return 'TrackSearchModel(id: $id, type: $type, album: $album, name: $name, artists: $artists, durationMs: $durationMs)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TrackSearchModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.album, album) || other.album == album) &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality().equals(other._artists, _artists) &&
            (identical(other.durationMs, durationMs) ||
                other.durationMs == durationMs));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, type, album, name,
      const DeepCollectionEquality().hash(_artists), durationMs);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TrackSearchModelImplCopyWith<_$TrackSearchModelImpl> get copyWith =>
      __$$TrackSearchModelImplCopyWithImpl<_$TrackSearchModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TrackSearchModelImplToJson(
      this,
    );
  }
}

abstract class _TrackSearchModel implements TrackSearchModel {
  const factory _TrackSearchModel(
      {@JsonKey(name: 'id') required final String id,
      @JsonKey(name: 'type') required final String type,
      @JsonKey(name: 'album') required final AlbumSearchModel album,
      @JsonKey(name: 'name') required final String name,
      @JsonKey(name: 'artists') required final List<ArtistSearchModel> artists,
      @JsonKey(name: 'duration_ms')
      required final int durationMs}) = _$TrackSearchModelImpl;

  factory _TrackSearchModel.fromJson(Map<String, dynamic> json) =
      _$TrackSearchModelImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  String get id;
  @override
  @JsonKey(name: 'type')
  String get type;
  @override
  @JsonKey(name: 'album')
  AlbumSearchModel get album;
  @override
  @JsonKey(name: 'name')
  String get name;
  @override
  @JsonKey(name: 'artists')
  List<ArtistSearchModel> get artists;
  @override
  @JsonKey(name: 'duration_ms')
  int get durationMs;
  @override
  @JsonKey(ignore: true)
  _$$TrackSearchModelImplCopyWith<_$TrackSearchModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
