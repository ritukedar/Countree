import 'package:countree/drawer.dart';
import 'package:countree/screens/dashboard/home_discription.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:google_fonts/google_fonts.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
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
      drawer: drawer(),
      body: SingleChildScrollView(
        physics: ScrollPhysics(),
        child: Column(
          children: [
            CustomPaint(
              child: Container(),
              painter: HeaderCurvedContainer(),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: Container(
                      height: 100,
                      width: 170,
                      child: Card(
                        color: Color(0xff7CFFA1),
                        elevation: 5,
                        shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                        child: Container(
                          decoration: BoxDecoration(
                              gradient: LinearGradient(
                                colors: [
                                  // Color(0xff078227),
                                  Color(0xff7CFFA1),
                                  Color(0xff4ef57a),
                                ],
                              ),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                          child: Center(
                            child: ListTile(
                              leading: Image.asset(
                                "assets/images/tree2.jpeg",
                                scale: 3.0,
                              ),
                              title: Text(
                                "100",
                                textAlign: TextAlign.left,
                                style: GoogleFonts.lora(
                                    textStyle: TextStyle(
                                        color: Colors.black,
                                        fontSize: 16.0,
                                        fontWeight: FontWeight.bold)),
                              ),
                              subtitle: Text(
                                "This Month",
                                textAlign: TextAlign.left,
                                style: GoogleFonts.lora(
                                    textStyle: TextStyle(
                                        color: Colors.black,
                                        fontSize: 12.0,
                                        fontWeight: FontWeight.bold)),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: Container(
                      height: 100,
                      width: 170,
                      child: Card(
                        color: Color(0xff7CFFA1),
                        elevation: 5,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10))),
                        child: Container(
                          decoration: BoxDecoration(
                              gradient: LinearGradient(
                                colors: [
                                  // Color(0xff078227),
                                  Color(0xff7CFFA1),
                                  Color(0xff4ef57a),
                                ],
                              ),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                          child: Center(
                            child: ListTile(
                              leading: Image.asset(
                                "assets/images/tree3.jpeg",
                                scale: 3.0,
                              ),
                              title: Text(
                                "1000",
                                textAlign: TextAlign.left,
                                style: GoogleFonts.lora(
                                    textStyle: TextStyle(
                                        color: Colors.black,
                                        fontSize: 16.0,
                                        fontWeight: FontWeight.bold)),
                              ),
                              subtitle: Text(
                                "Total Tree count",
                                textAlign: TextAlign.left,
                                style: GoogleFonts.lora(
                                    textStyle: TextStyle(
                                        color: Colors.black,
                                        fontSize: 12.0,
                                        fontWeight: FontWeight.bold)),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12.0),
              child: GestureDetector(
                  onTap: () {},
                  child: ClipRRect(
                      borderRadius: BorderRadius.circular(10.0),
                      child: Image.asset(
                        "assets/images/banner.png",
                        scale: 0.5,
                      ))),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 800,
              child: ListView.builder(
                  itemCount: 3,
                  itemBuilder: (index, context) {
                    return Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: GestureDetector(
                        onTap: (){
                          Navigator.push(this.context, MaterialPageRoute(builder: (context)=>HomeDiscription()));
                        },
                        child: Card(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Column(
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
                                              alignment: Alignment.bottomCenter,
                                              child: Container(
                                                height: 40,
                                                width: MediaQuery.of(this.context)
                                                    .size
                                                    .width,
                                                color: Colors.black54,
                                                child: Padding(
                                                  padding:
                                                      const EdgeInsets.symmetric(
                                                          horizontal: 20.0,
                                                          vertical: 8),
                                                  child: Text(
                                                    "12 Planted",
                                                    textAlign: TextAlign.left,
                                                    style: TextStyle(
                                                        color: Color(0xff24e92a),
                                                        fontSize: 18.0),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 8.0),
                                  child: Text(
                                    "Satmat Tree Plantation Camp",
                                    style: GoogleFonts.lora(
                                      textStyle: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.w600),
                                    ),
                                  ),
                                ),
                                Row(
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
                              ],
                            ),
                          ),
                        ),
                      ),
                    );
                  }),
            )
          ],
        ),
      ),
    );
  }
}

class HeaderCurvedContainer extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()..color = Color(0xff99fab8);
    Path path = Path()
      ..relativeLineTo(0, 90)
      ..quadraticBezierTo(size.width / 2, 120.0, size.width, 90)
      ..relativeLineTo(0, -90)
      ..close();

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}
