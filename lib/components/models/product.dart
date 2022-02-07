import 'dart:convert';

Producto productoFromJson(String str) => Producto.fromJson(json.decode(str));

String productoToJson(Producto data) => json.encode(data.toJson());

class Producto {
    Producto({
        required this.brand,
        required this.name,
        required this.model,
        required this.price,
        required this.urlImage,
        required this.isFavorite,
    });

    String brand;
    String? name;
    String model;
    String price;
    String urlImage;
    bool isFavorite;

    factory Producto.fromJson(Map<String, dynamic> json) => Producto(
        brand: json["brand"],
        name: json["name"],
        model: json["model"],
        price: json["price"],
        urlImage: json["url_image"],
        isFavorite: json["isFavorite"],
    );

    Map<String, dynamic> toJson() => {
        "brand": brand,
        "name": name,
        "model": model,
        "price": price,
        "url_image": urlImage,
        "isFavorite": isFavorite,
    };
}
