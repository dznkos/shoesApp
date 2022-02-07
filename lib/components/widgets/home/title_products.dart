import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class TitleProducts extends StatelessWidget {
  const TitleProducts({ Key? key, required BuildContext context }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Expanded(
          child: Container(
            margin: EdgeInsets.only(left: 20.w ?? 20),
            width: 100,
            //color: Colors.red,
            child: Text("More",
            style: Theme.of(context).textTheme.headline1,),
          )
        ),
        Padding(
          padding: const EdgeInsets.only(right: 25),
          child: ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            child: Material(
              color: Colors.transparent,
              child: InkWell(
                splashColor: Colors.greenAccent,
                onTap: (){},
                child: SizedBox(                      
                  height: 30,
                  width: 50.w,
                  child: SvgPicture.asset("assets/icons/arrow_right.svg"),
                ),
              ),
            ),
          ),
        )
      ],
    );  
  }
}