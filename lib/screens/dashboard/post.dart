import 'package:countree/const/my_button.dart';
import 'package:countree/const/singleton.dart';
import 'package:countree/drawer.dart';
import 'package:countree/screens/dashboard/dashboard.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class post extends StatefulWidget {
  const post({Key? key}) : super(key: key);

  @override
  _postState createState() => _postState();
}

class _postState extends State<post> {
  List<String> listItemName = [
    'banana',
    'neem',
  ];
  late String chooseName;
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
        iconTheme: IconThemeData(color: Color(0xff008101)),
      ),
      floatingActionButton: FloatingActionButton(
          elevation: 0.0,
          child: new Icon(
            Icons.check,
            size: 40,
          ),
          backgroundColor: new Color(0xff008101),
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => dashBoard()));
            Singleton.showmsg(
                context, "Successful", "Congratulations Tree Planted");
          }),
      drawer: drawer(),
      body: SingleChildScrollView(
        physics: ScrollPhysics(),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18.0),
              child: Text(
                'Register Trees',
                style: TextStyle(
                  fontFamily: 'OtomanopeeOne-Regular',
                  fontWeight: FontWeight.bold,
                  fontSize: 22,
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18.0),
              child: Text(
                'Please use this form to register the trees you have planted personally',
                style: TextStyle(
                  fontFamily: 'OtomanopeeOne-Regular',
                  fontWeight: FontWeight.w600,
                  fontSize: 16,
                ),
              ),
            ),
            // Image.asset(
            //   "assets/images/card.png",
            //   scale: 0.8,
            // ),
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
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 28.0),
                  child: Text(
                                          'Add Image',
                                          style: TextStyle(
                                            fontFamily: 'OtomanopeeOne-Regular',
                                            fontWeight: FontWeight.w600,
                                            fontSize: 16,
                                          ),
                                        ),
                ),
                    Row(
                      children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 30.0,vertical: 10),
                        child: Container(
                          color: Colors.black26,
                          height: 70,
                            width: 70,
                            child: Icon(Icons.add_a_photo_outlined,size: 60,)),
                      ),
                        Container(
                            color: Colors.black26,
                            height: 70,
                            width: 70,
                            child: Icon(Icons.collections_outlined,size: 60,)),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30.0),
                      child: Text(
                        "Occassion",
                        style:
                            TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 30.0, vertical: 10),
                      child: TextField(
                        style:
                            const TextStyle(fontSize: 20, color: Colors.black87),
                        // controller: _mobileNumberController,
                        keyboardType: TextInputType.phone,
                        decoration: InputDecoration(
                            contentPadding:
                                const EdgeInsets.symmetric(vertical: 10.0),
                            fillColor: Colors.white,
                            filled: true,
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10))),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30.0),
                      child: Text(
                        "Add Description",
                        style:
                            TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 30.0, vertical: 10),
                      child: TextField(
                        style:
                            const TextStyle(fontSize: 20, color: Colors.black87),
                        // controller: _mobileNumberController,
                        keyboardType: TextInputType.phone,
                        decoration: InputDecoration(
                            contentPadding:
                                const EdgeInsets.symmetric(vertical: 40.0),
                            fillColor: Colors.white,
                            filled: true,
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10))),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30.0),
                      child: Text(
                        "Location",
                        style:
                            TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 30.0, vertical: 10),
                      child: TextField(
                        style:
                            const TextStyle(fontSize: 20, color: Colors.black87),
                        // controller: _mobileNumberController,
                        keyboardType: TextInputType.phone,
                        decoration: InputDecoration(
                            contentPadding:
                                const EdgeInsets.symmetric(vertical: 40.0),
                            fillColor: Colors.white,
                            filled: true,
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10))),
                      ),
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
