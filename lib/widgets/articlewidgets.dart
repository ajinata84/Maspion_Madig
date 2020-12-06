import 'package:flutter/material.dart';

Widget buildTextHighlight(String text, BuildContext context) {
    return Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: SizedBox(
                    width: MediaQuery.of(context).size.width * 0.89,
                    child: Text(
                      '           $text',
                      style: TextStyle(
                          fontSize: 12,
                          fontFamily: 'Moserat',
                          fontWeight: FontWeight.w900,
                          color: Color(0xFFEC1B34)),
                      textAlign: TextAlign.justify,
                    )),
              );
  }

  Widget buildFullImage(String imgPath, BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Container(
        height: 200,
        width: MediaQuery.of(context).size.width * 0.89,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            image:
                DecorationImage(image: AssetImage(imgPath), fit: BoxFit.cover)),
      ),
    );
  }

  Widget buildText(String text, BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: SizedBox(
          width: MediaQuery.of(context).size.width * 0.89,
          child: Text(
            '              $text',
            style: TextStyle(
                fontSize: 12,
                fontFamily: 'Moserat',
                fontWeight: FontWeight.w600),
            textAlign: TextAlign.justify,
          )),
    );
  }