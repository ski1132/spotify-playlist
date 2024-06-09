// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'playlist_user_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PlaylistUserModel _$PlaylistUserModelFromJson(Map<String, dynamic> json) {
  return _PlaylistUserModel.fromJson(json);
}

/// @nodoc
mixin _$PlaylistUserModel {
  @JsonKey(name: 'id')
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'name')
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'description')
  String get description => throw _privateConstructorUsedError;
  @JsonKey(name: 'type')
  String get type => throw _privateConstructorUsedError;
  @JsonKey(name: 'images')
  List<ImageUrlModel>? get images => throw _privateConstructorUsedError;
  @JsonKey(name: 'tracks')
  TrackPlaylistModel get tracks => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PlaylistUserModelCopyWith<PlaylistUserModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlaylistUserModelCopyWith<$Res> {
  factory $PlaylistUserModelCopyWith(
          PlaylistUserModel value, $Res Function(PlaylistUserModel) then) =
      _$PlaylistUserModelCopyWithImpl<$Res, PlaylistUserModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String id,
      @JsonKey(name: 'name') String name,
      @JsonKey(name: 'description') String description,
      @JsonKey(name: 'type') String type,
      @JsonKey(name: 'images') List<ImageUrlModel>? images,
      @JsonKey(name: 'tracks') TrackPlaylistModel tracks});

  $TrackPlaylistModelCopyWith<$Res> get tracks;
}

/// @nodoc
class _$PlaylistUserModelCopyWithImpl<$Res, $Val extends PlaylistUserModel>
    implements $PlaylistUserModelCopyWith<$Res> {
  _$PlaylistUserModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? description = null,
    Object? type = null,
    Object? images = freezed,
    Object? tracks = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      images: freezed == images
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<ImageUrlModel>?,
      tracks: null == tracks
          ? _value.tracks
          : tracks // ignore: cast_nullable_to_non_nullable
              as TrackPlaylistModel,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $TrackPlaylistModelCopyWith<$Res> get tracks {
    return $TrackPlaylistModelCopyWith<$Res>(_value.tracks, (value) {
      return _then(_value.copyWith(tracks: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PlaylistUserModelImplCopyWith<$Res>
    implements $PlaylistUserModelCopyWith<$Res> {
  factory _$$PlaylistUserModelImplCopyWith(_$PlaylistUserModelImpl value,
          $Res Function(_$PlaylistUserModelImpl) then) =
      __$$PlaylistUserModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String id,
      @JsonKey(name: 'name') String name,
      @JsonKey(name: 'description') String description,
      @JsonKey(name: 'type') String type,
      @JsonKey(name: 'images') List<ImageUrlModel>? images,
      @JsonKey(name: 'tracks') TrackPlaylistModel tracks});

  @override
  $TrackPlaylistModelCopyWith<$Res> get tracks;
}

/// @nodoc
class __$$PlaylistUserModelImplCopyWithImpl<$Res>
    extends _$PlaylistUserModelCopyWithImpl<$Res, _$PlaylistUserModelImpl>
    implements _$$PlaylistUserModelImplCopyWith<$Res> {
  __$$PlaylistUserModelImplCopyWithImpl(_$PlaylistUserModelImpl _value,
      $Res Function(_$PlaylistUserModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? description = null,
    Object? type = null,
    Object? images = freezed,
    Object? tracks = null,
  }) {
    return _then(_$PlaylistUserModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      images: freezed == images
          ? _value._images
          : images // ignore: cast_nullable_to_non_nullable
              as List<ImageUrlModel>?,
      tracks: null == tracks
          ? _value.tracks
          : tracks // ignore: cast_nullable_to_non_nullable
              as TrackPlaylistModel,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PlaylistUserModelImpl implements _PlaylistUserModel {
  const _$PlaylistUserModelImpl(
      {@JsonKey(name: 'id') required this.id,
      @JsonKey(name: 'name') required this.name,
      @JsonKey(name: 'description') required this.description,
      @JsonKey(name: 'type') required this.type,
      @JsonKey(name: 'images') required final List<ImageUrlModel>? images,
      @JsonKey(name: 'tracks') required this.tracks})
      : _images = images;

  factory _$PlaylistUserModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$PlaylistUserModelImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final String id;
  @override
  @JsonKey(name: 'name')
  final String name;
  @override
  @JsonKey(name: 'description')
  final String description;
  @override
  @JsonKey(name: 'type')
  final String type;
  final List<ImageUrlModel>? _images;
  @override
  @JsonKey(name: 'images')
  List<ImageUrlModel>? get images {
    final value = _images;
    if (value == null) return null;
    if (_images is EqualUnmodifiableListView) return _images;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'tracks')
  final TrackPlaylistModel tracks;

  @override
  String toString() {
    return 'PlaylistUserModel(id: $id, name: $name, description: $description, type: $type, images: $images, tracks: $tracks)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PlaylistUserModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.type, type) || other.type == type) &&
            const DeepCollectionEquality().equals(other._images, _images) &&
            (identical(other.tracks, tracks) || other.tracks == tracks));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, description, type,
      const DeepCollectionEquality().hash(_images), tracks);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PlaylistUserModelImplCopyWith<_$PlaylistUserModelImpl> get copyWith =>
      __$$PlaylistUserModelImplCopyWithImpl<_$PlaylistUserModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PlaylistUserModelImplToJson(
      this,
    );
  }
}

abstract class _PlaylistUserModel implements PlaylistUserModel {
  const factory _PlaylistUserModel(
          {@JsonKey(name: 'id') required final String id,
          @JsonKey(name: 'name') required final String name,
          @JsonKey(name: 'description') required final String description,
          @JsonKey(name: 'type') required final String type,
          @JsonKey(name: 'images') required final List<ImageUrlModel>? images,
          @JsonKey(name: 'tracks') required final TrackPlaylistModel tracks}) =
      _$PlaylistUserModelImpl;

  factory _PlaylistUserModel.fromJson(Map<String, dynamic> json) =
      _$PlaylistUserModelImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  String get id;
  @override
  @JsonKey(name: 'name')
  String get name;
  @override
  @JsonKey(name: 'description')
  String get description;
  @override
  @JsonKey(name: 'type')
  String get type;
  @override
  @JsonKey(name: 'images')
  List<ImageUrlModel>? get images;
  @override
  @JsonKey(name: 'tracks')
  TrackPlaylistModel get tracks;
  @override
  @JsonKey(ignore: true)
  _$$PlaylistUserModelImplCopyWith<_$PlaylistUserModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
