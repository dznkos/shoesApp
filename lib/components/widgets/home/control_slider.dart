import 'package:appshoes/components/models/product.dart';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'card_product.dart';

class ControlSliderMecanic extends StatefulWidget {
  const ControlSliderMecanic({
    Key? key,    
  }) : super(key: key);

  @override
  State<ControlSliderMecanic> createState() => _ControlSliderMecanicState();

  
}

class _ControlSliderMecanicState extends State<ControlSliderMecanic> {
  
 //final CarouselController _controller = CarouselController();

   List<Producto> listaProductos = [
      Producto(brand: "adidas",name: 'Adidas ForceBounce 2021',model: "air-270", price: "150.00",urlImage: "assets/images/1.png", isFavorite: false),
      Producto(brand: "adidas",name: 'Adidas ForceBounce 2021',model: "air-215", price: "120.00",urlImage: "assets/images/2.png", isFavorite: false),
      Producto(brand: "adidas",name: 'Adidas Crazyflight 2020',model: "air-394", price: "260.00",urlImage: "assets/images/3.png", isFavorite: false),
      Producto(brand: "adidas",name: 'Adidas ForceBounce 2021',model: "air-187", price: "185.00",urlImage: "assets/images/4.png", isFavorite: false),
      Producto(brand: "adidas",name: 'Adidas ForceBounce 2021',model: "air-270", price: "150.00",urlImage: "assets/images/5.png", isFavorite: false),
      Producto(brand: "adidas",name: 'Adidas ForceBounce 2021',model: "air-215", price: "120.00",urlImage: "assets/images/6.png", isFavorite: false),
      Producto(brand: "adidas",name: 'Adidas ForceBounce 2021',model: "air-394", price: "260.00",urlImage: "assets/images/7.png", isFavorite: false),
      Producto(brand: "adidas",name: 'Adidas Essence 2021'    ,model: "air-187", price: "54.00",urlImage: "assets/images/8.png", isFavorite: false),
      Producto(brand: "adidas",name: 'Adidas Crazyflight 2021',model: "air-187", price: "126.00",urlImage: "assets/images/9.png", isFavorite: false),
      Producto(brand: "adidas",name: 'Adidas Crazyflight 2022',model: "air-187", price: "126.00",urlImage: "assets/images/10.png", isFavorite: false),
      Producto(brand: "adidas",name: 'Adidas Crazyflight Bounce 3',model: "air-187", price: "80.00",urlImage: "assets/images/11.png", isFavorite: false),
      Producto(brand: "adidas",name: 'Adidas Crazyflight 2021',model: "air-187", price: "126.00",urlImage: "assets/images/12.png", isFavorite: false),
    ];

  // void _getControlCarousel(){
  //   if(kIsWeb) {
  //     print('Corriendo en Flutter Web'); 
  //   }else{
  //     print('Corriendo en Flutter Mobile');   
  //   }
  // }


  @override
  Widget build(BuildContext context) {

    final List<Widget> imageSliders = listaProductos
    .map((item) => Container(
          child: CardProduct(product: item,),
        ))
    .toList();
    
    // _getControlCarousel();

    return CarouselSlider(
      items: imageSliders,
      options: CarouselOptions(
        //disableCenter: false,
        enableInfiniteScroll: true,
        viewportFraction: kIsWeb ? 0.4 : 1,
        enlargeCenterPage: true,
        height: 0.48.sh),
      //carouselController: _controller,
    );
  }
}
