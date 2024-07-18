import 'dart:convert';

import 'package:isar/isar.dart';

List<ProductsModel> productsFromJson(dynamic str) => List<ProductsModel>.from(
  (str).map(
        (e) => ProductsModel.fromJson(e),
  ),
);
class ProductsModel {
  int? id;
  String? price;
  String? sellingUnits;
  String? itemCode;
  String? productName;
  int? productCategoryId;
  String? warehouseCode;
  int? qty;

  ProductsModel({
    this.id,
    this.price,
    this.sellingUnits,
    this.itemCode,
    this.productName,
    this.productCategoryId,
    this.warehouseCode,
    this.qty
  });

  factory ProductsModel.fromRawJson(String str) => ProductsModel.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory ProductsModel.fromJson(Map<String, dynamic> json) => ProductsModel(
    id: json["id"],
    price: json["price"],
    sellingUnits: json["selling_units"],
    itemCode: json["item_code"],
    productName: json["product_name"],
    productCategoryId: json["product_category_id"],
    warehouseCode: json["warehouse_code"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "price": price,
    "selling_units": sellingUnits,
    "item_code": itemCode,
    "product_name": productName,
    "product_category_id": productCategoryId,
    "warehouse_code": warehouseCode,
  };
}
