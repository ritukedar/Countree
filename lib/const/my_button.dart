import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';


class MyButton extends StatelessWidget {
  MyButton({Key? key,
    required this.text
  }) : super(key: key);
  String text;


  @override
  Widget build(BuildContext context) {
    return Container(
        height: 40,
        width: 170,
        decoration: BoxDecoration(
          color:   Color(0xff0D1180),
          borderRadius: BorderRadius.circular(7),
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color(0xff008101),
                Color(0xff10DE00),
              ]

          ),

        ),
        child:Center(child:
        Text(text, style: TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.w600),))
    );
  }
}