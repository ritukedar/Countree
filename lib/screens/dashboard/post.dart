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
          children: [
            SizedBox(
              height: 30,
            ),
            Image.asset(
              "assets/images/card.png",
              scale: 0.8,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Expanded(
                      flex: 2,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 30.0, vertical: 10),
                        child: GestureDetector(
                          onTap: () {
                            showModalBottomSheet(
                                context: context,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.vertical(
                                      top: Radius.circular(25.0)),
                                ),
                                builder: (BuildContext context) {
                                  return ListTile(
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
                                  );
                                });
                          },
                          child: TextField(
                            style: const TextStyle(
                                fontSize: 20, color: Colors.black87),
                            keyboardType: TextInputType.phone,
                            decoration: InputDecoration(
                                contentPadding:
                                const EdgeInsets.symmetric(vertical: 10.0),
                                fillColor: Colors.white,
                                filled: true,
                                suffixIcon: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 10.0, vertical: 3),
                                  child:
                                  const Icon(Icons.arrow_drop_down_circle),
                                ),
                                hintText: '   List Of Trees Or Others',
                                hintStyle: TextStyle(fontSize: 14),
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10))),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child:Padding(
                        padding: const EdgeInsets.only(right:30.0),
                        child: Container(
                            height: 50, width: 50,
                            decoration: BoxDecoration(
                              color: Color(0xff008101),
                              borderRadius: BorderRadius.all(Radius.circular(10)),
                            ),
                            child: Center(
                              child: Text("100",style:GoogleFonts.lora(textStyle: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18, fontWeight: FontWeight.bold),)),
                            )),
                      ),
                    )
                  ],
                ),
                // Padding(
                //   padding: const EdgeInsets.symmetric(horizontal: 30.0,vertical: 15),
                //   child: Container(
                //     padding: EdgeInsets.symmetric(horizontal: 15.0),
                //     decoration: BoxDecoration(
                //       borderRadius: BorderRadius.circular(10.0),
                //       border: Border.all(
                //           color: Colors.black, width: 0.90),
                //     ),
                //     child: DropdownButton(
                //       isExpanded: true,
                //       hint: Text(
                //         'Select Tree Type : ',
                //         style: TextStyle(
                //           fontFamily: 'OtomanopeeOne-Regular',
                //           fontWeight: FontWeight.normal,
                //           fontSize: 12,
                //         ),
                //       ),
                //       // value: chooseName,
                //       icon: Icon(Icons.arrow_drop_down),
                //       onChanged: (newValue) {
                //         showModalBottomSheet(
                //             context: context,
                //             shape: RoundedRectangleBorder(
                //               borderRadius: BorderRadius.vertical(top: Radius.circular(25.0)),
                //             ),
                //             builder: (BuildContext context) {
                //               return Column(
                //                 children: [
                //
                //                 ],
                //               );
                //             });
                //       },
                //       items: listItemName.map(
                //             (valueItem) {
                //           return DropdownMenuItem(
                //               value: valueItem, child: Text(valueItem));
                //         },
                //       ).toList(),
                //     ),
                //   ),
                // ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30.0),
                  child: Text(
                    "Occassion",
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 30.0, vertical: 10),
                  child: TextField(
                    style: const TextStyle(fontSize: 20, color: Colors.black87),
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
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 30.0, vertical: 10),
                  child: TextField(
                    style: const TextStyle(fontSize: 20, color: Colors.black87),
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
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 30.0, vertical: 10),
                  child: TextField(
                    style: const TextStyle(fontSize: 20, color: Colors.black87),
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
          ],
        ),
      ),
    );
  }
}
