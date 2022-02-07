import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class CustomLateralButton extends StatefulWidget {
  const CustomLateralButton({
    Key? key,
  }) : super(key: key);

  @override
  State<CustomLateralButton> createState() => _CustomLateralButtonState();
}

class _CustomLateralButtonState extends State<CustomLateralButton> {


  int value = 1;

  Widget ButtonLateral(String name, int index){

    return CupertinoButton(            
            onPressed: (){
              setState(() {
                value = index;                
              });
            },
            child: Text(name,
            style: GoogleFonts.josefinSans(textStyle: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w700,
              color: (value == index) ? Colors.black : Colors.grey[300])),), 
            );
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child: ButtonLateral('New', 0)),
        Expanded(child: ButtonLateral('Featured', 1)),
        Expanded(child: ButtonLateral('Upcoming', 2)),        
      ],
    );
  }
}
