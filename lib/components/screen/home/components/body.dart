import 'dart:math';

import 'package:appshoes/components/widgets/custombutton_lateralmenu.dart';
import 'package:appshoes/components/widgets/custombutton_menu.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool showFront = false;

    return SafeArea(
        child: Column(
      children: [
        Container(
          padding: EdgeInsets.symmetric(horizontal: 10.w),
          height: 0.1.sh,
          child: Row(
            children: [
              Expanded(
                child: Text(
                  "Discover",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.w700),
                ),
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(25),
                child: Container(
                    padding: EdgeInsets.all(6),
                    color: Colors.grey[300],
                    child: Icon(Icons.search)),
              ),
              SizedBox(
                width: 5.w,
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(25),
                child: Container(
                    padding: EdgeInsets.all(6),
                    color: Colors.grey[300],
                    child: Icon(
                      Icons.notifications,
                    )),
              ),
            ],
          ),
        ),
        //MENU Button
        Container(
          height: 0.1.sh,
          width: double.infinity,
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Container(
                //color: Colors.yellow,
                //height: 0.02.sh,
                child: CustomButtonMenu()),
          ),
        ),
        // LATERAL BUTTON
        Container(
          color: Colors.grey[300],
          height: 0.5.sh,
          child: Row(
            children: [
              Container(
                //color: Colors.grey[600],
                child: RotatedBox(quarterTurns: -1, child: CustomRadioButton()),
              ),
              Expanded(
                child: Container(
                  //color: Colors.blueAccent,
                  height: 0.5.sh,
                  child: Row(
                    children: [
                      //Card
                      Container(
                        width: 0.65.sw,
                        decoration: BoxDecoration(
                            //color: Colors.red[200],
                            borderRadius: BorderRadius.circular(25)),
                        child: Stack(children: [
                          Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 15.w, vertical: 20.h),
                            margin: EdgeInsets.symmetric(
                              horizontal: 20.w,
                            ),
                            width: 0.55.sw,
                            decoration: BoxDecoration(
                                color: Colors.orange[300],
                                borderRadius: BorderRadius.circular(25)),
                          child: 
                          Container(                            
                            child: Stack(
                              children: [Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('NIKE',
                                      style: GoogleFonts.josefinSans(
                                          textStyle: TextStyle(
                                              color: Colors.white,
                                              fontSize: 21,
                                              fontWeight: FontWeight.w600))),
                                  SizedBox(
                                    height: 12.h,
                                  ),
                                  Text('AIR-270',
                                      style: GoogleFonts.josefinSans(
                                          textStyle: TextStyle(
                                              color: Colors.white,
                                              fontSize: 25,
                                              fontWeight: FontWeight.w900))),
                                  SizedBox(
                                    height: 12.h,
                                  ),
                                  Text('\$150.00',
                                      style: GoogleFonts.josefinSans(
                                          textStyle: TextStyle(
                                              color: Colors.white54,
                                              fontSize: 18,
                                              fontWeight: FontWeight.w900))),
                                ],
                              ),                              
                              Positioned(
                                  top: 10,
                                  right: 10,
                                  child: SvgPicture.asset("assets/icons/heart.svg",
                                      height: 20.h, color: Colors.white70)
                              ),
                              Positioned(
                                  bottom: 0,
                                  right: 5,
                                  child: Icon(Icons.arrow_forward_sharp, color: Colors.white,)
                              ),
                              ]
                            ),
                          ),
                          ),
                          
                          Positioned(
                            top: 40,
                            right: 2,
                            child: Container(
                                //color: Colors.red,
                                child: Transform.rotate(
                              angle: pi / -6,
                              child: Transform(
                                  alignment: Alignment.center,
                                  transform: Matrix4.rotationY(pi),
                                  child: Image.asset(
                                    "assets/images/1.jpg",
                                    height: 0.40.sh,
                                  )),
                            )),
                          )
                        ]),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ), // CAROUSEL
      ],
    ));
  }
}
