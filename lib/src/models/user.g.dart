// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

User _$UserFromJson(Map<String, dynamic> json) => User(
      DateTime.parse(json['created'] as String),
      json['phone'] as String,
      DateTime.parse(json['updated'] as String),
      json['emailVerification'] as bool,
      json['phoneVerification'] as bool,
      DateTime.parse(json['registration'] as String),
      json['status'] as bool,
      id: json['id'] as String,
      name: json['name'] as String,
      email: json['email'] as String,
    );

Map<String, dynamic> _$UserToJson(User instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'email': instance.email,
      'phone': instance.phone,
      'created': instance.created.toIso8601String(),
      'updated': instance.updated.toIso8601String(),
      'registration': instance.registration.toIso8601String(),
      'emailVerification': instance.emailVerification,
      'phoneVerification': instance.phoneVerification,
      'status': instance.status,
    };
