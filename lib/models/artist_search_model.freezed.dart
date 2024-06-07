// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'artist_search_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ArtistSearchModel _$ArtistSearchModelFromJson(Map<String, dynamic> json) {
  return _ArtistSearchModel.fromJson(json);
}

/// @nodoc
mixin _$ArtistSearchModel {
  @JsonKey(name: 'id')
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'name')
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'type')
  String get type => throw _privateConstructorUsedError;
  @JsonKey(name: 'uri')
  String get uri => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ArtistSearchModelCopyWith<ArtistSearchModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ArtistSearchModelCopyWith<$Res> {
  factory $ArtistSearchModelCopyWith(
          ArtistSearchModel value, $Res Function(ArtistSearchModel) then) =
      _$ArtistSearchModelCopyWithImpl<$Res, ArtistSearchModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String id,
      @JsonKey(name: 'name') String name,
      @JsonKey(name: 'type') String type,
      @JsonKey(name: 'uri') String uri});
}

/// @nodoc
class _$ArtistSearchModelCopyWithImpl<$Res, $Val extends ArtistSearchModel>
    implements $ArtistSearchModelCopyWith<$Res> {
  _$ArtistSearchModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? type = null,
    Object? uri = null,
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
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      uri: null == uri
          ? _value.uri
          : uri // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ArtistSearchModelImplCopyWith<$Res>
    implements $ArtistSearchModelCopyWith<$Res> {
  factory _$$ArtistSearchModelImplCopyWith(_$ArtistSearchModelImpl value,
          $Res Function(_$ArtistSearchModelImpl) then) =
      __$$ArtistSearchModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String id,
      @JsonKey(name: 'name') String name,
      @JsonKey(name: 'type') String type,
      @JsonKey(name: 'uri') String uri});
}

/// @nodoc
class __$$ArtistSearchModelImplCopyWithImpl<$Res>
    extends _$ArtistSearchModelCopyWithImpl<$Res, _$ArtistSearchModelImpl>
    implements _$$ArtistSearchModelImplCopyWith<$Res> {
  __$$ArtistSearchModelImplCopyWithImpl(_$ArtistSearchModelImpl _value,
      $Res Function(_$ArtistSearchModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? type = null,
    Object? uri = null,
  }) {
    return _then(_$ArtistSearchModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      uri: null == uri
          ? _value.uri
          : uri // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ArtistSearchModelImpl implements _ArtistSearchModel {
  const _$ArtistSearchModelImpl(
      {@JsonKey(name: 'id') required this.id,
      @JsonKey(name: 'name') required this.name,
      @JsonKey(name: 'type') required this.type,
      @JsonKey(name: 'uri') required this.uri});

  factory _$ArtistSearchModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ArtistSearchModelImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final String id;
  @override
  @JsonKey(name: 'name')
  final String name;
  @override
  @JsonKey(name: 'type')
  final String type;
  @override
  @JsonKey(name: 'uri')
  final String uri;

  @override
  String toString() {
    return 'ArtistSearchModel(id: $id, name: $name, type: $type, uri: $uri)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ArtistSearchModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.uri, uri) || other.uri == uri));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, type, uri);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ArtistSearchModelImplCopyWith<_$ArtistSearchModelImpl> get copyWith =>
      __$$ArtistSearchModelImplCopyWithImpl<_$ArtistSearchModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ArtistSearchModelImplToJson(
      this,
    );
  }
}

abstract class _ArtistSearchModel implements ArtistSearchModel {
  const factory _ArtistSearchModel(
          {@JsonKey(name: 'id') required final String id,
          @JsonKey(name: 'name') required final String name,
          @JsonKey(name: 'type') required final String type,
          @JsonKey(name: 'uri') required final String uri}) =
      _$ArtistSearchModelImpl;

  factory _ArtistSearchModel.fromJson(Map<String, dynamic> json) =
      _$ArtistSearchModelImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  String get id;
  @override
  @JsonKey(name: 'name')
  String get name;
  @override
  @JsonKey(name: 'type')
  String get type;
  @override
  @JsonKey(name: 'uri')
  String get uri;
  @override
  @JsonKey(ignore: true)
  _$$ArtistSearchModelImplCopyWith<_$ArtistSearchModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
