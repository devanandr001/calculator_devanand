import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CalcButton extends StatelessWidget {
  final String text;
  final int fillColor;
  final int textColor;
  final double textSize;
  final Function callback;

  const CalcButton({
    Key key,
    this.text ,
    this.fillColor,
    this.textColor = 0xF,
    this.textSize = 28,
    this.callback,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.all(1),
        child: SizedBox(
          width: 65,
          height: 65,
          child: ElevatedButton(
            onPressed: () {
              callback(text);
            },
            child: Text(
              text,
              style: GoogleFonts.rubik(
                textStyle: TextStyle(
                  color: Colors.white,
                  // color: Color(textColor),
                  fontSize: textSize,
                ),
              ),
            ),
            // style: ElevatedButton.styleFrom(
            //   padding: EdgeInsets.symmetric(horizontal: 40.0, vertical: 20.0),
            //   shape: RoundedRectangleBorder(
            //       borderRadius: BorderRadius.circular(10.0)),
            // ),

            style: ElevatedButton.styleFrom(
              padding: EdgeInsets.symmetric(horizontal: 0.0, vertical: 0.0),
              // padding: EdgeInsets.,
              foregroundColor: textColor != null ? Color(textColor) : Colors.red,
              backgroundColor: fillColor != null ? Color(fillColor) : Colors.orange,
              // backgroundColor: Color(fillColor):null,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0)),
            ),

            // color: fillColor != null ? Color(fillColor) : null,
            // child: Color(textColor),
          ),
        ));
  }
}
