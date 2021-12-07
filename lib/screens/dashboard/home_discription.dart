import 'package:countree/const/my_button.dart';
import 'package:countree/screens/razorpay.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeDiscription extends StatefulWidget {
  const HomeDiscription({Key? key}) : super(key: key);

  @override
  _HomeDiscriptionState createState() => _HomeDiscriptionState();
}

class _HomeDiscriptionState extends State<HomeDiscription> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
          color: Colors.black26,
          height: 80,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Rs 600",
                      textAlign: TextAlign.left,
                      style: GoogleFonts.lora(
                          textStyle: TextStyle(
                              color: Colors.black,
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold)),
                    ),
                    Text(
                      "per tree",
                      textAlign: TextAlign.left,
                      style: GoogleFonts.lora(
                          textStyle: TextStyle(
                              color: Colors.black,
                              fontSize: 14.0,
                              fontWeight: FontWeight.bold)),
                    ),
                  ],
                ),
              ),
          Padding(
              padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
              child: GestureDetector(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>razorPayment()));
                  },
                  child: MyButton(
                    text: "Donate",
                  )),
            ),
            ],
          ),
        ),
      appBar: AppBar(
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 68.0),
            child: Image.asset(
              "assets/images/logo.png",
              scale: 2.5,
            ),
          ),
        ],
        backgroundColor: Color(0xff99fab8),
        iconTheme: IconThemeData(color: Color(0xff044415)),
      ),
      body: SingleChildScrollView(
        physics: ScrollPhysics(),
        child: Column(
          children: [
            Stack(
              children: <Widget>[
                Image.asset(
                  "assets/images/cart.jpg",
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 20.0),
                ),
                Positioned.fill(
                  child: Align(
                    alignment: Alignment.bottomLeft,
                    child: Container(
                      height: 40,
                      width: MediaQuery.of(this.context).size.width,
                      color: Colors.black54,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // Image.asset(
                          //   "assets/images/logo.png",
                          //   scale: 2.5,
                          // ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "12 Trees Planted",
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                  color: Colors.white, fontSize: 18.0),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              "Satmat Tree Plantation Camp",
              textAlign: TextAlign.left,
              style: GoogleFonts.lora(
                  textStyle: TextStyle(
                      color: Colors.black,
                      fontSize: 24.0,
                      fontWeight: FontWeight.bold)),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18.0,vertical: 5),
              child: Row(
                children: [
                  Image.asset(
                    "assets/images/location.png",
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "N-4,CIDCO, pune, Maharashtra",
                      style: GoogleFonts.lora(
                        textStyle: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Container(
                decoration: BoxDecoration(
                    border: Border.all(
                      width: 1,
                      color: Colors.black54,
                      style: BorderStyle.solid,
                    ),
                    borderRadius:
                    BorderRadius.all(Radius.circular(10))),
                child:Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(bottom: 8.0),
                        child: Text(
                          "About",
                          textAlign: TextAlign.left,
                          style: GoogleFonts.lora(
                              textStyle: TextStyle(
                                  color: Colors.black,
                                  fontSize: 22.0,
                                  fontWeight: FontWeight.bold)),
                        ),
                      ),
                      Text(
                          "Plant with us! The Countree app presents Satmat Technology which is Tree Plantation Organization form all over Maharashtra. this way you can easily help to plant trees! No matter when and where you are , Because of global reforestation binds least annual man made CO2 emission.",
                          textAlign: TextAlign.start,
                          style: GoogleFonts.lora(
                            textStyle: TextStyle(color: Colors.black87, fontSize: 16.0),
                          )
                      ),
                    ],
                  ),
                ) ,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Container(
                decoration: BoxDecoration(
                    border: Border.all(
                      width: 1,
                      color: Colors.black54,
                      style: BorderStyle.solid,
                    ),
                    borderRadius:
                    BorderRadius.all(Radius.circular(10))),
                child:Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(bottom: 8.0),
                        child: Text(
                          "Contact Us ",
                          textAlign: TextAlign.left,
                          style: GoogleFonts.lora(
                              textStyle: TextStyle(
                                  color: Colors.black,
                                  fontSize: 22.0,
                                  fontWeight: FontWeight.bold)),
                        ),
                      ),
                      ListTile(
                        leading: Icon(Icons.language_outlined,size: 40,),
                        title: Text(
                              "Satmat Technology Pvt.Ltd",
                            textAlign: TextAlign.start,
                            style: GoogleFonts.lora(
                              textStyle: TextStyle(color: Colors.black87, fontSize: 16.0),
                            )
                        ),
                      ),
                      ListTile(
                        leading: Icon(Icons.location_on_outlined,size: 40),
                        title: Text(
                              "City Tower, 301 & 302, Boat Club Rd, Pune, Maharashtra 411001",
                            textAlign: TextAlign.start,
                            style: GoogleFonts.lora(
                              textStyle: TextStyle(color: Colors.black87, fontSize: 16.0),
                            )
                        ),
                      ),
                      ListTile(
                        leading: Icon(Icons.email,size: 40),
                        title: Text(
                              "info@satmatgroup.com",
                            textAlign: TextAlign.start,
                            style: GoogleFonts.lora(
                              textStyle: TextStyle(color: Colors.black87, fontSize: 16.0),
                            )
                        ),
                      ),
                    ],
                  ),
                ) ,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
