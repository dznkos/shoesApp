import 'package:flutter/cupertino.dart';
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
        ),

      Container(
        padding: EdgeInsets.symmetric(horizontal: 10.w),
        height: 0.05.sh,
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Expanded(
            child: Row(
              children: [
                Container(
                  height: 0.1.sh,
                  width: 0.2.sw,
                  child: Stack(
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 0.02.sh),
                        alignment: Alignment.bottomCenter,
                        height: 0.025.sh,
                        decoration: BoxDecoration(
                          color: Colors.grey[200],
                          borderRadius: BorderRadius.only(topLeft: Radius.circular(10), topRight: Radius.circular(10))
                        ),
                        
                      ),
                      Center(child: Text('Nike', style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600),)),
                      
                    ],
                  ),
                ),
                Container(
                  height: 0.1.sh,
                  width: 0.2.sw,
                  child: Stack(
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 0.02.sh),
                        alignment: Alignment.bottomCenter,
                        height: 0.025.sh,
                        // decoration: BoxDecoration(
                        //   color: Colors.grey[200],
                        //   borderRadius: BorderRadius.only(topLeft: Radius.circular(10), topRight: Radius.circular(10))
                        // ),
                        
                      ),
                      Center(child: Text('Adidas', style: TextStyle(color:Colors.grey[400],fontSize: 22, fontWeight: FontWeight.w600),)),
                      
                    ],
                  ),
                ),
                Container(
                  height: 0.1.sh,
                  width: 0.2.sw,
                  child: Stack(
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 0.02.sh),
                        alignment: Alignment.bottomCenter,
                        height: 0.025.sh,
                        // decoration: BoxDecoration(
                        //   color: Colors.grey[200],
                        //   borderRadius: BorderRadius.only(topLeft: Radius.circular(10), topRight: Radius.circular(10))
                        // ),
                        
                      ),
                      Center(child: Text('Jordan', style: TextStyle(color:Colors.grey[400],fontSize: 22, fontWeight: FontWeight.w600),)),
                      
                    ],
                  ),
                ),
                Container(
                  height: 0.1.sh,
                  width: 0.2.sw,
                  child: Stack(
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 0.02.sh),
                        alignment: Alignment.bottomCenter,
                        height: 0.025.sh,
                        // decoration: BoxDecoration(
                        //   color: Colors.grey[200],
                        //   borderRadius: BorderRadius.only(topLeft: Radius.circular(10), topRight: Radius.circular(10))
                        // ),
                        
                      ),
                      Center(child: Text('Puma', style: TextStyle(color:Colors.grey[400] ,fontSize: 22, fontWeight: FontWeight.w600),)),
                      
                    ],
                  ),
                ),
                Container(
                  height: 0.1.sh,
                  width: 0.2.sw,
                  child: Stack(
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 0.02.sh),
                        alignment: Alignment.bottomCenter,
                        height: 0.025.sh,
                        // decoration: BoxDecoration(
                        //   color: Colors.grey[200],
                        //   borderRadius: BorderRadius.only(topLeft: Radius.circular(10), topRight: Radius.circular(10))
                        // ),
                        
                      ),
                      Center(child: Text('Reebooee', style: TextStyle(color:Colors.grey[400] ,fontSize: 22, fontWeight: FontWeight.w600),)),
                      
                    ],
                  ),
                ),
                Container(
                  height: 0.1.sh,
                  width: 0.2.sw,
                  child: Stack(
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 0.02.sh),
                        alignment: Alignment.bottomCenter,
                        height: 0.025.sh,
                        // decoration: BoxDecoration(
                        //   color: Colors.grey[200],
                        //   borderRadius: BorderRadius.only(topLeft: Radius.circular(10), topRight: Radius.circular(10))
                        // ),
                        
                      ),
                      Center(child: Text('Reebooee', style: TextStyle(color:Colors.grey[400] ,fontSize: 22, fontWeight: FontWeight.w600),)),
                      
                    ],
                  ),
                )

                
              ],
            ),
          ),
        ),
      )


      ],
    ));
  }
}
