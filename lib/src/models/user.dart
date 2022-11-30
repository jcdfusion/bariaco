import 'package:json_annotation/json_annotation.dart';

part 'user.g.dart';

@JsonSerializable()
class User {
  final String id;
  final String name;
  final String email;
  final String phone;
  final DateTime created;
  final DateTime updated;
  final DateTime registration;
  final bool emailVerification;
  final bool phoneVerification;
  final bool status;

  const User(this.created, this.phone, this.updated, this.emailVerification,
      this.phoneVerification, this.registration, this.status,
      {required this.id, required this.name, required this.email});

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

  Map<String, dynamic> toJson() => _$UserToJson(this);
}
