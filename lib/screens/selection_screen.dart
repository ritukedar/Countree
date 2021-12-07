import 'package:countree/const/my_button.dart';
import 'package:countree/screens/dashboard/dashboard.dart';
import 'package:countree/screens/dashboard/post.dart';
import 'package:countree/screens/donation_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SelectionScreen extends StatefulWidget {
  const SelectionScreen({Key? key}) : super(key: key);

  @override
  _SelectionScreenState createState() => _SelectionScreenState();
}

class _SelectionScreenState extends State<SelectionScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  Stack(
        children: [
          // Image.asset("assets/images/cart.jpg",
          //   fit: BoxFit.cover,
          //   height: double.infinity,
          //   width: double.infinity,
          //   alignment: Alignment.center,),
          Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 100,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 18.0),
                  child: Text(
                    "Hello !!",
                    style: GoogleFonts.lora(
                      textStyle: TextStyle(
                          fontSize: 30,
                          color: Colors.black,
                          fontWeight: FontWeight.w700),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 18.0),
                  child: Text(
                    "Rituja kedar",
                    style: GoogleFonts.lora(
                      textStyle: TextStyle(
                          fontSize: 18,
                          color: Colors.black,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 18.0),
                  child: Text(
                    "Welcome to our plant for the Planet Our project aims 1000 new Trees in 2022",
                    style: GoogleFonts.lora(
                      textStyle: TextStyle(
                          fontSize: 18,
                          // color: Color(0xff27d120),
                          color: Colors.black,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Expanded(
                        child: GestureDetector(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>post()));
                          },
                          child: Container(
                            height: 150,
                            width: 70,
                            child: Card(
                              color: Color(0xff12b117),
                                elevation: 5,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.all(Radius.circular(10))),
                              child: Padding(
                                padding: const EdgeInsets.only(top: 28.0),
                                child: Column(
                                    children: [
                                      Image.asset(
                                        "assets/images/donate.png",
                                        scale: 0.6,
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(top: 8.0),
                                        child: Text(
                                          'Plantion',
                                          style: GoogleFonts.lora(
                                            textStyle: TextStyle(
                                              fontFamily: 'OtomanopeeOne-Regular',
                                              fontWeight: FontWeight.w600,
                                              fontSize: 18,
                                            ),
                                          )
                                        ),
                                      ),
                                    ],
                                  ),
                                )
                              ),
                            ),
                        ),
                        ),
                      SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        child: GestureDetector(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>Donation()));
                          },
                          child: Container(
                          height: 150,
                          width: 70,
                          child: Card(
                              color: Color(0xffded90a),
                              elevation: 5,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.all(Radius.circular(10))),
                            child: Padding(
                              padding: const EdgeInsets.only(top: 28.0),
                              child: Column(
                                children: [
                                  Image.asset(
                                    "assets/images/donate.png",
                                    scale: 0.6,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 8.0),
                                    child: Text(
                                        'Donate',
                                        style: GoogleFonts.lora(
                                          textStyle: TextStyle(
                                            fontFamily: 'OtomanopeeOne-Regular',
                                            fontWeight: FontWeight.w600,
                                            fontSize: 18,
                                          ),
                                        )
                                    ),
                                  ),
                                ],
                              ),
                            )
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        child: GestureDetector(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>post()));
                          },
                          child: Container(
                          height: 150,
                          width: 70,
                          child: Card(
                              color: Color(0xff5e65cb),
                              elevation: 5,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.all(Radius.circular(10))),
                            child: Padding(
                              padding: const EdgeInsets.only(top: 28.0),
                              child: Column(
                                children: [
                                  Image.asset(
                                    "assets/images/donate.png",
                                    scale: 0.6,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 8.0),
                                    child: Text(
                                        'Maintain',
                                        style: GoogleFonts.lora(
                                          textStyle: TextStyle(
                                            fontFamily: 'OtomanopeeOne-Regular',
                                            fontWeight: FontWeight.w600,
                                            fontSize: 18,
                                          ),
                                        )
                                    ),
                                  ),
                                ],
                              ),
                            )
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          Positioned(
            left: 20.0,
            right: 20.0,
            bottom: 120.0,
            child: Text(
                'Next',
                textAlign: TextAlign.center,
                style: GoogleFonts.lora(
                  textStyle: TextStyle(
                    fontFamily: 'OtomanopeeOne-Regular',
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                    fontSize: 22,
                  ),
                )
            ),
          ),
          Positioned(
            left: 20.0,
            right: 20.0,
            bottom: 50.0,
            child: GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>dashBoard()));
                },
                child: Image.asset(
                  "assets/images/arrow.png",
                  scale: 0.6,
                  alignment: Alignment.bottomCenter,
                ),),
          ),
        ],
      ),
    );
  }
}
