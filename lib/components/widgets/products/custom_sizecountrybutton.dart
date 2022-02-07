import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomSizeCountryButton extends StatefulWidget {
  const CustomSizeCountryButton({
    Key? key,
  }) : super(key: key);

  @override
  State<CustomSizeCountryButton> createState() => _CustomSizeCountryButtonState();
}

class _CustomSizeCountryButtonState extends State<CustomSizeCountryButton> {

  int value = 0;

  Widget ButtonMenu(String namebutton,int indexbutton){
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: (){
              setState(() {
                value = indexbutton;
              });
        },
        child: Container(
          height: 35,
          width: 40,
          alignment: Alignment.center,
          child: Text(namebutton, 
            style: GoogleFonts.josefinSans(textStyle: TextStyle(fontSize: 16, 
              color: (value == indexbutton)? Colors.black: Colors.grey[400],
            fontWeight: FontWeight.w700)),),
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
            ButtonMenu('UK', 0),
            ButtonMenu('USA', 1),
          ],
        )
    );
  }
}
