// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'image_url_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ImageUrlModel _$ImageUrlModelFromJson(Map<String, dynamic> json) {
  return _ImageUrlModel.fromJson(json);
}

/// @nodoc
mixin _$ImageUrlModel {
  @JsonKey(name: 'height')
  int? get height => throw _privateConstructorUsedError;
  @JsonKey(name: 'width')
  int? get width => throw _privateConstructorUsedError;
  @JsonKey(name: 'url')
  String get url => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ImageUrlModelCopyWith<ImageUrlModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ImageUrlModelCopyWith<$Res> {
  factory $ImageUrlModelCopyWith(
          ImageUrlModel value, $Res Function(ImageUrlModel) then) =
      _$ImageUrlModelCopyWithImpl<$Res, ImageUrlModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'height') int? height,
      @JsonKey(name: 'width') int? width,
      @JsonKey(name: 'url') String url});
}

/// @nodoc
class _$ImageUrlModelCopyWithImpl<$Res, $Val extends ImageUrlModel>
    implements $ImageUrlModelCopyWith<$Res> {
  _$ImageUrlModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? height = freezed,
    Object? width = freezed,
    Object? url = null,
  }) {
    return _then(_value.copyWith(
      height: freezed == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int?,
      width: freezed == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as int?,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ImageUrlModelImplCopyWith<$Res>
    implements $ImageUrlModelCopyWith<$Res> {
  factory _$$ImageUrlModelImplCopyWith(
          _$ImageUrlModelImpl value, $Res Function(_$ImageUrlModelImpl) then) =
      __$$ImageUrlModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'height') int? height,
      @JsonKey(name: 'width') int? width,
      @JsonKey(name: 'url') String url});
}

/// @nodoc
class __$$ImageUrlModelImplCopyWithImpl<$Res>
    extends _$ImageUrlModelCopyWithImpl<$Res, _$ImageUrlModelImpl>
    implements _$$ImageUrlModelImplCopyWith<$Res> {
  __$$ImageUrlModelImplCopyWithImpl(
      _$ImageUrlModelImpl _value, $Res Function(_$ImageUrlModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? height = freezed,
    Object? width = freezed,
    Object? url = null,
  }) {
    return _then(_$ImageUrlModelImpl(
      height: freezed == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int?,
      width: freezed == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as int?,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ImageUrlModelImpl implements _ImageUrlModel {
  const _$ImageUrlModelImpl(
      {@JsonKey(name: 'height') required this.height,
      @JsonKey(name: 'width') required this.width,
      @JsonKey(name: 'url') required this.url});

  factory _$ImageUrlModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ImageUrlModelImplFromJson(json);

  @override
  @JsonKey(name: 'height')
  final int? height;
  @override
  @JsonKey(name: 'width')
  final int? width;
  @override
  @JsonKey(name: 'url')
  final String url;

  @override
  String toString() {
    return 'ImageUrlModel(height: $height, width: $width, url: $url)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ImageUrlModelImpl &&
            (identical(other.height, height) || other.height == height) &&
            (identical(other.width, width) || other.width == width) &&
            (identical(other.url, url) || other.url == url));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, height, width, url);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ImageUrlModelImplCopyWith<_$ImageUrlModelImpl> get copyWith =>
      __$$ImageUrlModelImplCopyWithImpl<_$ImageUrlModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ImageUrlModelImplToJson(
      this,
    );
  }
}

abstract class _ImageUrlModel implements ImageUrlModel {
  const factory _ImageUrlModel(
      {@JsonKey(name: 'height') required final int? height,
      @JsonKey(name: 'width') required final int? width,
      @JsonKey(name: 'url') required final String url}) = _$ImageUrlModelImpl;

  factory _ImageUrlModel.fromJson(Map<String, dynamic> json) =
      _$ImageUrlModelImpl.fromJson;

  @override
  @JsonKey(name: 'height')
  int? get height;
  @override
  @JsonKey(name: 'width')
  int? get width;
  @override
  @JsonKey(name: 'url')
  String get url;
  @override
  @JsonKey(ignore: true)
  _$$ImageUrlModelImplCopyWith<_$ImageUrlModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
