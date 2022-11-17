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
    this.textColor = 0xFFFFEB3B,
    this.textSize = 28,
    this.callback,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: SizedBox(
          width: MediaQuery.of(context).size.width/4,
          height: MediaQuery.of(context).size.height/10,
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
            style: ElevatedButton.styleFrom(
              padding: EdgeInsets.symmetric(horizontal: 0.0, vertical: 0.0),
              // padding: EdgeInsets.,
              foregroundColor: textColor != null ? Color(textColor) : Colors.red,
              backgroundColor: fillColor != null ? Color(fillColor) : Colors.orange,
              // backgroundColor: Color(fillColor):null,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(100.0)),
            ),
          ),
        ));
  }
}
