import 'package:countree/drawer.dart';
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
               itemCount: 1,
                 itemBuilder: (index,context){
                 return Padding(
                   padding: const EdgeInsets.all(20.0),
                   child: Column(
                     mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        children: [
                          Image.asset(
                            "assets/images/cart.jpg",
                          ),
                          Container(
                            height: 20,
                            child: Row(
                              children: [
                                Text("50 Planted",style: GoogleFonts.lora(textStyle: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.w600),),),
                              ],
                            ),
                          )
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 8.0),
                        child: Text("Satmat Tree Plantation Camp",style: GoogleFonts.lora(textStyle: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w600),),),
                      ),
                      ListTile(
                        leading: Image.asset(
                          "assets/images/location.png",
                        ),
                        title: Text("N-4,CIDCO, pune, Maharashtra",style: GoogleFonts.lora(textStyle: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.w600),),),
                      )
                    ],
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
