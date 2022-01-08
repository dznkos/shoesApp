
import 'package:appshoes/components/screen/home/components/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder: ()=> MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          color: Colors.blue,
          theme: ThemeData(
            scaffoldBackgroundColor: Colors.white,
            primarySwatch: Colors.blue
          ),
          home: HomeScreen()      
      ),
      designSize: const Size(360, 640),
    );
  }
}
