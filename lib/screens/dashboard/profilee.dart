import 'package:countree/drawer.dart';
import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
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
        backgroundColor: Color(0xffDEF9FF),
        iconTheme: IconThemeData(color: Color(0xff044415)),
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
            SizedBox(
              height: 10,
            ),
             Row(
                children: [
                  Expanded(
                    child: Image.asset(
                      "assets/images/pic.png",
                      scale: 0.8,
                    ),
                  ),
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                            "Name : ritu ",
                            style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.w500),
                          ),
                       Padding(
                         padding: const EdgeInsets.only(top: 8.0),
                         child: Text(
                              "Mobile No : 81762539127",
                              style: TextStyle(
                                  fontSize: 14, fontWeight: FontWeight.bold),
                            ),
                       ),
                        Padding(
                          padding: const EdgeInsets.only(top: 8.0),
                          child: Text(
                              "Email ID : rituja@1gmail.com",
                              style: TextStyle(
                                  fontSize: 14, fontWeight: FontWeight.bold),
                            ),
                        ),
                       Padding(
                         padding: const EdgeInsets.only(top: 8.0),
                         child: Text(
                              "Tree Plantation Count : 130",
                              style: TextStyle(
                                  fontSize: 14, fontWeight: FontWeight.bold),
                            ),
                       ),
                      ],
                    ),
                  ),
                ],
              ),
            SizedBox(
              height: 40,
            ),
            SingleChildScrollView(
              physics: ScrollPhysics(),
              child: Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                child: Card(
                  elevation: 10,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(50))),
                  child: Container(
                    height: 500,
                    child: ListView.builder(
                        itemCount: 3,
                        itemBuilder: (index, context) {
                          return Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Card(
                                // color: Color(0xff7CFFA1),
                                elevation: 5,
                                shape: RoundedRectangleBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(7))),
                                child: Column(
                                  children: [
                                    ListTile(
                                      leading: Icon(Icons.expand),
                                      title: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "Name of Person",
                                            style: TextStyle(
                                                fontSize: 12,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          Text(
                                            "Location",
                                            style: TextStyle(
                                                fontSize: 12,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ],
                                      ),
                                      trailing: Text("100"),
                                    ),
                                    Row(
                                      children: [
                                        Image.asset(
                                          "assets/images/card.png",
                                          scale: 0.8,
                                        ),
                                        Text(
                                          "Discription",
                                          style: TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ],
                                    )
                                  ],
                                )),
                          );
                        }),
                  ),
                ),
              ),
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
    Paint paint = Paint()..color = Color(0xffDEF9FF);
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
