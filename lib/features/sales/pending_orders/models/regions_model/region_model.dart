import 'dart:convert';

import 'package:isar/isar.dart';
part 'region_model.g.dart';

List<RegionModel> regionsFromJson(dynamic str) => List<RegionModel>.from(
  (str).map(
        (e) => RegionModel.fromJson(e),
  ),
);

@Collection()
class RegionModel {
  Id? id;
  int? regionId;
  String? name;
  String? primaryKey;
  DateTime? createdAt;
  DateTime? updatedAt;
  List<Subregion>? subregions;
  int? subregionId;

  RegionModel({
    this.id,
    this.regionId,
    this.name,
    this.primaryKey,
    this.createdAt,
    this.updatedAt,
    this.subregions,
    this.subregionId,
  });

  factory RegionModel.fromRawJson(String str) => RegionModel.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory RegionModel.fromJson(Map<String, dynamic> json) => RegionModel(
    regionId: json["id"],
    name: json["name"],
    primaryKey: json["primary_key"],
    createdAt: json["created_at"] == null ? null : DateTime.parse(json["created_at"]),
    updatedAt: json["updated_at"] == null ? null : DateTime.parse(json["updated_at"]),
    subregions: json["subregions"] == null ? [] : List<Subregion>.from(json["subregions"]!.map((x) => Subregion.fromJson(x))),
    subregionId: json["subregion_id"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "name": name,
    "primary_key": primaryKey,
    "created_at": createdAt?.toIso8601String(),
    "updated_at": updatedAt?.toIso8601String(),
    "subregions": subregions == null ? [] : List<dynamic>.from(subregions!.map((x) => x.toJson())),
    "subregion_id": subregionId,
  };
}

@embedded
class Subregion {
  int? subRegionId;
  int? regionId;
  String? name;
  String? primaryKey;
  DateTime? createdAt;
  DateTime? updatedAt;
  List<Area>? areas;

  Subregion({
    this.subRegionId,
    this.regionId,
    this.name,
    this.primaryKey,
    this.createdAt,
    this.updatedAt,
    this.areas,
  });

  factory Subregion.fromRawJson(String str) => Subregion.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Subregion.fromJson(Map<String, dynamic> json) => Subregion(
    subRegionId: json["id"],
    regionId: json["region_id"],
    name: json["name"],
    primaryKey: json["primary_key"],
    createdAt: json["created_at"] == null ? null : DateTime.parse(json["created_at"]),
    updatedAt: json["updated_at"] == null ? null : DateTime.parse(json["updated_at"]),
    areas: json["areas"] == null ? [] : List<Area>.from(json["areas"]!.map((x) => Area.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "region_id": regionId,
    "name": name,
    "primary_key": primaryKey,
    "created_at": createdAt?.toIso8601String(),
    "updated_at": updatedAt?.toIso8601String(),
    "areas": areas == null ? [] : List<dynamic>.from(areas!.map((x) => x.toJson())),
  };
}

@embedded
class Area {
  int? areaId;
  int? subregionId;
  String? name;
  String? primaryKey;
  DateTime? createdAt;
  DateTime? updatedAt;

  Area({
    this.areaId,
    this.subregionId,
    this.name,
    this.primaryKey,
    this.createdAt,
    this.updatedAt,
  });

  factory Area.fromRawJson(String str) => Area.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Area.fromJson(Map<String, dynamic> json) => Area(
    areaId: json["id"],
    subregionId: json["subregion_id"],
    name: json["name"],
    primaryKey: json["primary_key"],
    createdAt: json["created_at"] == null ? null : DateTime.parse(json["created_at"]),
    updatedAt: json["updated_at"] == null ? null : DateTime.parse(json["updated_at"]),
  );

  Map<String, dynamic> toJson() => {
    "subregion_id": subregionId,
    "name": name,
    "primary_key": primaryKey,
    "created_at": createdAt?.toIso8601String(),
    "updated_at": updatedAt?.toIso8601String(),
  };
}
