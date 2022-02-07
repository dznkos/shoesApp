import 'package:basic_utils/basic_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class TitleProduct extends StatelessWidget {
  const TitleProduct({ Key? key, required this.brand }) : super(key: key);


  final String brand;
  @override
  Widget build(BuildContext context) {
    return Container(
            height: 70,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    child: Material(
                      color: Colors.grey.withOpacity(0.2),
                      child: InkWell(
                        splashColor: Colors.greenAccent,
                        onTap: (){
                          Navigator.pop(context);
                        },
                        child: SizedBox(                      
                          height: 30,
                          width: 50.w,
                          child: SvgPicture.asset("assets/icons/arrow_left1.svg",
                          color: Colors.white,),
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(child: Text(StringUtils.capitalize(brand),
                textAlign: TextAlign.center, 
                style: Theme.of(context).textTheme.headline2 )),
                MaterialButton(
                  height: 40,
                  color: Color(0xFFEAA08D).withOpacity(0.8),
                  // child: Icon(Icons.favorite_border_outlined, color: Colors.white,),
                  child: SvgPicture.asset("assets/icons/heart.svg",
                          color: Colors.white,),
                  onPressed: () {},
                  shape: const CircleBorder(),
                ),            
    
              ],
            ),
          );
  }
}