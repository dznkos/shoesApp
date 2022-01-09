import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:appshoes/components/models/product.dart';
import 'package:google_fonts/google_fonts.dart';


class CardProduct extends StatelessWidget {
  const CardProduct({
    Key? key, required this.product,
  }) : super(key: key);

  final Producto product;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 0.7.sw,
      height: double.infinity,
      child: Stack(
        children: [
          // CARD CHILD
          Center(
            child: Container(
              padding: EdgeInsets.only(left: 15.w, top: 15.w),
              margin: EdgeInsets.symmetric(horizontal: 20.w),
              width: 0.6.sw,
              height: double.infinity,
              decoration: BoxDecoration(
                  color: Color(0xFFeba08e),
                  borderRadius: BorderRadius.circular(25)),
              child: Stack(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        product.brand.toUpperCase(),
                        style: GoogleFonts.josefinSans(textStyle: TextStyle(
                            color: Colors.white,
                            fontSize: 17,
                            fontWeight: FontWeight.w600)),
                      ),
                      SizedBox(height: 10.h),
                      Text(
                        product.model.toUpperCase(),
                        style: GoogleFonts.josefinSans(textStyle: TextStyle(
                            color: Colors.white,
                            fontSize: 22,
                            fontWeight: FontWeight.w900)),
                      ),
                      SizedBox(height: 10.h),
                      Text(
                        '\$'+product.price,
                        style: GoogleFonts.josefinSans(textStyle: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w600)),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
          Positioned(
            top: 0,
            right: 20.w,
            child: CupertinoButton(
              child: SvgPicture.asset("assets/icons/heart.svg",
              height: 18.h,
              color: Colors.white,), 
              onPressed: (){}) 
          ),
          Positioned(
            top: 30,
            left: 15,
            child: Container(                        
              child: Transform.rotate(
                angle: pi / -6,
                child: Transform(
                        alignment: Alignment.center,
                        transform: Matrix4.rotationY(pi),
                        child: Image.asset(product.urlImage,
                                width: 0.65.sw,)),
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            right: 20.w,
            child: CupertinoButton(
              child: SvgPicture.asset("assets/icons/arrow_right.svg",
              height: 25.h,
              color: Colors.white,), 
              onPressed: (){}) 
          ),
          
        ],
      ),
    );
  }
}
