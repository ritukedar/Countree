import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OurMission extends StatefulWidget {
  const OurMission({Key? key}) : super(key: key);

  @override
  _OurMissionState createState() => _OurMissionState();
}

class _OurMissionState extends State<OurMission> {
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
      body: SingleChildScrollView(
        physics: ScrollPhysics(),
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Container(
              // margin: EdgeInsets.only(bottom: 50.0),
              child: Stack(
                children: <Widget>[
                  Image.asset(
                    "assets/images/ourmission.jpeg",
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: 20.0),
                  ),
                  Positioned.fill(
                    child: Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                        height: 280,
                        width: MediaQuery.of(this.context).size.width,
                        color: Colors.transparent,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20.0,vertical: 0),
                          child: Column(
                          children: [
                             Row(
                               mainAxisAlignment: MainAxisAlignment.center,
                               children: [
                                 Image.asset(
                                   "assets/images/tree3.jpeg",
                                   scale: 8,
                                 ),
                                 Text(
                                    "1000 Planted",
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.lora(
                                      textStyle: TextStyle(color: Colors.black87, fontSize: 18.0),
                                    )
                                  ),
                               ],
                             ),
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 70.0,vertical: 15),
                              child: Divider(thickness: 2,color: Colors.green,),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset(
                                  "assets/images/tree2.jpeg",
                                  scale: 9,
                                ),
                                Text(
                                  "1 Lakh Target",
                                  textAlign: TextAlign.center,
                                  style: GoogleFonts.lora(
                                    textStyle: TextStyle(color: Colors.black87, fontSize: 18.0),
                                  )
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),)
                ],
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
                  child: Text(
                      "Plant with us! The Countree app presents Satmat Technology which is Tree Plantation Organization form all over Maharashtra. this way you can easily help to plant trees! No matter when and where you are , Because of global reforestation binds least annual man made CO2 emission.",
                      textAlign: TextAlign.start,
                      style: GoogleFonts.lora(
                        textStyle: TextStyle(color: Colors.black87, fontSize: 18.0),
                      )
                  ),
                ) ,
              ),
            )
          ],
        ),
      ),
    );
  }
}
