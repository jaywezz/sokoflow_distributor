// To parse this JSON data, do
//
//     final visitsModel = visitsModelFromJson(jsonString);

import 'dart:convert';
List<UserVisitsModel> visitsListFromJson(dynamic str) => List<UserVisitsModel>.from(
  (str).map(
        (e) =>UserVisitsModel.fromJson(e),
  ),
);


class UserVisitsModel {
  int? id;
  String? code;
  String? name;
  String? customerName;
  String? startTime;
  String? stopTime;
  int? durationSeconds;
  DateTime? formattedDate;

  UserVisitsModel({
    this.id,
    this.code,
    this.name,
    this.customerName,
    this.startTime,
    this.stopTime,
    this.durationSeconds,
    this.formattedDate,
  });

  factory UserVisitsModel.fromJson(Map<String, dynamic> json) => UserVisitsModel(
    id: json["id"],
    code: json["code"],
    name: json["name"],
    customerName: json["customer_name"],
    startTime: json["start_time"],
    stopTime: json["stop_time"],
    durationSeconds: json["duration_seconds"],
    formattedDate: DateTime.parse(json["formatted_date"]),
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "code": code,
    "name": name,
    "customer_name": customerName,
    "start_time": startTime,
    "stop_time": stopTime,
    "duration_seconds": durationSeconds,
    "formatted_date": formattedDate,
  };
}
