import 'dart:convert';

import 'package:isar/isar.dart';

part 'user_model.g.dart';

@Collection()
class User {
  Id isarId = Isar.autoIncrement;
  int? id;
  String? userCode;
  String? accessToken;
  String? name;
  String? email;
  DateTime? emailVerifiedAt;
  String? businessCode;
  String? phoneNumber;
  String? location;
  String? gender;
  String? accountType;
  String? status;
  String? fcmToken;
  String? adminId;
  String? routeCode;
  DateTime? createdAt;
  DateTime? updatedAt;
  int? regionId;

  User({
    this.id,
    this.userCode,
    this.name,
    this.email,
    this.emailVerifiedAt,
    this.businessCode,
    this.phoneNumber,
    this.location,
    this.gender,
    this.accountType,
    this.status,
    this.fcmToken,
    this.adminId,
    this.routeCode,
    this.createdAt,
    this.updatedAt,
    this.regionId,
  });

  factory User.fromRawJson(String str) => User.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory User.fromJson(Map<String, dynamic> json) => User(
    id: json["id"],
    userCode: json["user_code"],
    name: json["name"],
    email: json["email"],
    emailVerifiedAt: json["email_verified_at"] == null ? null : DateTime.parse(json["email_verified_at"]),
    businessCode: json["business_code"],
    phoneNumber: json["phone_number"],
    location: json["location"],
    gender: json["gender"],
    accountType: json["account_type"],
    status: json["status"],
    fcmToken: json["fcm_token"],
    adminId: json["admin_id"],
    routeCode: json["route_code"].toString(),
    createdAt: json["created_at"] == null ? null : DateTime.parse(json["created_at"]),
    updatedAt: json["updated_at"] == null ? null : DateTime.parse(json["updated_at"]),
    regionId: json["region_id"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "user_code": userCode,
    "name": name,
    "email": email,
    "email_verified_at": emailVerifiedAt?.toIso8601String(),
    "business_code": businessCode,
    "phone_number": phoneNumber,
    "location": location,
    "gender": gender,
    "account_type": accountType,
    "status": status,
    "fcm_token": fcmToken,
    "admin_id": adminId,
    "route_code": routeCode,
    "created_at": createdAt?.toIso8601String(),
    "updated_at": updatedAt?.toIso8601String(),
    "region_id": regionId,
  };
}
