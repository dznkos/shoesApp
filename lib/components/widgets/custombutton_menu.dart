import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomButtonMenu extends StatefulWidget {
  const CustomButtonMenu({
    Key? key,
  }) : super(key: key);

  @override
  State<CustomButtonMenu> createState() => _CustomButtonMenuState();
}

class _CustomButtonMenuState extends State<CustomButtonMenu> {

  int value = 0;
  Widget CustomButton(String name, int index){
    return MaterialButton(
            splashColor: Colors.transparent,
            highlightColor: Colors.transparent,
            child: Text(name,
            style: GoogleFonts.josefinSans( textStyle: TextStyle(color: (value == index) ? Colors.black : Colors.grey[400], fontSize: 21, fontWeight: FontWeight.w900) ) ),
            onPressed: (){
              setState(() {
                value = index;                
              });
            }
    );
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CustomButton('Nike', 0),
        CustomButton('Addidas', 1),
        CustomButton('Jordan', 2),
        CustomButton('Puma', 3),
        CustomButton('Reebook', 4),
        CustomButton('Converse', 4),
      ],
    );
  }
}


