import 'package:countree/const/my_button.dart';
import 'package:flutter/material.dart';

class Donation extends StatefulWidget {
  const Donation({Key? key}) : super(key: key);

  @override
  _DonationState createState() => _DonationState();
}

class _DonationState extends State<Donation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Countree',style: TextStyle(color:Color(0xff008101),fontWeight: FontWeight.w700 ),),
        backgroundColor: Color(0xffDEF9FF),
        iconTheme: IconThemeData(color: Color(0xff008101)),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
        child: GestureDetector(
            onTap: () {},
            child: MyButton(
              text: "Donate",
            )),
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Image.asset(
              "assets/images/donationpage.png",
              scale: 0.8,
            ),
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: Text(
                "We provide the service of plants  donation. We plant the trees on the be half of the person who wants to plant the trees but does not get time from his/her shedule. This is just a small intatives started by us to our planet beautiful and to reduce the polution around us.",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
