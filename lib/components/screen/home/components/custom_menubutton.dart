import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomMenuButton extends StatefulWidget {
  const CustomMenuButton({
    Key? key,
  }) : super(key: key);

  @override
  State<CustomMenuButton> createState() => _CustomMenuButtonState();
}

class _CustomMenuButtonState extends State<CustomMenuButton> {

  int value = 0;

  Widget ButtonMenu(String namebutton,int indexbutton){
    return CupertinoButton(
      onPressed: (){
                    setState(() {
                      value = indexbutton;
                    });
                  },
      child: Text(namebutton, 
        style: GoogleFonts.josefinSans(textStyle: TextStyle(fontSize: 20, 
          color: (value == indexbutton)? Colors.black: Colors.grey[300],
        fontWeight: FontWeight.w900)),), 
    );
  }


  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ButtonMenu('Nike', 0),
        ButtonMenu('Adidas', 1),
        ButtonMenu('Jordan', 2),
        ButtonMenu('Puma', 3),
        ButtonMenu('Reebook', 4),
      ],
    );
  }
}
