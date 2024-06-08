// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'image_url_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ImageUrlModelImpl _$$ImageUrlModelImplFromJson(Map<String, dynamic> json) =>
    _$ImageUrlModelImpl(
      height: (json['height'] as num?)?.toInt(),
      width: (json['width'] as num?)?.toInt(),
      url: json['url'] as String,
    );

Map<String, dynamic> _$$ImageUrlModelImplToJson(_$ImageUrlModelImpl instance) =>
    <String, dynamic>{
      'height': instance.height,
      'width': instance.width,
      'url': instance.url,
    };
