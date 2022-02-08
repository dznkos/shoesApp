import 'dart:math';

import 'package:appshoes/components/models/product.dart';
import 'package:appshoes/components/screen/bag/bag_screen.dart';
import 'package:appshoes/components/widgets/products/custom_sizebutton.dart';
import 'package:appshoes/components/widgets/products/custom_sizecountrybutton.dart';
import 'package:appshoes/components/widgets/products/title_product.dart';
import 'package:basic_utils/basic_utils.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class ProductScreen extends StatelessWidget {
  const ProductScreen({ Key? key, required this.item }) : super(key: key);

  final Producto item;

  @override
  Widget build(BuildContext context) {

    final List<String> listFotos = [
    "assets/images/d0.jpg",
    "assets/images/d3.jpg",
    "assets/images/d1.jpg",
    "assets/images/d2.jpg",
  ];

    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: Stack(
          alignment: Alignment.center,
          children: [
            Positioned(
                  top: -180,
                  child: Hero(
                    tag: 'card',
                    child: Container(
                      margin: EdgeInsets.only(left: 80),
                      width: 520,
                      height: 520,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(250),
                        color: Color(0xFFEAA08D),                      
                      ),
                    ),
                  ),
                ),
            SafeArea(
              child: SizedBox(
                width: (kIsWeb) ? 1.sw / 2 : 1.sw,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  //crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                                     
                    TitleProduct(brand: item.brand,),
                    Container(
                      //margin: EdgeInsets.only(bottom: 5),
                      height: 0.32.sh,
                      width: 300,
                      //color: Colors.yellow,
                      child: Image.asset(item.urlImage,
                                        fit: BoxFit.cover, ),                          
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      //width: 400,
                      child: Row(
                        children: listFotos.map( (item) {
                          return Container(
                            margin: EdgeInsets.symmetric(horizontal: 5),
                            width: 90,
                            height: 70,
                            color: Colors.grey[200],
                            child: Image.asset(item,
                                      fit: BoxFit.cover, ),
                          );
                        }).toList()                          
                        
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: Divider(
                        color: Colors.grey,
                      ),
                    ),
              
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Text('${StringUtils.capitalize(item.model)}',
                              style: Theme.of(context).textTheme.headline1,),
                              Spacer(),
                              Text('\$${item.price}',
                              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold))
                            ],
                          ),
                          SizedBox(
                        child: Text.rich(
                          TextSpan(
                            text: 'Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500'),
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.black54,
                              fontWeight: FontWeight.w400
                            )
                          )
                        ),
                        ],
                      ),
                    ),
                   
                    // More
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SizedBox(
                            width: 90,
                            child: Column(
                              children: [
                                Text('MORE DETAILS',style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w600,
                                ) ),
                                Divider(
                                  color: Colors.black,
                                  thickness: 0.8,
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),

                    Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      children: [
                        Expanded(
                          child: Text('Size',
                          style: Theme.of(context).textTheme.headline1,),
                        ),
                        CustomSizeCountryButton()
                      ],
                    ),
                    ),
                    
                    //Size Shoe
                    Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          CustomSizeButton(),
                        ],
                      ),
                    )
                    ),
                    
                    Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                    child: Container(                        
                        decoration: BoxDecoration(
                          color: Color(0xFFF93D65),
                          borderRadius: BorderRadius.circular(5)
                        ),
                        height: 40,
                        child: Material(
                    color: Colors.transparent,
                    child: InkWell(
                      borderRadius: BorderRadius.circular(10),
                      onTap: () {
                        Get.to(BagScreen());
                      },
                      child: Center(
                            child: Text(
                          'ADD TO BAG',
                          style: TextStyle(color: Colors.white, fontWeight: FontWeight.w400),
                        )
                      ),
                      )
                    )),
                    )
                                       
                          
                  ],
                ),
              ),
            ),
          ],
        )
      ),
    );
  }

  
}