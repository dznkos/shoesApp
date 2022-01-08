import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
                  style: TextStyle(fontSize: 30,fontWeight: FontWeight.w700),
                ),
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(25),
                child: Container(
                  padding: EdgeInsets.all(6),
                  color: Colors.grey[300],
                  child: Icon(Icons.search)
                ),
              ),
              SizedBox(width: 5.w,),
              ClipRRect(
                borderRadius: BorderRadius.circular(25),
                child: Container(
                  padding: EdgeInsets.all(6),
                  color: Colors.grey[300],
                  child: Icon(Icons.notifications,)
                ),
              ),
            ],
          ),
        )
      ],
    ));
  }
}
