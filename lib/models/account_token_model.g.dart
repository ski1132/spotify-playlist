// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'account_token_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AccountTokenModelImpl _$$AccountTokenModelImplFromJson(
        Map<String, dynamic> json) =>
    _$AccountTokenModelImpl(
      accessToken: json['access_token'] as String,
      tokenType: json['token_type'] as String,
      expiresIn: (json['expires_in'] as num).toInt(),
    );

Map<String, dynamic> _$$AccountTokenModelImplToJson(
        _$AccountTokenModelImpl instance) =>
    <String, dynamic>{
      'access_token': instance.accessToken,
      'token_type': instance.tokenType,
      'expires_in': instance.expiresIn,
    };
