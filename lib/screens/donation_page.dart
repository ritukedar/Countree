import 'package:countree/const/my_button.dart';
import 'package:countree/screens/razorpay.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:google_fonts/google_fonts.dart';

class Donation extends StatefulWidget {
  const Donation({Key? key}) : super(key: key);

  @override
  _DonationState createState() => _DonationState();
}

class _DonationState extends State<Donation> {
  TextEditingController treeCount = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
        // bottomNavigationBar: Padding(
        //   padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
        //   child: GestureDetector(
        //       onTap: () {},
        //       child: MyButton(
        //         text: "Donate",
        //       )),
        // ),
        body: SingleChildScrollView(
          physics: ScrollPhysics(),
          child: Column(
            children: [
              Container(
                // margin: EdgeInsets.only(bottom: 50.0),
                child: Stack(
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
                          height: 70,
                          width: MediaQuery.of(this.context).size.width,
                          color: Colors.transparent,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              // Image.asset(
                              //   "assets/images/logo.png",
                              //   scale: 2.5,
                              // ),
                              Text(
                                "Satmat Tree Plantation Camp",
                                textAlign: TextAlign.left,
                                style: GoogleFonts.lora(
                                    textStyle: TextStyle(
                                        color: Colors.white,
                                        fontSize: 24.0,
                                        fontWeight: FontWeight.bold)),
                              ),
                              Text(
                                "12 Trees Planted",
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                    color: Colors.white, fontSize: 18.0),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 500,
                width: MediaQuery.of(context).size.width,
                child: Card(
                  elevation: 3,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(30))),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 18.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 12.0),
                          child: Text(
                            "Rituja Kedar",
                            textAlign: TextAlign.left,
                            style: GoogleFonts.lora(
                                textStyle: TextStyle(
                                    color: Colors.black,
                                    fontSize: 18.0,
                                    fontWeight: FontWeight.w500)),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 12.0),
                          child: Text(
                            "DONATE",
                            textAlign: TextAlign.left,
                            style: GoogleFonts.lora(
                                textStyle: TextStyle(
                                    color: Colors.black,
                                    fontSize: 30.0,
                                    fontWeight: FontWeight.bold)),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Wrap(
                          children: [
                            Container(
                              width: 150,
                              decoration: BoxDecoration(
                                  border: Border.all(
                                    width: 1,
                                    color: Colors.green,
                                    style: BorderStyle.solid,
                                  ),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10))),
                              child: ListTile(
                                leading: Image.asset(
                                  "assets/images/tree.jpeg",
                                  scale: 3.0,
                                ),
                                title: Text(
                                  "10",
                                  textAlign: TextAlign.left,
                                  style: GoogleFonts.lora(
                                      textStyle: TextStyle(
                                          color: Colors.black,
                                          fontSize: 16.0,
                                          fontWeight: FontWeight.bold)),
                                ),
                                subtitle: Text(
                                  "Trees",
                                  textAlign: TextAlign.left,
                                  style: GoogleFonts.lora(
                                      textStyle: TextStyle(
                                          color: Colors.black,
                                          fontSize: 16.0,
                                          fontWeight: FontWeight.bold)),
                                ),
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 15.0),
                              child: Container(
                                width: 150,
                                decoration: BoxDecoration(
                                    border: Border.all(
                                      width: 1,
                                      color: Colors.green,
                                      style: BorderStyle.solid,
                                    ),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10))),
                                child: ListTile(
                                  leading: Image.asset(
                                    "assets/images/tree2.jpeg",
                                    scale: 3.0,
                                  ),
                                  title: Text(
                                    "20",
                                    textAlign: TextAlign.left,
                                    style: GoogleFonts.lora(
                                        textStyle: TextStyle(
                                            color: Colors.black,
                                            fontSize: 16.0,
                                            fontWeight: FontWeight.bold)),
                                  ),
                                  subtitle: Text(
                                    "Trees",
                                    textAlign: TextAlign.left,
                                    style: GoogleFonts.lora(
                                        textStyle: TextStyle(
                                            color: Colors.black,
                                            fontSize: 16.0,
                                            fontWeight: FontWeight.bold)),
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 15),
                              child: Container(
                                width: 150,
                                decoration: BoxDecoration(
                                    border: Border.all(
                                      width: 1,
                                      color: Colors.green,
                                      style: BorderStyle.solid,
                                    ),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10))),
                                child: ListTile(
                                  leading: Image.asset(
                                    "assets/images/tree5.jpeg",
                                    scale: 3.0,
                                  ),
                                  title: Text(
                                    "30",
                                    textAlign: TextAlign.left,
                                    style: GoogleFonts.lora(
                                        textStyle: TextStyle(
                                            color: Colors.black,
                                            fontSize: 16.0,
                                            fontWeight: FontWeight.bold)),
                                  ),
                                  subtitle: Text(
                                    "Trees",
                                    textAlign: TextAlign.left,
                                    style: GoogleFonts.lora(
                                        textStyle: TextStyle(
                                            color: Colors.black,
                                            fontSize: 16.0,
                                            fontWeight: FontWeight.bold)),
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 15, horizontal: 15),
                              child: Container(
                                width: 160,
                                decoration: BoxDecoration(
                                    border: Border.all(
                                      width: 1,
                                      color: Colors.green,
                                      style: BorderStyle.solid,
                                    ),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10))),
                                child: ListTile(
                                  leading: Image.asset(
                                    "assets/images/tree3.jpeg",
                                    scale: 3.0,
                                  ),
                                  title: TextField(
                                    style: const TextStyle(
                                        fontSize: 20, color: Colors.black87),
                                    controller: treeCount,
                                    keyboardType: TextInputType.phone,
                                    decoration: InputDecoration(
                                      fillColor: Colors.white,
                                      filled: true,
                                    ),
                                  ),
                                  subtitle: Text(
                                    "Trees",
                                    textAlign: TextAlign.left,
                                    style: GoogleFonts.lora(
                                        textStyle: TextStyle(
                                            color: Colors.black,
                                            fontSize: 16.0,
                                            fontWeight: FontWeight.bold)),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          "Rupiee Rs 600 per tree",
                          textAlign: TextAlign.left,
                          style: GoogleFonts.lora(
                              textStyle: TextStyle(
                                  color: Colors.black87,
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.bold)),
                        ),
                        Divider(
                          thickness: 1,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 58.0, vertical: 10),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                "Rs 600.00 for 20 tree",
                                textAlign: TextAlign.center,
                                style: GoogleFonts.lora(
                                    textStyle: TextStyle(
                                        color: Colors.black87,
                                        fontSize: 16.0,
                                        fontWeight: FontWeight.bold)),
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    vertical: 15, horizontal: 20),
                                child: GestureDetector(
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  razorPayment()));
                                    },
                                    child: MyButton(
                                      text: "Donate",
                                    )),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ));
  }
}
