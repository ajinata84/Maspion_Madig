import 'package:flutter/material.dart';

Widget buildTextHighlight(
    String text,
  ) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: SizedBox(
          child: Text(
        '           $text',
        style: TextStyle(
            fontSize: 12,
            fontFamily: 'Moserat',
            fontWeight: FontWeight.w700,
            color: Color(0xFFEC1B34)),
        textAlign: TextAlign.justify,
      )),
    );
  }

  Widget buildFullImage(
    String imgPath,
  ) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Container(
        height: 200,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            image:
                DecorationImage(image: AssetImage(imgPath), fit: BoxFit.cover)),
      ),
    );
  }

  Widget buildText(
    String text,
  ) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 8.0),
      child: Text(
        '              $text',
        style: TextStyle(fontSize: 12, fontFamily: 'Moserat'),
        textAlign: TextAlign.justify,
      ),
    );
  }
