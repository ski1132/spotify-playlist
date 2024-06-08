// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'album_search_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AlbumSearchModel _$AlbumSearchModelFromJson(Map<String, dynamic> json) {
  return _AlbumSearchModel.fromJson(json);
}

/// @nodoc
mixin _$AlbumSearchModel {
  @JsonKey(name: 'id')
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'album_type')
  String get albumType => throw _privateConstructorUsedError;
  @JsonKey(name: 'images')
  List<ImageUrlModel> get imagesList => throw _privateConstructorUsedError;
  @JsonKey(name: 'name')
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'release_date')
  String get releaseDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'artists')
  List<ArtistSearchModel> get artists => throw _privateConstructorUsedError;
  @JsonKey(name: 'tracks')
  TrackAlbumModel? get tracks => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AlbumSearchModelCopyWith<AlbumSearchModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AlbumSearchModelCopyWith<$Res> {
  factory $AlbumSearchModelCopyWith(
          AlbumSearchModel value, $Res Function(AlbumSearchModel) then) =
      _$AlbumSearchModelCopyWithImpl<$Res, AlbumSearchModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String id,
      @JsonKey(name: 'album_type') String albumType,
      @JsonKey(name: 'images') List<ImageUrlModel> imagesList,
      @JsonKey(name: 'name') String name,
      @JsonKey(name: 'release_date') String releaseDate,
      @JsonKey(name: 'artists') List<ArtistSearchModel> artists,
      @JsonKey(name: 'tracks') TrackAlbumModel? tracks});

  $TrackAlbumModelCopyWith<$Res>? get tracks;
}

/// @nodoc
class _$AlbumSearchModelCopyWithImpl<$Res, $Val extends AlbumSearchModel>
    implements $AlbumSearchModelCopyWith<$Res> {
  _$AlbumSearchModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? albumType = null,
    Object? imagesList = null,
    Object? name = null,
    Object? releaseDate = null,
    Object? artists = null,
    Object? tracks = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      albumType: null == albumType
          ? _value.albumType
          : albumType // ignore: cast_nullable_to_non_nullable
              as String,
      imagesList: null == imagesList
          ? _value.imagesList
          : imagesList // ignore: cast_nullable_to_non_nullable
              as List<ImageUrlModel>,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      releaseDate: null == releaseDate
          ? _value.releaseDate
          : releaseDate // ignore: cast_nullable_to_non_nullable
              as String,
      artists: null == artists
          ? _value.artists
          : artists // ignore: cast_nullable_to_non_nullable
              as List<ArtistSearchModel>,
      tracks: freezed == tracks
          ? _value.tracks
          : tracks // ignore: cast_nullable_to_non_nullable
              as TrackAlbumModel?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $TrackAlbumModelCopyWith<$Res>? get tracks {
    if (_value.tracks == null) {
      return null;
    }

    return $TrackAlbumModelCopyWith<$Res>(_value.tracks!, (value) {
      return _then(_value.copyWith(tracks: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AlbumSearchModelImplCopyWith<$Res>
    implements $AlbumSearchModelCopyWith<$Res> {
  factory _$$AlbumSearchModelImplCopyWith(_$AlbumSearchModelImpl value,
          $Res Function(_$AlbumSearchModelImpl) then) =
      __$$AlbumSearchModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String id,
      @JsonKey(name: 'album_type') String albumType,
      @JsonKey(name: 'images') List<ImageUrlModel> imagesList,
      @JsonKey(name: 'name') String name,
      @JsonKey(name: 'release_date') String releaseDate,
      @JsonKey(name: 'artists') List<ArtistSearchModel> artists,
      @JsonKey(name: 'tracks') TrackAlbumModel? tracks});

  @override
  $TrackAlbumModelCopyWith<$Res>? get tracks;
}

/// @nodoc
class __$$AlbumSearchModelImplCopyWithImpl<$Res>
    extends _$AlbumSearchModelCopyWithImpl<$Res, _$AlbumSearchModelImpl>
    implements _$$AlbumSearchModelImplCopyWith<$Res> {
  __$$AlbumSearchModelImplCopyWithImpl(_$AlbumSearchModelImpl _value,
      $Res Function(_$AlbumSearchModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? albumType = null,
    Object? imagesList = null,
    Object? name = null,
    Object? releaseDate = null,
    Object? artists = null,
    Object? tracks = freezed,
  }) {
    return _then(_$AlbumSearchModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      albumType: null == albumType
          ? _value.albumType
          : albumType // ignore: cast_nullable_to_non_nullable
              as String,
      imagesList: null == imagesList
          ? _value._imagesList
          : imagesList // ignore: cast_nullable_to_non_nullable
              as List<ImageUrlModel>,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      releaseDate: null == releaseDate
          ? _value.releaseDate
          : releaseDate // ignore: cast_nullable_to_non_nullable
              as String,
      artists: null == artists
          ? _value._artists
          : artists // ignore: cast_nullable_to_non_nullable
              as List<ArtistSearchModel>,
      tracks: freezed == tracks
          ? _value.tracks
          : tracks // ignore: cast_nullable_to_non_nullable
              as TrackAlbumModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AlbumSearchModelImpl implements _AlbumSearchModel {
  const _$AlbumSearchModelImpl(
      {@JsonKey(name: 'id') required this.id,
      @JsonKey(name: 'album_type') required this.albumType,
      @JsonKey(name: 'images') required final List<ImageUrlModel> imagesList,
      @JsonKey(name: 'name') required this.name,
      @JsonKey(name: 'release_date') required this.releaseDate,
      @JsonKey(name: 'artists') required final List<ArtistSearchModel> artists,
      @JsonKey(name: 'tracks') required this.tracks})
      : _imagesList = imagesList,
        _artists = artists;

  factory _$AlbumSearchModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$AlbumSearchModelImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final String id;
  @override
  @JsonKey(name: 'album_type')
  final String albumType;
  final List<ImageUrlModel> _imagesList;
  @override
  @JsonKey(name: 'images')
  List<ImageUrlModel> get imagesList {
    if (_imagesList is EqualUnmodifiableListView) return _imagesList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_imagesList);
  }

  @override
  @JsonKey(name: 'name')
  final String name;
  @override
  @JsonKey(name: 'release_date')
  final String releaseDate;
  final List<ArtistSearchModel> _artists;
  @override
  @JsonKey(name: 'artists')
  List<ArtistSearchModel> get artists {
    if (_artists is EqualUnmodifiableListView) return _artists;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_artists);
  }

  @override
  @JsonKey(name: 'tracks')
  final TrackAlbumModel? tracks;

  @override
  String toString() {
    return 'AlbumSearchModel(id: $id, albumType: $albumType, imagesList: $imagesList, name: $name, releaseDate: $releaseDate, artists: $artists, tracks: $tracks)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AlbumSearchModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.albumType, albumType) ||
                other.albumType == albumType) &&
            const DeepCollectionEquality()
                .equals(other._imagesList, _imagesList) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.releaseDate, releaseDate) ||
                other.releaseDate == releaseDate) &&
            const DeepCollectionEquality().equals(other._artists, _artists) &&
            (identical(other.tracks, tracks) || other.tracks == tracks));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      albumType,
      const DeepCollectionEquality().hash(_imagesList),
      name,
      releaseDate,
      const DeepCollectionEquality().hash(_artists),
      tracks);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AlbumSearchModelImplCopyWith<_$AlbumSearchModelImpl> get copyWith =>
      __$$AlbumSearchModelImplCopyWithImpl<_$AlbumSearchModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AlbumSearchModelImplToJson(
      this,
    );
  }
}

abstract class _AlbumSearchModel implements AlbumSearchModel {
  const factory _AlbumSearchModel(
      {@JsonKey(name: 'id') required final String id,
      @JsonKey(name: 'album_type') required final String albumType,
      @JsonKey(name: 'images') required final List<ImageUrlModel> imagesList,
      @JsonKey(name: 'name') required final String name,
      @JsonKey(name: 'release_date') required final String releaseDate,
      @JsonKey(name: 'artists') required final List<ArtistSearchModel> artists,
      @JsonKey(name: 'tracks')
      required final TrackAlbumModel? tracks}) = _$AlbumSearchModelImpl;

  factory _AlbumSearchModel.fromJson(Map<String, dynamic> json) =
      _$AlbumSearchModelImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  String get id;
  @override
  @JsonKey(name: 'album_type')
  String get albumType;
  @override
  @JsonKey(name: 'images')
  List<ImageUrlModel> get imagesList;
  @override
  @JsonKey(name: 'name')
  String get name;
  @override
  @JsonKey(name: 'release_date')
  String get releaseDate;
  @override
  @JsonKey(name: 'artists')
  List<ArtistSearchModel> get artists;
  @override
  @JsonKey(name: 'tracks')
  TrackAlbumModel? get tracks;
  @override
  @JsonKey(ignore: true)
  _$$AlbumSearchModelImplCopyWith<_$AlbumSearchModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
