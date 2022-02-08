import 'package:appshoes/components/screen/home/components/home_screen.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class BagScreen extends StatelessWidget {
  const BagScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: Stack(
          alignment: Alignment.center,
        children: [
          SafeArea(
          child: SizedBox(
            // width: (kIsWeb) ? 1.sw / 2 : 1.sw,
            width: (kIsWeb) ? 1.sw / 2 : 1.sw,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  height: 70,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: ClipRRect(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          child: Material(
                            color: Colors.grey.withOpacity(0.1),
                            child: InkWell(
                              splashColor: Colors.greenAccent,
                              onTap: (){
                                Navigator.pop(context);
                              },
                              child: SizedBox(                      
                                height: 30,
                                width: 50.w,
                                child: SvgPicture.asset("assets/icons/arrow_left1.svg",
                                color: Colors.black,),
                              ),
                            ),
                          ),
                        ),
                      ), 
                    ],
                  ),
                ),
                Padding(
                  padding:EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('My Bag', style: Theme.of(context).textTheme.headline1?.apply(fontSizeFactor: 1.4),),
                      SizedBox(
                        width: 90,
                        child: Text('Total 3 items',
                        style: TextStyle(fontWeight: FontWeight.w600),),
                      )
                    ],
                  ), 
                ),
                Divider(thickness: 1.5,
                ),
          
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 25),
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        Row(
                          children: [                  
                            Container(
                              height: 120,
                              width: 140,                    
                              child: Stack(
                                children: [
                                  Container(
                                    margin: EdgeInsets.only(left: 10,top: 15),                              width: 100,
                                    height: 90,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(25),
                                      color: Color(0xFFDADEE6)
                                    ),
                                  ),
                                  Positioned(
                                    top: -8,
                                    right: 5,
                                    height: 130,
                                    child: Image.asset('assets/images/1.png',
                                    ),
                                  )
                                ],
                              ),                        
                            ),
                  
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 10),
                              child: Container(
                                height: 120,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(
                                      width: 200,
                                      child: Text('AIR JORDAN 5 LANEY JSP',
                                      style: Theme.of(context).textTheme.headline3,),
                                    ),
                                     Text('\$190.00',
                                     style: Theme.of(context).textTheme.headline1,),
                                    Row(
                                      children: [
                                         Material(
                                          color: Colors.grey[50],
                                          child: InkWell(
                                            splashColor: Colors.red,
                                            onTap: (){
                                              print('add');
                                            },
                                            child: SizedBox(
                                              width: 40,
                                              height: 30,
                                              child: Icon(Icons.remove, 
                                                    color: Colors.grey[600],))),
                                        ),
                                         Container(
                                          alignment: Alignment.center,
                                          width: 40,
                                          height: 30,
                                          color: Colors.white,
                                          child: Text('1', style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w500
                                          ),)
                                        ),
                                        Material(
                                          color: Colors.grey[50],
                                          child: InkWell(
                                            splashColor: Colors.blue,
                                            onTap: (){
                                              print('add');
                                            },
                                            child: SizedBox(
                                              width: 40,
                                              height: 30,
                                              child: Icon(Icons.add, 
                                                    color: Colors.grey[600],))),
                                        )
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            )
                  
                            
                            
                  
                  
                          ],
                        ),
                        Row(
                          children: [                  
                            Container(
                              height: 120,
                              width: 140,                    
                              child: Stack(
                                children: [
                                  Container(
                                    margin: EdgeInsets.only(left: 10,top: 15),                              width: 100,
                                    height: 90,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(25),
                                      color: Color(0xFFDADEE6)
                                    ),
                                  ),
                                  Positioned(
                                    top: -8,
                                    right: 5,
                                    height: 130,
                                    child: Image.asset('assets/images/9.png',
                                    ),
                                  )
                                ],
                              ),                        
                            ),
                  
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 10),
                              child: Container(
                                height: 120,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(
                                      width: 200,
                                      child: Text('HUSTLE-D-9-FLYEASE',
                                      style: Theme.of(context).textTheme.headline3,),
                                    ),
                                     Text('\$130.20',
                                     style: Theme.of(context).textTheme.headline1,),
                                    Row(
                                      children: [
                                         Material(
                                          color: Colors.grey[50],
                                          child: InkWell(
                                            splashColor: Colors.red,
                                            onTap: (){
                                              print('add');
                                            },
                                            child: SizedBox(
                                              width: 40,
                                              height: 30,
                                              child: Icon(Icons.remove, 
                                                    color: Colors.grey[600],))),
                                        ),
                                         Container(
                                          alignment: Alignment.center,
                                          width: 40,
                                          height: 30,
                                          color: Colors.white,
                                          child: Text('2', style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w500
                                          ),)
                                        ),
                                        Material(
                                          color: Colors.grey[50],
                                          child: InkWell(
                                            splashColor: Colors.blue,
                                            onTap: (){
                                              print('add');
                                            },
                                            child: SizedBox(
                                              width: 40,
                                              height: 30,
                                              child: Icon(Icons.add, 
                                                    color: Colors.grey[600],))),
                                        )
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            )
                  
                            
                            
                  
                  
                          ],
                        ),
                        Row(
                          children: [                  
                            Container(
                              height: 120,
                              width: 140,                    
                              child: Stack(
                                children: [
                                  Container(
                                    margin: EdgeInsets.only(left: 10,top: 15),                              width: 100,
                                    height: 90,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(25),
                                      color: Color(0xFFDADEE6)
                                    ),
                                  ),
                                  Positioned(
                                    top: -8,
                                    right: 5,
                                    height: 130,
                                    child: Image.asset('assets/images/6.png',
                                    ),
                                  )
                                ],
                              ),                        
                            ),
                  
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 10),
                              child: Container(
                                height: 120,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(
                                      width: 200,
                                      child: Text('AIR-MAX-270-BIG-KIDS',
                                      style: Theme.of(context).textTheme.headline3,),
                                    ),
                                     Text('\$190.20',
                                     style: Theme.of(context).textTheme.headline1,),
                                    Row(
                                      children: [
                                         Material(
                                          color: Colors.grey[50],
                                          child: InkWell(
                                            splashColor: Colors.red,
                                            onTap: (){
                                              print('add');
                                            },
                                            child: SizedBox(
                                              width: 40,
                                              height: 30,
                                              child: Icon(Icons.remove, 
                                                    color: Colors.grey[600],))),
                                        ),
                                         Container(
                                          alignment: Alignment.center,
                                          width: 40,
                                          height: 30,
                                          color: Colors.white,
                                          child: Text('1', style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w500
                                          ),)
                                        ),
                                        Material(
                                          color: Colors.grey[50],
                                          child: InkWell(
                                            splashColor: Colors.blue,
                                            onTap: (){
                                              print('add');
                                            },
                                            child: SizedBox(
                                              width: 40,
                                              height: 30,
                                              child: Icon(Icons.add, 
                                                    color: Colors.grey[600],))),
                                        )
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ),
                  
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('TOTAL',
                      style: TextStyle(fontWeight: FontWeight.bold),),
                      Text('\$510.40',
                      style: Theme.of(context).textTheme.headline1,)
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
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
                      Get.to(HomeScreen());
                    },
                    child: Center(
                          child: Text(
                        'NEXT',
                        style: TextStyle(color: Colors.white, fontWeight: FontWeight.w400),
                      )
                    ),
                    )
                  )),
                ),
          
          
              ],
            ),
          ),
        ),
        ],
        )
      )
    );
  }
}