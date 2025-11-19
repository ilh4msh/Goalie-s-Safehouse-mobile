// To parse this JSON data, do
//
//     final productEntry = productEntryFromJson(jsonString);

import 'dart:convert';

List<ProductEntry> productEntryFromJson(String str) => List<ProductEntry>.from(json.decode(str).map((x) => ProductEntry.fromJson(x)));

String productEntryToJson(List<ProductEntry> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class ProductEntry {
    String id;
    int userId;
    String name;
    String description;
    String category;
    String thumbnail;
    int price;
    int stock;
    String size;
    int productViews;
    DateTime createdAt;

    ProductEntry({
        required this.id,
        required this.userId,
        required this.name,
        required this.description,
        required this.category,
        required this.thumbnail,
        required this.price,
        required this.stock,
        required this.size,
        required this.productViews,
        required this.createdAt,
    });

    factory ProductEntry.fromJson(Map<String, dynamic> json) => ProductEntry(
        id: json["id"],
        userId: json["user_id"],
        name: json["name"],
        description: json["description"],
        category: json["category"],
        thumbnail: json["thumbnail"],
        price: json["price"],
        stock: json["stock"],
        size: json["size"],
        productViews: json["product_views"],
        createdAt: DateTime.parse(json["created_at"]),
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "user_id": userId,
        "name": name,
        "description": description,
        "category": category,
        "thumbnail": thumbnail,
        "price": price,
        "stock": stock,
        "size": size,
        "product_views": productViews,
        "created_at": createdAt.toIso8601String(),
    };
}
