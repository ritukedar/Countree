import 'package:countree/screens/dashboard/home.dart';
import 'package:countree/screens/dashboard/profilee.dart';
import 'package:countree/screens/dashboard/post.dart';
import 'package:flutter/material.dart';

class dashBoard extends StatefulWidget {
  const dashBoard({Key? key}) : super(key: key);

  @override
  _dashBoardState createState() => _dashBoardState();
}

class _dashBoardState extends State<dashBoard> {

  int _selectedIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage("assets/images/home.png"),
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage("assets/images/post.png"),
            ),
            label: 'Post',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage("assets/images/profile.png"),
            ),
            label: 'Profile',
          ),
        ],
        currentIndex: _selectedIndex,
        // elevation: 5,
        iconSize: 30,
        // unselectedFontSize: 40,
        backgroundColor: Colors.white,
        selectedItemColor: Color(0xff008101),
        unselectedItemColor: Colors.lightGreen,
        onTap: _onItemTapped,

      ),
      body: Container(
        child: _widgetOptions.elementAt(_selectedIndex),
    ),
    );
  }
  static final List<Widget> _widgetOptions = <Widget>[
    Home(),
    post(),
    Profile(),
  ];
}
