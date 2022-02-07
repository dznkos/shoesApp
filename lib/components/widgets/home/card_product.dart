import 'dart:math';

import 'package:appshoes/components/screen/product/product_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:appshoes/components/models/product.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';


class CardProduct extends StatefulWidget {
  const CardProduct({
    Key? key, required this.product,
  }) : super(key: key);

  final Producto product;

  @override
  State<CardProduct> createState() => _CardProductState();
}

class _CardProductState extends State<CardProduct> {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      margin: EdgeInsets.symmetric(horizontal: 20),      
      width: 320,
      child: Stack(
        alignment: Alignment.center,
        children: [
          // CARD CHILD
          Hero(
            tag: 'card',
            child: Container(
              constraints: BoxConstraints(
                minWidth: 250
              ),
              width: 260,
              margin: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Color(0xFFeba08e),
                borderRadius: BorderRadius.circular(25)),
              child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.product.brand.toUpperCase(),
                    style: GoogleFonts.josefinSans(textStyle: TextStyle(
                        color: Colors.white,
                        fontSize: 17,
                        fontWeight: FontWeight.w600)),
                  ),
                  SizedBox(height: 10.h),
                  Text(
                    widget.product.model.toUpperCase(),
                    style: GoogleFonts.josefinSans(textStyle: TextStyle(
                        color: Colors.white,
                        fontSize: 22,
                        fontWeight: FontWeight.w900)),
                  ),
                  SizedBox(height: 10.h),
                  Text(
                    '\$'+widget.product.price,
                    style: GoogleFonts.josefinSans(textStyle: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w600)),
                  ),
                ],
              ),
            ),
            ),
          ),
                  
          
          // shoe
          Container( 
            height: 300,                     
            child:Hero(
                    tag: widget.product.urlImage,
                    child: Image.asset(widget.product.urlImage,                                
                            fit: BoxFit.contain,),
                      )
          ),
          // arrow
          Positioned(
            bottom: 20,
            right: 20,
            child: CupertinoButton(
              child: SvgPicture.asset("assets/icons/arrow_right.svg",
              height: 25.h,
              color: Colors.white,), 
              onPressed: (){
                print('ver detalle');
                Get.to(ProductScreen(item: widget.product,));
              }) 
          ),
          // heart
          Positioned(
            top: 20,
            right: 20,
            child: CupertinoButton(
              child: (widget.product.isFavorite) 
              ? SvgPicture.asset("assets/icons/heartblack.svg",height: 18,color: Colors.redAccent[200])
              : SvgPicture.asset("assets/icons/heart.svg",height: 18), 
              onPressed: (){
                setState(() {                  
                  widget.product.isFavorite = !widget.product.isFavorite;
                });
              } 
            )
          ),  
          
        ],
      ),
    );
  }
}
