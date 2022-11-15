import 'package:json_annotation/json_annotation.dart';

part 'user.g.dart';

@JsonSerializable()
class User {
  final int id;
  final String name;
  final String email;
  final String phone;
  final DateTime created;
  final DateTime updated;
  final bool emailVerification;
  final bool phoneVerification;

  const User(this.created, this.phone, this.updated, this.emailVerification,
      this.phoneVerification,
      {required this.id, required this.name, required this.email});

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

  Map<String, dynamic> toJson() => _$UserToJson(this);
}
