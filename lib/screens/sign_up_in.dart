import 'package:countree/login.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
          children: [
            Image.asset("assets/images/cart.jpg",
              fit: BoxFit.cover,
              height: double.infinity,
              width: double.infinity,
              alignment: Alignment.center,),
            Positioned(
              left: 0.0,
              right: 0.0,
              bottom: 50.0,
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: ElevatedButton(
                  child: Text('Log In',style: GoogleFonts.poppins(color: Colors.white,fontWeight: FontWeight.w500,fontSize:14 ),),
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>login()));
                  },
                  style: ElevatedButton.styleFrom(
                      primary: Colors.green.withOpacity(0.5),
                      // padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                      textStyle: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold)),
                ),
              ),
            ),
            Positioned(
              left: 0.0,
              right: 0.0,
              bottom: 0.0,
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: ElevatedButton(
                  child: Text('Sign Up',style: GoogleFonts.poppins(color: Colors.lightGreen,fontWeight: FontWeight.w500,fontSize:14 ),),
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      primary: Colors.white,
                      // padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                      textStyle: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold)),
                ),
              ),
            ),
          ]
      ),
    );
  }
}
