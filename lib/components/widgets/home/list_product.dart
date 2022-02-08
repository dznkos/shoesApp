import 'dart:math';

import 'package:appshoes/components/models/product.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ListProduct extends StatefulWidget {
  const ListProduct({
    Key? key,
  }) : super(key: key);

  @override
  State<ListProduct> createState() => _ListProductState();
}

class _ListProductState extends State<ListProduct> {
  @override
  Widget build(BuildContext context) {

     List<Producto> listaProductos = [
      Producto(brand: "adidas",name: 'Adidas ForceBounce 2021',model: "air-270", price: "150.00",urlImage: "assets/images/1c.jpg", isFavorite: false),
      Producto(brand: "adidas",name: 'Adidas ForceBounce 2021',model: "air-215", price: "120.00",urlImage: "assets/images/2c.png", isFavorite: false),
      Producto(brand: "adidas",name: 'Adidas Crazyflight 2020',model: "air-394", price: "260.00",urlImage: "assets/images/3c.jpg", isFavorite: true),
      Producto(brand: "adidas",name: 'Adidas ForceBounce 2021',model: "air-187", price: "185.00",urlImage: "assets/images/4c.jpg", isFavorite: false),
      Producto(brand: "adidas",name: 'Adidas ForceBounce 2021',model: "air-270", price: "150.00",urlImage: "assets/images/5c.jpg", isFavorite: false),
      Producto(brand: "adidas",name: 'Adidas ForceBounce 2021',model: "air-215", price: "120.00",urlImage: "assets/images/6c.jpg", isFavorite: false),
      Producto(brand: "adidas",name: 'Adidas ForceBounce 2021',model: "air-394", price: "260.00",urlImage: "assets/images/7c.jpg", isFavorite: false),
      Producto(brand: "adidas",name: 'Adidas Essence 2021'    ,model: "air-187", price: "54.00",urlImage: "assets/images/8c.jpg", isFavorite: false),
      Producto(brand: "adidas",name: 'Adidas Crazyflight 2021',model: "air-187", price: "126.00",urlImage: "assets/images/9c.jpg", isFavorite: false),
      Producto(brand: "adidas",name: 'Adidas Crazyflight 2022',model: "air-187", price: "126.00",urlImage: "assets/images/10c.jpg", isFavorite: false),
      Producto(brand: "adidas",name: 'Adidas Crazyflight Bounce 3',model: "air-187", price: "80.00",urlImage: "assets/images/11c.jpg", isFavorite: false),
      Producto(brand: "adidas",name: 'Adidas Crazyflight 2021',model: "air-187", price: "126.00",urlImage: "assets/images/12c.jpg", isFavorite: false),
      Producto(brand: "adidas",name: 'Adidas ForceBounce 2021',model: "air-270", price: "150.00",urlImage: "assets/images/5c.jpg", isFavorite: false),
      Producto(brand: "adidas",name: 'Adidas ForceBounce 2021',model: "air-215", price: "120.00",urlImage: "assets/images/6c.jpg", isFavorite: false),
      Producto(brand: "adidas",name: 'Adidas ForceBounce 2021',model: "air-394", price: "260.00",urlImage: "assets/images/7c.jpg", isFavorite: false),
      Producto(brand: "adidas",name: 'Adidas Essence 2021'    ,model: "air-187", price: "54.00",urlImage: "assets/images/8c.jpg", isFavorite: false),
      Producto(brand: "adidas",name: 'Adidas Crazyflight 2021',model: "air-187", price: "126.00",urlImage: "assets/images/9c.jpg", isFavorite: false),
      
    ];

    return Row(
      children: 
        listaProductos.map((item) => 
          Container(
                margin: EdgeInsets.symmetric(horizontal: 10),
                height: 150,
                width: 180,                
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: [
                    BoxShadow(
                      color: Color(0xFFE6E8EE),
                      offset: Offset(1,2),
                      blurRadius: 1
                    )
                  ]
                ),
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Positioned(
                      top: 10,
                      left: 8,
                      child: RotatedBox(
                        quarterTurns: -1,
                        child: Container(                    
                          width: 60,
                          height: 15,
                          color: Colors.pink[300],
                          child: Center(child: Text('NEW', style: TextStyle(fontSize: 11, color: Colors.white, fontWeight: FontWeight.w500),)),
                        ),
                      ),
                    ),                    
                    Container(                        
                      child: Transform(
                        alignment: Alignment.center,
                        transform: Matrix4.rotationY(pi),
                        child: Image.asset(item.urlImage,
                                ),
                      ),
                    ),
                    Positioned(
                      top: -5,
                      right: -5,
                      child: CupertinoButton(
                        child: (item.isFavorite) 
                        ? SvgPicture.asset("assets/icons/heartblack.svg",height: 18,color: Colors.green)
                        : SvgPicture.asset("assets/icons/heart.svg",
                        height: 16,
                        color: Colors.black,), 
                        onPressed: (){
                          print('favorite: state');
                          setState(() {                  
                            item.isFavorite = !item.isFavorite;
                            print(item.isFavorite);
                          });
                        }) 
                    ),
                    Positioned(
                      bottom: 5,
                      right: 0,
                      left: 0,
                      child: Column(
                        children: [
                          Text('${item.name?.toUpperCase()}', style: TextStyle(fontSize: 11,fontWeight: FontWeight.w700) ),
                          Text('\$${item.price}', style: TextStyle(fontSize: 12) ),
                        ],
                      )                      
                    ),
                  ]                
                ),
              ),)
        .toList()

        
      
    );
  }
}
