import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomRadioButton extends StatefulWidget {
  const CustomRadioButton({
    Key? key,
  }) : super(key: key);

  @override
  State<CustomRadioButton> createState() => _CustomRadioButtonState();
}

class _CustomRadioButtonState extends State<CustomRadioButton> {

  int value = 0;
   Widget CustomRadioButton(String name, int index){
    return MaterialButton(
      onPressed: (){
        setState(() {
          
          value = index;
        });
      },
      splashColor: Colors.transparent,
      //highlightColor: Colors.transparent,
      child: Text(name,
      style: GoogleFonts.josefinSans( textStyle:TextStyle( color: (value == index)? Colors.black : Colors.grey[400] , fontWeight: FontWeight.w700, fontSize: 17)) )
      );
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child: CustomRadioButton('New',2)),
        Expanded(child: CustomRadioButton('Featured',1)),
        Expanded(child: CustomRadioButton('Upcoming',0)),
      ],
    );
  }
  }

