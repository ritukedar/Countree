import 'package:countree/drawer.dart';
import 'package:flutter/material.dart';

class prof extends StatefulWidget {
  const prof({Key? key}) : super(key: key);

  @override
  _profState createState() => _profState();
}

class _profState extends State<prof> {
  final double circleRadius = 100.0;
  final double circleBorderWidth = 8.0;
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
        iconTheme: IconThemeData(color: Color(0xff0444151)),
      ),
      drawer: drawer(),
      body: SingleChildScrollView(
        physics: NeverScrollableScrollPhysics(),
        child: Column(
          children: [
            CustomPaint(
              child: Container(),
              painter: HeaderCurvedContainer(),
            ),
           Stack(children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Stack(
                    alignment: Alignment.topCenter,
                    children: <Widget>[
                      Padding(
                        padding:
                        EdgeInsets.only(top: circleRadius / 2.0, ),  ///here we create space for the circle avatar to get ut of the box
                        child: Container(
                          height: 180.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15.0),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black26,
                                blurRadius: 8.0,
                                offset: Offset(0.0, 5.0),
                              ),
                            ],
                          ),
                          width: 800,
                          child: Padding(
                              padding: const EdgeInsets.only(top: 15.0, bottom: 0.0),
                              child: Column(
                                children: <Widget>[
                                  SizedBox(height: circleRadius/2,),

                                  Text('Rituja', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0),),
                                  Text('rituja@gmail.com', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14.0, color: Colors.lightBlueAccent),),

                                  SizedBox(
                                    height: 20.0,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 32.0),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                                      children: <Widget>[
                                        Column(
                                          children: <Widget>[
                                              Text('Tree Planted', style: TextStyle( fontSize: 14.0,  color: Colors.black,),),
                                            Text('12', style: TextStyle( fontSize: 18.0, color: Colors.black87, fontFamily: ''),),
                                          ],
                                        ),
                                        Column(
                                          children: <Widget>[
                                            Text('Post', style: TextStyle( fontSize: 14.0,  color: Colors.black),),
                                            Text('12', style: TextStyle( fontSize: 18.0, color: Colors.black87, fontFamily: ''),),
                                          ],
                                        ),
                                        Column(
                                          children: <Widget>[
                                            Text('Donate', style: TextStyle( fontSize: 14.0,  color: Colors.black),),
                                            Text('0', style: TextStyle( fontSize: 18.0, color: Colors.black87, fontFamily: ''),),
                                          ],
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              )
                          ),
                        ),
                      ),
                      Container(
                        width: circleRadius,
                        height: circleRadius,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black26,
                              blurRadius: 8.0,
                              offset: Offset(0.0, 5.0),
                            ),
                          ],
                        ),
                        child: Padding(
                          padding: EdgeInsets.all(4.0),
                          child: Center(
                            child: Container(
                              child: Icon(Icons.person), /// replace your image with the Icon
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ]),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Card(
                    elevation: 5,
                    shape: RoundedRectangleBorder(
                        borderRadius:
                        BorderRadius.all(Radius.circular(7))),
                    child: Column(
                      children: [
                        ListTile(
                          leading: Image.asset(
                            "assets/images/profile.png",
                            scale: 0.9,
                          ),
                          title: Text(
                            'Profile',
                            style: TextStyle(
                              fontFamily: 'OtomanopeeOne-Regular',
                              fontWeight: FontWeight.w600,
                              fontSize: 16,
                            ),
                          ),
                          trailing: Icon(Icons.arrow_forward_ios),
                        ),
                        ListTile(
                          leading: Image.asset(
                            "assets/images/profile.png",
                            scale: 0.9,
                          ),
                          title: Text(
                            'Post',
                            style: TextStyle(
                              fontFamily: 'OtomanopeeOne-Regular',
                              fontWeight: FontWeight.w600,
                              fontSize: 16,
                            ),
                          ),
                          trailing: Icon(Icons.arrow_forward_ios),
                        ),
                        ListTile(
                          leading: Image.asset(
                            "assets/images/about.png",
                            scale: 0.9,
                          ),
                          title: Text(
                            'About Us',
                            style: TextStyle(
                              fontFamily: 'OtomanopeeOne-Regular',
                              fontWeight: FontWeight.w600,
                              fontSize: 16,
                            ),
                          ),
                          trailing: Icon(Icons.arrow_forward_ios),
                        ),
                        ListTile(
                          leading: Image.asset(
                            "assets/images/donate.png",
                            scale: 0.9,
                          ),
                          title: Text(
                            'Donate',
                            style: TextStyle(
                              fontFamily: 'OtomanopeeOne-Regular',
                              fontWeight: FontWeight.w600,
                              fontSize: 16,
                            ),
                          ),
                          trailing: Icon(Icons.arrow_forward_ios),
                        ),
                      ],
                    ),
                  ),
                ),
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
      ..relativeLineTo(0, 200)
      ..quadraticBezierTo(size.width / 2, 210.0, size.width, 200)
      ..relativeLineTo(0, -200)
      ..close();

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}