import 'dart:convert';

import 'package:isar/isar.dart';

part 'checkin_model.g.dart';

@Collection()
class CheckInModel {
  Id isarId = Isar.autoIncrement;
  String? status;
  String? checkinCode;
  String? longitude;
  String? latitude;
  DateTime? checkinTime;
  String? customerId;
  String? customerType;
  DateTime? createdAt;
  bool? offline;

  CheckInModel({
    this.status,
    this.checkinTime,
    this.checkinCode,
    this.longitude,
    this.latitude,
    this.customerId,
    this.customerType,
    this.createdAt,
    this.offline,
  });

  factory CheckInModel.fromRawJson(String str) => CheckInModel.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory CheckInModel.fromJson(Map<String, dynamic> json) => CheckInModel(
    status: json["status"],
    checkinTime: json["checkin_time"],
    customerId: json["customer_id"],
    customerType: json["customer_type"],
    createdAt: json["created_at"],
    offline: json["offline"],
  );

  Map<String, dynamic> toJson() => {
    "status": status,
    "checkin_time": checkinTime,
    "customer_id": customerId,
    "customer_type": customerType,
    "created_at": createdAt,
    "offline": offline,
  };
}
