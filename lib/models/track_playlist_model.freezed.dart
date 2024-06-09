// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'track_playlist_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TrackPlaylistModel _$TrackPlaylistModelFromJson(Map<String, dynamic> json) {
  return _TrackPlaylistModel.fromJson(json);
}

/// @nodoc
mixin _$TrackPlaylistModel {
  @JsonKey(name: 'href')
  String get href => throw _privateConstructorUsedError;
  @JsonKey(name: 'total')
  int get total => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TrackPlaylistModelCopyWith<TrackPlaylistModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TrackPlaylistModelCopyWith<$Res> {
  factory $TrackPlaylistModelCopyWith(
          TrackPlaylistModel value, $Res Function(TrackPlaylistModel) then) =
      _$TrackPlaylistModelCopyWithImpl<$Res, TrackPlaylistModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'href') String href, @JsonKey(name: 'total') int total});
}

/// @nodoc
class _$TrackPlaylistModelCopyWithImpl<$Res, $Val extends TrackPlaylistModel>
    implements $TrackPlaylistModelCopyWith<$Res> {
  _$TrackPlaylistModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? href = null,
    Object? total = null,
  }) {
    return _then(_value.copyWith(
      href: null == href
          ? _value.href
          : href // ignore: cast_nullable_to_non_nullable
              as String,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TrackPlaylistModelImplCopyWith<$Res>
    implements $TrackPlaylistModelCopyWith<$Res> {
  factory _$$TrackPlaylistModelImplCopyWith(_$TrackPlaylistModelImpl value,
          $Res Function(_$TrackPlaylistModelImpl) then) =
      __$$TrackPlaylistModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'href') String href, @JsonKey(name: 'total') int total});
}

/// @nodoc
class __$$TrackPlaylistModelImplCopyWithImpl<$Res>
    extends _$TrackPlaylistModelCopyWithImpl<$Res, _$TrackPlaylistModelImpl>
    implements _$$TrackPlaylistModelImplCopyWith<$Res> {
  __$$TrackPlaylistModelImplCopyWithImpl(_$TrackPlaylistModelImpl _value,
      $Res Function(_$TrackPlaylistModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? href = null,
    Object? total = null,
  }) {
    return _then(_$TrackPlaylistModelImpl(
      href: null == href
          ? _value.href
          : href // ignore: cast_nullable_to_non_nullable
              as String,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TrackPlaylistModelImpl implements _TrackPlaylistModel {
  const _$TrackPlaylistModelImpl(
      {@JsonKey(name: 'href') required this.href,
      @JsonKey(name: 'total') required this.total});

  factory _$TrackPlaylistModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$TrackPlaylistModelImplFromJson(json);

  @override
  @JsonKey(name: 'href')
  final String href;
  @override
  @JsonKey(name: 'total')
  final int total;

  @override
  String toString() {
    return 'TrackPlaylistModel(href: $href, total: $total)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TrackPlaylistModelImpl &&
            (identical(other.href, href) || other.href == href) &&
            (identical(other.total, total) || other.total == total));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, href, total);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TrackPlaylistModelImplCopyWith<_$TrackPlaylistModelImpl> get copyWith =>
      __$$TrackPlaylistModelImplCopyWithImpl<_$TrackPlaylistModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TrackPlaylistModelImplToJson(
      this,
    );
  }
}

abstract class _TrackPlaylistModel implements TrackPlaylistModel {
  const factory _TrackPlaylistModel(
          {@JsonKey(name: 'href') required final String href,
          @JsonKey(name: 'total') required final int total}) =
      _$TrackPlaylistModelImpl;

  factory _TrackPlaylistModel.fromJson(Map<String, dynamic> json) =
      _$TrackPlaylistModelImpl.fromJson;

  @override
  @JsonKey(name: 'href')
  String get href;
  @override
  @JsonKey(name: 'total')
  int get total;
  @override
  @JsonKey(ignore: true)
  _$$TrackPlaylistModelImplCopyWith<_$TrackPlaylistModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
