import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomSizeButton extends StatefulWidget {
  const CustomSizeButton({
    Key? key,
  }) : super(key: key);

  @override
  State<CustomSizeButton> createState() => _CustomSizeButtonState();
}

class _CustomSizeButtonState extends State<CustomSizeButton> {

  int value = 0;

  Widget ButtonMenu(String namebutton,int indexbutton){
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: (){
                setState(() {
                  value = indexbutton;
                });
          },
          child: Container(
            height: 45,
            width: 90,          
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.grey,
                  offset: Offset(1,1),
                  blurRadius: 5  
                )
              ],
              border: Border.all(width: 0.3, color: Colors.grey),
              color: (value == indexbutton)? Color(0xFF202224): Colors.white,
              borderRadius: BorderRadius.circular(5)
            ),
            alignment: Alignment.center,
            child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(namebutton, 
                    textAlign: TextAlign.center,
                    style: GoogleFonts.josefinSans(textStyle: TextStyle(fontSize: 18, 
                      color: (value == indexbutton)? Colors.white: Colors.black,
                    fontWeight: FontWeight.w700)),),
                  
                  (indexbutton == 0) 
                    ? Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: SvgPicture.asset("assets/icons/feetsize.svg", height: 23,
                              color: (value == indexbutton)? Colors.white: Colors.black,),
                    ) 
                    : SizedBox()
                ],              
            ),
          ),
        ), 
      ),
    );
  }
  

  @override
  Widget build(BuildContext context) {
    return 
    SingleChildScrollView(            
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            ButtonMenu('Try it', 0),
            ButtonMenu('7.5', 1),
            ButtonMenu('8', 2),
            ButtonMenu('8.5', 3),
            ButtonMenu('9', 4),
            ButtonMenu('9.5', 5),
          ],
        )
    );
  }
}
