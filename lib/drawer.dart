import 'package:countree/screens/certificate.dart';
import 'package:countree/screens/demo.dart';
import 'package:countree/screens/donation_page.dart';
import 'package:countree/screens/maps.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class drawer extends StatefulWidget {
  @override
  _drawerState createState() => _drawerState();
}

class _drawerState extends State<drawer> {


  @override
  void initState() {
    // TODO: implement initState

    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return  Container(
        width: 280,
        child: Theme(
          data: Theme.of(context).copyWith(
            canvasColor: Color(0xffDEF9FF), //This will change the drawer background to blue.
            //other styles
          ),
          child: Drawer(
            elevation: 30,
            child: ListView(
              padding: EdgeInsets.zero,
              children: <Widget>[
                SizedBox(
                  height: 120,
                ),
                InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>MyHomePage(title: '',)));
                  },
                  child: ListTile(
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
                  ),
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
                ),
                ListTile(
                  leading: Image.asset(
                    "assets/images/policies.png",
                    scale: 0.9,
                  ),
                  title: Text(
                    'Policies',
                    style: TextStyle(
                      fontFamily: 'OtomanopeeOne-Regular',
                      fontWeight: FontWeight.w600,
                      fontSize: 16,
                    ),
                  ),
                ),
                InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>Donation()));
                  },
                  child: ListTile(
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
                  ),
                ),
                InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>Certificate()));
                  },
                  child: ListTile(
                    leading: Image.asset(
                      "assets/images/certificate.png",
                      scale: 0.9,
                    ),
                    title: Text(
                      'Certificate',
                      style: TextStyle(
                        fontFamily: 'OtomanopeeOne-Regular',
                        fontWeight: FontWeight.w600,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
                InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>MapSample()));
                  },
                  child: ListTile(
                    leading: Image.asset(
                      "assets/images/location.png",
                      scale: 0.9,
                    ),
                    title: Text(
                      'Location',
                      style: TextStyle(
                        fontFamily: 'OtomanopeeOne-Regular',
                        fontWeight: FontWeight.w600,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
                ListTile(
                  leading: Image.asset(
                    "assets/images/arrow.png",
                    scale: 1.1,
                  ),
                  title: Text(
                    'Log Out',
                    style: TextStyle(
                      fontFamily: 'OtomanopeeOne-Regular',
                      fontWeight: FontWeight.w600,
                      fontSize: 16,
                    ),
                  ),
                ),
                Divider(thickness: 1,),
                ListTile(
                  title: Row(
                    children: [
                      Text(
                        'Version - ',
                        style: TextStyle(fontSize: 11),
                      ),
                      Text(
                        '1.0.0',
                        style: TextStyle(fontSize: 11),
                      ),
                    ],
                  ),
                  onTap: () {},
                ),
              ],
            ),
          ),
        ),
    );
  }
}

