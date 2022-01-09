import 'dart:convert';

Producto productoFromJson(String str) => Producto.fromJson(json.decode(str));

String productoToJson(Producto data) => json.encode(data.toJson());

class Producto {
    Producto({
        required this.brand,
        required this.model,
        required this.price,
        required this.urlImage,
    });

    String brand;
    String model;
    String price;
    String urlImage;

    factory Producto.fromJson(Map<String, dynamic> json) => Producto(
        brand: json["brand"],
        model: json["model"],
        price: json["price"],
        urlImage: json["url_image"],
    );

    Map<String, dynamic> toJson() => {
        "brand": brand,
        "model": model,
        "price": price,
        "url_image": urlImage,
    };
}
