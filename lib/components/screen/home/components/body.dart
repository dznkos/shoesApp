import 'dart:math';

import 'package:appshoes/components/screen/home/components/carousel_products.dart';
import 'package:appshoes/components/screen/home/components/custom_lateralbutton.dart';
import 'package:appshoes/components/screen/home/components/custom_menubutton.dart';
import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';


class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Column(
      children: [
        //APPBAR
        Container(
          padding: EdgeInsets.symmetric(horizontal: 10.w),
          height: 0.1.sh,
          //color: Colors.blue,
          child: Row(
            children: [
              Expanded(
                child: Text(
                  "Discover",
                  style: GoogleFonts.josefinSans(textStyle: TextStyle(fontSize: 35, fontWeight: FontWeight.w900)),
                ),
              ),
              ClipOval(
                child: Material(
                    color: Colors.grey[200],
                    child: InkWell(
                      splashColor: Colors.orange[300],
                      onTap: () {},
                      child: SizedBox(
                        width: 35.w,
                        height: 35.h,
                        child: Icon(
                          Icons.search_rounded,
                          size: 26,
                        ),
                      ),
                    )),
              ),
              SizedBox(
                width: 6.w,
              ),
              ClipOval(
                child: Material(
                    color: Colors.grey[200],
                    child: InkWell(
                      splashColor: Colors.orange[300],
                      onTap: () {},
                      child: SizedBox(
                        width: 35.w,
                        height: 35.h,
                        child: Icon(
                          Icons.notifications_none,
                          size: 26,
                        ),
                      ),
                    )),
              ),
            ],
          ),
        ),
        
        //MENU BUTTON
        Container(
          height: 0.1.sh,
          width: double.infinity,
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: CustomMenuButton(),
          ),
        ),
        
        // BUTTONS / CAROUSEL
        Container(
          //color: Colors.grey[500],
          height: 0.44.sh,
          child: Row(
            children: [
                // LATERAL BUTTONS
              Container(
                  width: 0.15.sw,
                  child: RotatedBox(
                      quarterTurns: -1, 
                      child: CustomLateralButton())),
              Expanded(
                // CARD PRODUCTO
                  child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                            child: CarouselProduct())
              )
            ],
          ),
        ),
        
        // HEADER 1
        Container(
          //color: Colors.grey[400],
          height: 0.07.sh,
          child: Row(
            children: [
              Expanded(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10.w,vertical: 5.w),
                  child: Text("More",
                  style: GoogleFonts.josefinSans(textStyle: TextStyle(
                    letterSpacing: 1.5,
                    fontSize: 22,
                    fontWeight: FontWeight.w900
                  )),),
                )
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 8.h),
                child: ClipRRect(
                  child: Material(
                    color: Colors.white,
                    child: InkWell(
                      splashColor: Colors.greenAccent,
                      onTap: (){},
                      child: SizedBox(                      
                        height: 80.h,
                        width: 50.w,
                        child: SvgPicture.asset("assets/icons/arrow_right.svg"
                          ,width: 30.w,),
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
        
        // BOX PRODUCTOS
        Container(
          padding: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
          
          height: 0.22.sh,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                height: double.infinity,
                width: 0.4.sw,                
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(5)
                ),
                child: Stack(
                  children: [
                    RotatedBox(
                      quarterTurns: -1,
                      child: Container(                    
                        width: 55.w,
                        height: 18.h,
                        color: Colors.pink[300],
                        child: Center(child: Text('NEW', style: TextStyle(fontSize: 11, color: Colors.white, fontWeight: FontWeight.w500),)),
                      ),
                    ),
                    Positioned(
                      top: -5,
                      right: -5,
                      child: CupertinoButton(
                        child: SvgPicture.asset("assets/icons/heart.svg",
                        height: 15.h,
                        color: Colors.black,), 
                        onPressed: (){}) 
                    ),
                    Positioned(
                      top: 0,
                      left: 20,
                      child: Container(                        
                        child: Transform(
                          alignment: Alignment.center,
                          transform: Matrix4.rotationY(pi),
                          child: Image.asset("assets/images/1.jpg",
                                  width: 0.32.sw,),
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 0,
                      child: Container(
                        margin: EdgeInsets.symmetric(vertical: 5.h),
                        width: 0.4.sw,
                        child: Column(
                          children: [
                            Text('NIKE AIR-MAX', style: TextStyle(fontSize: 11,fontWeight: FontWeight.w700) ),
                            Text('\$170.00', style: TextStyle(fontSize: 12,fontWeight: FontWeight.w500) ),
                          ],
                        )
                      )                      
                    ),
                  ]                
                ),
              ),              
              Container(
                height: double.infinity,
                width: 0.4.sw,                
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(5)
                ),
                child: Stack(
                  children: [
                    RotatedBox(
                      quarterTurns: -1,
                      child: Container(                    
                        width: 55.w,
                        height: 18.h,
                        color: Colors.pink[300],
                        child: Center(child: Text('NEW', style: TextStyle(fontSize: 11, color: Colors.white, fontWeight: FontWeight.w500),)),
                      ),
                    ),
                    Positioned(
                      top: -5,
                      right: -5,
                      child: CupertinoButton(
                        child: SvgPicture.asset("assets/icons/heart.svg",
                        height: 15.h,
                        color: Colors.black,), 
                        onPressed: (){}) 
                    ),
                    Positioned(
                      top: 0,
                      left: 20,
                      child: Container(                        
                        child: Transform(
                          alignment: Alignment.center,
                          transform: Matrix4.rotationY(pi),
                          child: Image.asset("assets/images/2.jpg",
                                  width: 0.32.sw,),
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 0,
                      child: Container(
                        margin: EdgeInsets.symmetric(vertical: 5.h),
                        width: 0.4.sw,
                        child: Column(
                          children: [
                            Text('NIKE AIR-FORCE', style: TextStyle(fontSize: 11,fontWeight: FontWeight.w700) ),
                            Text('\$130.00', style: TextStyle(fontSize: 12,fontWeight: FontWeight.w500) ),
                          ],
                        )
                      )                      
                    ),
                  ]                
                ),
              ),
            ],
          ),
        )
      ],
    ));
  }
}
