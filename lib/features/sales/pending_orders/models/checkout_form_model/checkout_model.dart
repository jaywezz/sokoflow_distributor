import 'dart:convert';

import 'package:isar/isar.dart';

part 'checkout_model.g.dart';

@Collection()
class CheckOutModel {
  Id isarId = Isar.autoIncrement;
  String? didLeadMakeOrder;
  String? reasonForNoOrder;
  String? potentialCompetitors;
  String? leadStatus;
  String? nextStep;

  CheckOutModel({
    this.didLeadMakeOrder,
    this.reasonForNoOrder,
    this.potentialCompetitors,
    this.leadStatus,
    this.nextStep,
  });

  factory CheckOutModel.fromRawJson(String str) => CheckOutModel.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory CheckOutModel.fromJson(Map<String, dynamic> json) => CheckOutModel(
    didLeadMakeOrder: json["did_lead_make_order"],
    reasonForNoOrder: json["reason_for_no_order"],
    potentialCompetitors: json["potential_competitors"],
    leadStatus: json["lead_status"],
    nextStep: json["next_step"],
  );

  Map<String, dynamic> toJson() => {
    "did_lead_make_order": didLeadMakeOrder,
    "reason_for_no_order": reasonForNoOrder,
    "potential_competitors": potentialCompetitors,
    "lead_status": leadStatus,
    "next_step": nextStep,
  };
}
