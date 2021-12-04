
import 'package:flutter/material.dart';

class Singleton {
  static void showmsg(BuildContext context, title, text) {

    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            backgroundColor: Colors.white,
            title: Text(title),
            content: Text(text),
            actions: <Widget>[
              FlatButton(
                child: Text('OK',style: TextStyle(color:Colors.black),),
                onPressed: () {
                  Navigator.pop(context);
                },
              )
            ],
          );
        });
  }
}

