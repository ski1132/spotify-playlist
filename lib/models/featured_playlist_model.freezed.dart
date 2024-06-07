// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'featured_playlist_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

FeaturedPlaylistModel _$FeaturedPlaylistModelFromJson(
    Map<String, dynamic> json) {
  return _FeaturedPlaylistModel.fromJson(json);
}

/// @nodoc
mixin _$FeaturedPlaylistModel {
  @JsonKey(name: 'id')
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'name')
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'description')
  String get description => throw _privateConstructorUsedError;
  @JsonKey(name: 'images')
  List<ImageUrlModel> get imagesList => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FeaturedPlaylistModelCopyWith<FeaturedPlaylistModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FeaturedPlaylistModelCopyWith<$Res> {
  factory $FeaturedPlaylistModelCopyWith(FeaturedPlaylistModel value,
          $Res Function(FeaturedPlaylistModel) then) =
      _$FeaturedPlaylistModelCopyWithImpl<$Res, FeaturedPlaylistModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String id,
      @JsonKey(name: 'name') String name,
      @JsonKey(name: 'description') String description,
      @JsonKey(name: 'images') List<ImageUrlModel> imagesList});
}

/// @nodoc
class _$FeaturedPlaylistModelCopyWithImpl<$Res,
        $Val extends FeaturedPlaylistModel>
    implements $FeaturedPlaylistModelCopyWith<$Res> {
  _$FeaturedPlaylistModelCopyWithImpl(this._value, this._then);

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
    Object? imagesList = null,
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
      imagesList: null == imagesList
          ? _value.imagesList
          : imagesList // ignore: cast_nullable_to_non_nullable
              as List<ImageUrlModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FeaturedPlaylistModelImplCopyWith<$Res>
    implements $FeaturedPlaylistModelCopyWith<$Res> {
  factory _$$FeaturedPlaylistModelImplCopyWith(
          _$FeaturedPlaylistModelImpl value,
          $Res Function(_$FeaturedPlaylistModelImpl) then) =
      __$$FeaturedPlaylistModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String id,
      @JsonKey(name: 'name') String name,
      @JsonKey(name: 'description') String description,
      @JsonKey(name: 'images') List<ImageUrlModel> imagesList});
}

/// @nodoc
class __$$FeaturedPlaylistModelImplCopyWithImpl<$Res>
    extends _$FeaturedPlaylistModelCopyWithImpl<$Res,
        _$FeaturedPlaylistModelImpl>
    implements _$$FeaturedPlaylistModelImplCopyWith<$Res> {
  __$$FeaturedPlaylistModelImplCopyWithImpl(_$FeaturedPlaylistModelImpl _value,
      $Res Function(_$FeaturedPlaylistModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? description = null,
    Object? imagesList = null,
  }) {
    return _then(_$FeaturedPlaylistModelImpl(
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
      imagesList: null == imagesList
          ? _value._imagesList
          : imagesList // ignore: cast_nullable_to_non_nullable
              as List<ImageUrlModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FeaturedPlaylistModelImpl implements _FeaturedPlaylistModel {
  const _$FeaturedPlaylistModelImpl(
      {@JsonKey(name: 'id') required this.id,
      @JsonKey(name: 'name') required this.name,
      @JsonKey(name: 'description') required this.description,
      @JsonKey(name: 'images') required final List<ImageUrlModel> imagesList})
      : _imagesList = imagesList;

  factory _$FeaturedPlaylistModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$FeaturedPlaylistModelImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final String id;
  @override
  @JsonKey(name: 'name')
  final String name;
  @override
  @JsonKey(name: 'description')
  final String description;
  final List<ImageUrlModel> _imagesList;
  @override
  @JsonKey(name: 'images')
  List<ImageUrlModel> get imagesList {
    if (_imagesList is EqualUnmodifiableListView) return _imagesList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_imagesList);
  }

  @override
  String toString() {
    return 'FeaturedPlaylistModel(id: $id, name: $name, description: $description, imagesList: $imagesList)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FeaturedPlaylistModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            const DeepCollectionEquality()
                .equals(other._imagesList, _imagesList));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, description,
      const DeepCollectionEquality().hash(_imagesList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FeaturedPlaylistModelImplCopyWith<_$FeaturedPlaylistModelImpl>
      get copyWith => __$$FeaturedPlaylistModelImplCopyWithImpl<
          _$FeaturedPlaylistModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FeaturedPlaylistModelImplToJson(
      this,
    );
  }
}

abstract class _FeaturedPlaylistModel implements FeaturedPlaylistModel {
  const factory _FeaturedPlaylistModel(
          {@JsonKey(name: 'id') required final String id,
          @JsonKey(name: 'name') required final String name,
          @JsonKey(name: 'description') required final String description,
          @JsonKey(name: 'images')
          required final List<ImageUrlModel> imagesList}) =
      _$FeaturedPlaylistModelImpl;

  factory _FeaturedPlaylistModel.fromJson(Map<String, dynamic> json) =
      _$FeaturedPlaylistModelImpl.fromJson;

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
  @JsonKey(name: 'images')
  List<ImageUrlModel> get imagesList;
  @override
  @JsonKey(ignore: true)
  _$$FeaturedPlaylistModelImplCopyWith<_$FeaturedPlaylistModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
