import 'package:json_annotation/json_annotation.dart';

part 'profile.g.dart';

@JsonSerializable()
class Profile {
  final int id;
  final int userId;
  final String location;
  final bool active;
  final bool alerts;
  final DateTime created;

  const Profile(this.created,
      {required this.id,
      required this.userId,
      required this.location,
      required this.active,
      required this.alerts});

  factory Profile.fromJson(Map<String, dynamic> json) =>
      _$ProfileFromJson(json);

  Map<String, dynamic> toJson() => _$ProfileToJson(this);
}
