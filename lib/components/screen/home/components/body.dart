import 'dart:developer';
import 'dart:math';


import 'package:appshoes/components/widgets/home/control_slider.dart';
import 'package:appshoes/components/widgets/home/custom_lateralbutton.dart';
import 'package:appshoes/components/widgets/home/custom_menubutton.dart';
import 'package:appshoes/components/widgets/home/list_product.dart';
import 'package:appshoes/components/widgets/home/title_products.dart';
import 'package:carousel_slider/carousel_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';


class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {

    // Widget getCarousel(){
    //   if(kIsWeb) {
    //     print('Corriendo en Web');
    //   }
    // }

    return SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center  ,
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
                        width: 40,
                        height: 40,
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
                        width: 40,
                        height: 40,
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
        //END APPBAR
        
        //MENU BUTTON
        CustomMenuButton(),
        
        // BUTTONS / CAROUSEL
        Container(
          height: 0.5.sh,
          //color: Colors.orange.withOpacity(0.3),
          child: Stack(
            children: [
              Row(
                //mainAxisAlignment: MainAxisAlignment.spaceBetween  ,
                children: [
                    // LATERAL BUTTONS
                  Container(
                      height: 600,
                      width: 40.w,
                      child: RotatedBox(
                          quarterTurns: -1, 
                          child: CustomLateralButton())),
                  Container(
                    child: Expanded(
                        child: ControlSliderMecanic()
                    ),
                  )
                ],
              ),
              
            ],
          ),
        ),
        
        // HEADER 1
        TitleProducts(context: context),
        
        // BOX PRODUCTOS
        Expanded(          
          // height: 0.22.sh,
          // color: Colors.blue,
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: ListProduct()
          ),
        )
      ],
    )
    );
  }

  

  
}

