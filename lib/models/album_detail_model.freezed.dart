// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'album_detail_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AlbumDetailModel _$AlbumDetailModelFromJson(Map<String, dynamic> json) {
  return _AlbumDetailModel.fromJson(json);
}

/// @nodoc
mixin _$AlbumDetailModel {
  @JsonKey(name: 'artists')
  List<ArtistSearchModel> get artists => throw _privateConstructorUsedError;
  @JsonKey(name: 'duration_ms')
  int get durationMs => throw _privateConstructorUsedError;
  @JsonKey(name: 'id')
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'name')
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'preview_url')
  String get previewUrl => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AlbumDetailModelCopyWith<AlbumDetailModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AlbumDetailModelCopyWith<$Res> {
  factory $AlbumDetailModelCopyWith(
          AlbumDetailModel value, $Res Function(AlbumDetailModel) then) =
      _$AlbumDetailModelCopyWithImpl<$Res, AlbumDetailModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'artists') List<ArtistSearchModel> artists,
      @JsonKey(name: 'duration_ms') int durationMs,
      @JsonKey(name: 'id') String id,
      @JsonKey(name: 'name') String name,
      @JsonKey(name: 'preview_url') String previewUrl});
}

/// @nodoc
class _$AlbumDetailModelCopyWithImpl<$Res, $Val extends AlbumDetailModel>
    implements $AlbumDetailModelCopyWith<$Res> {
  _$AlbumDetailModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? artists = null,
    Object? durationMs = null,
    Object? id = null,
    Object? name = null,
    Object? previewUrl = null,
  }) {
    return _then(_value.copyWith(
      artists: null == artists
          ? _value.artists
          : artists // ignore: cast_nullable_to_non_nullable
              as List<ArtistSearchModel>,
      durationMs: null == durationMs
          ? _value.durationMs
          : durationMs // ignore: cast_nullable_to_non_nullable
              as int,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      previewUrl: null == previewUrl
          ? _value.previewUrl
          : previewUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AlbumDetailModelImplCopyWith<$Res>
    implements $AlbumDetailModelCopyWith<$Res> {
  factory _$$AlbumDetailModelImplCopyWith(_$AlbumDetailModelImpl value,
          $Res Function(_$AlbumDetailModelImpl) then) =
      __$$AlbumDetailModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'artists') List<ArtistSearchModel> artists,
      @JsonKey(name: 'duration_ms') int durationMs,
      @JsonKey(name: 'id') String id,
      @JsonKey(name: 'name') String name,
      @JsonKey(name: 'preview_url') String previewUrl});
}

/// @nodoc
class __$$AlbumDetailModelImplCopyWithImpl<$Res>
    extends _$AlbumDetailModelCopyWithImpl<$Res, _$AlbumDetailModelImpl>
    implements _$$AlbumDetailModelImplCopyWith<$Res> {
  __$$AlbumDetailModelImplCopyWithImpl(_$AlbumDetailModelImpl _value,
      $Res Function(_$AlbumDetailModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? artists = null,
    Object? durationMs = null,
    Object? id = null,
    Object? name = null,
    Object? previewUrl = null,
  }) {
    return _then(_$AlbumDetailModelImpl(
      artists: null == artists
          ? _value._artists
          : artists // ignore: cast_nullable_to_non_nullable
              as List<ArtistSearchModel>,
      durationMs: null == durationMs
          ? _value.durationMs
          : durationMs // ignore: cast_nullable_to_non_nullable
              as int,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      previewUrl: null == previewUrl
          ? _value.previewUrl
          : previewUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AlbumDetailModelImpl implements _AlbumDetailModel {
  const _$AlbumDetailModelImpl(
      {@JsonKey(name: 'artists') required final List<ArtistSearchModel> artists,
      @JsonKey(name: 'duration_ms') required this.durationMs,
      @JsonKey(name: 'id') required this.id,
      @JsonKey(name: 'name') required this.name,
      @JsonKey(name: 'preview_url') required this.previewUrl})
      : _artists = artists;

  factory _$AlbumDetailModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$AlbumDetailModelImplFromJson(json);

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
  @JsonKey(name: 'id')
  final String id;
  @override
  @JsonKey(name: 'name')
  final String name;
  @override
  @JsonKey(name: 'preview_url')
  final String previewUrl;

  @override
  String toString() {
    return 'AlbumDetailModel(artists: $artists, durationMs: $durationMs, id: $id, name: $name, previewUrl: $previewUrl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AlbumDetailModelImpl &&
            const DeepCollectionEquality().equals(other._artists, _artists) &&
            (identical(other.durationMs, durationMs) ||
                other.durationMs == durationMs) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.previewUrl, previewUrl) ||
                other.previewUrl == previewUrl));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_artists),
      durationMs,
      id,
      name,
      previewUrl);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AlbumDetailModelImplCopyWith<_$AlbumDetailModelImpl> get copyWith =>
      __$$AlbumDetailModelImplCopyWithImpl<_$AlbumDetailModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AlbumDetailModelImplToJson(
      this,
    );
  }
}

abstract class _AlbumDetailModel implements AlbumDetailModel {
  const factory _AlbumDetailModel(
      {@JsonKey(name: 'artists') required final List<ArtistSearchModel> artists,
      @JsonKey(name: 'duration_ms') required final int durationMs,
      @JsonKey(name: 'id') required final String id,
      @JsonKey(name: 'name') required final String name,
      @JsonKey(name: 'preview_url')
      required final String previewUrl}) = _$AlbumDetailModelImpl;

  factory _AlbumDetailModel.fromJson(Map<String, dynamic> json) =
      _$AlbumDetailModelImpl.fromJson;

  @override
  @JsonKey(name: 'artists')
  List<ArtistSearchModel> get artists;
  @override
  @JsonKey(name: 'duration_ms')
  int get durationMs;
  @override
  @JsonKey(name: 'id')
  String get id;
  @override
  @JsonKey(name: 'name')
  String get name;
  @override
  @JsonKey(name: 'preview_url')
  String get previewUrl;
  @override
  @JsonKey(ignore: true)
  _$$AlbumDetailModelImplCopyWith<_$AlbumDetailModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
