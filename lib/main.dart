
import 'package:appshoes/components/models/product.dart';
import 'package:appshoes/components/screen/home/components/home_screen.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import 'components/screen/bag/bag_screen.dart';
import 'components/screen/product/product_screen.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder: ()=> GetMaterialApp(
          scrollBehavior: MyCustomScrollBehavior(),
          debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          color: Colors.blue,
          
          theme: ThemeData(
            scaffoldBackgroundColor: Color(0xFFFCFCFC),
            primarySwatch: Colors.blue,
            textTheme: TextTheme(
              headline1: GoogleFonts.josefinSans(textStyle: TextStyle(
                  letterSpacing: 1.5,
                  fontSize: 22,
                  color: Colors.black,
                  fontWeight: FontWeight.w900
                )),                
              headline2: GoogleFonts.josefinSans(textStyle: TextStyle(
                  letterSpacing: 1.5,
                  fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.w900
                )),
              headline3: GoogleFonts.josefinSans(textStyle: TextStyle(
                  letterSpacing: 0.5,
                  fontSize: 14,
                  color: Colors.grey[800],
                  fontWeight: FontWeight.w900
                )),
            )
          ),
          home: HomeScreen(),
          getPages: [
            GetPage(name: '/', page: () => const HomeScreen()),
            //GetPage(name: '/gamelist', page: () => const GameListPage()),
          ]                      
      ),
      designSize: const Size(360, 640),
    );
  }
}

class MyCustomScrollBehavior extends MaterialScrollBehavior {
  // Override behavior methods and getters like dragDevices
  @override
  Set<PointerDeviceKind> get dragDevices => { 
    PointerDeviceKind.touch,
    PointerDeviceKind.mouse,
    // etc.
  };
}