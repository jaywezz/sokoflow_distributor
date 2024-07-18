import 'dart:convert';

import 'package:isar/isar.dart';

part 'leads_model.g.dart';


List<LeadsModel> leadsFromJson(dynamic str) => List<LeadsModel>.from(
  (str).map(
        (e) => LeadsModel.fromJson(e),
  ),
);

@Collection()
class LeadsModel {
  Id? id = Isar.autoIncrement;
  int? customerId;
  String? customerName;
  String? userCode;
  String? isWillingToJoin;
  String? account;
  String? approval;
  String? address;
  String? latitude;
  String? longitude;
  String? contactPerson;
  String? customerGroup;
  String? priceGroup;
  String? route;
  String? routeCode;
  String? status;
  String? email;
  String? image;
  String? phoneNumber;
  String? businessCode;
  String? createdBy;
  String? updatedBy;
  DateTime? createdAt;
  DateTime? updatedAt;
  String? leadType;
  String? customerType;
  int? isProspect;
  String? approvalProspectStatus;
  String? prospectStatus;
  int? regionId;
  int? subregionId;
  String? idNumber;
  String? productGroup;
  String? leadSource;
  String? action;
  String? kraPin;
  String? productTypeId;
  String? quantityId;
  int? isCold;
  String? reasonIsCold;
  String? institutionName;
  int? customerGroupId;
  int? productId;
  DateTime? followUpDate;
  bool offline;
  String? routeName;
  String? errors;
  bool? converted;

  LeadsModel({
    this.id,
    this.customerId,
    this.customerName,
    this.userCode,
    this.account,
    this.approval,
    this.address,
    this.latitude,
    this.longitude,
    this.contactPerson,
    this.customerGroup,
    this.priceGroup,
    this.route,
    this.routeCode,
    this.status,
    this.email,
    this.image,
    this.phoneNumber,
    this.businessCode,
    this.isWillingToJoin,
    this.createdBy,
    this.updatedBy,
    this.createdAt,
    this.updatedAt,
    this.leadType,
    this.customerType,
    this.isProspect,
    this.approvalProspectStatus,
    this.prospectStatus,
    this.regionId,
    this.subregionId,
    this.idNumber,
    this.productGroup,
    this.leadSource,
    this.action,
    this.kraPin,
    this.productTypeId,
    this.quantityId,
    this.isCold,
    this.reasonIsCold,
    this.institutionName,
    this.customerGroupId,
    this.productId,
    this.followUpDate,
    this.offline = false,
    this.routeName,
    this.errors,
    this.converted = false,
  });

  factory LeadsModel.fromRawJson(String str) => LeadsModel.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory LeadsModel.fromJson(Map<String, dynamic> json) => LeadsModel(
    id: json["id"],
    customerName: json["customer_name"],
    userCode: json["user_code"],
    account: json["account"],
    approval: json["approval"],
    address: json["address"],
    isWillingToJoin: json["willing_join"],
    latitude: json["latitude"],
    longitude: json["longitude"],
    contactPerson: json["contact_person"],
    customerGroup: json["customer_group"],
    priceGroup: json["price_group"],
    route: json["route"],
    routeCode: json["route_code"],
    status: json["status"],
    email: json["email"],
    image: json["image"],
    phoneNumber: json["phone_number"],
    businessCode: json["business_code"],
    createdBy: json["created_by"],
    updatedBy: json["updated_by"],
    createdAt: json["created_at"] == null ? null : DateTime.parse(json["created_at"]),
    updatedAt: json["updated_at"] == null ? null : DateTime.parse(json["updated_at"]),
    leadType: json["lead_type"],
    customerType: json["customer_type"],
    isProspect: json["is_prospect"],
    approvalProspectStatus: json["approval_prospect_status"],
    prospectStatus: json["prospect_status"],
    regionId: json["region_id"],
    subregionId: json["subregion_id"],
    idNumber: json["id_number"],
    productGroup: json["product_group"],
    leadSource: json["lead_source"],
    action: json["action"],
    kraPin: json["kra_pin"],
    productTypeId: json["product_type_id"],
    quantityId: json["quantity_id"],
    isCold: json["is_cold"],
    reasonIsCold: json["reason_is_cold"],
    institutionName: json["institution_name"],
    customerGroupId: json["customer_group_id"],
    productId: json["product_id"],
    offline: false,
    routeName: json["route_code"]
  );

  Map<String, String> toJson() => {
    "lead_type": "Individual",
    "phone_number": phoneNumber!,
    "alternative_phone": phoneNumber!,
    "route_code": routeName!,
    "lead_source": "Self Sourced",
    "action": action??"None",
    "contact_person": customerName!,
    "latitude": latitude!,
    "longitude": longitude!,
    "address": address??"None",
    "institution_name": customerName!,
    "willing_join": isWillingToJoin??"None",
    "follow_up_date":followUpDate != null?followUpDate!.toString():"",
    "time": followUpDate != null?"${followUpDate!.hour}:${followUpDate!.minute}":"",
    "region_id": regionId!.toString(),
    "subregion_id": subregionId!.toString(),
    "created_at": createdAt.toString()
  };
}

// {
// "lead_type": "Individual",
// "phone_number": "0711000004",
// "route_code": "17",
// "email": "test@gmail.com",
// "lead_source": "Self Sourced",
// "contact_person": "Brian Opiyo",
// "address": "PY34+F86, South C, Nairobi, Kenya",
// "institution_name": "SoftGenus",
// "alternative_phone": "07364892846",
// "estateName": "Ruiru Ndani",
// "region_id":1,
// "subregion_id":2,
// "route_id":2,
// "area_name":"hapa kwa kamaa",
// "houseNo": "23-h-2",
// "longitude":"0.392739273",
// "latitude":"30.23920323",
// "follow_up_date":"2024-03-18",
// "action": "Schedule call",
// "willing_join":"yes"
// }