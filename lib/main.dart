import 'package:countree/splash_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const mainDart());
}

class mainDart extends StatefulWidget {
  const mainDart({Key? key}) : super(key: key);

  @override
  _mainDartState createState() => _mainDartState();
}

class _mainDartState extends State<mainDart> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
    home: SplashScreen(),
    );
  }
}
