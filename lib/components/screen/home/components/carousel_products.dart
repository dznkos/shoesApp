
import 'package:appshoes/components/models/product.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:appshoes/components/widgets/card_product.dart';


class CarouselProduct extends StatelessWidget {
  const CarouselProduct({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    List<Producto> listaProductos = [
      Producto(brand: "nike",model: "air-270", price: "150.00",urlImage: "assets/images/1.jpg" ),
      Producto(brand: "nike",model: "air-215", price: "120.00",urlImage: "assets/images/2.jpg" ),
      Producto(brand: "nike",model: "air-394", price: "260.00",urlImage: "assets/images/3.jpg" ),
      Producto(brand: "nike",model: "air-187", price: "185.00",urlImage: "assets/images/4.jpg" ),
    ];


    return Row(
      children: [
        for (var item in listaProductos) 
          CardProduct(product: item ),
      ],
    );
  }
}

