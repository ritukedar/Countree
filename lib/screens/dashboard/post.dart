import 'package:countree/drawer.dart';
import 'package:flutter/material.dart';

class post extends StatefulWidget {
  const post({Key? key}) : super(key: key);

  @override
  _postState createState() => _postState();
}

class _postState extends State<post> {
  List<String> listItemName = ['banana', 'neem',];
  late String chooseName;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Countree',style: TextStyle(color:Color(0xff008101),fontWeight: FontWeight.w700 ),),
        backgroundColor: Color(0xffDEF9FF),
        iconTheme: IconThemeData(color: Color(0xff008101)),
      ),
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
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30.0,vertical: 15),
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 15.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      border: Border.all(
                          color: Colors.black, width: 0.90),
                    ),
                    child: DropdownButton(
                      isExpanded: true,
                      hint: Text(
                        'Select Tree Type : ',
                        style: TextStyle(
                          fontFamily: 'OtomanopeeOne-Regular',
                          fontWeight: FontWeight.normal,
                          fontSize: 12,
                        ),
                      ),
                      // value: chooseName,
                      icon: Icon(Icons.arrow_drop_down),
                      onChanged: (newValue) {
                        setState(() {
                          // chooseName = newValue;
                        });
                      },
                      items: listItemName.map(
                            (valueItem) {
                          return DropdownMenuItem(
                              value: valueItem, child: Text(valueItem));
                        },
                      ).toList(),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30.0),
                  child: Text(
                    "Occassion",
                    style: TextStyle(
                        fontSize: 14, fontWeight: FontWeight.w500),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30.0,vertical: 10),
                  child: TextField(
                    style: const TextStyle(fontSize: 20,color: Colors.black87),
                    // controller: _mobileNumberController,
                    keyboardType: TextInputType.phone,
                    decoration: InputDecoration(
                        contentPadding: const EdgeInsets.symmetric(vertical: 10.0),
                        fillColor: Colors.white,
                        filled: true,
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10))
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30.0),
                  child: Text(
                    "Add Description",
                    style: TextStyle(
                        fontSize: 14, fontWeight: FontWeight.w500),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30.0,vertical: 10),
                  child: TextField(
                    style: const TextStyle(fontSize: 20,color: Colors.black87),
                    // controller: _mobileNumberController,
                    keyboardType: TextInputType.phone,
                    decoration: InputDecoration(
                        contentPadding: const EdgeInsets.symmetric(vertical: 40.0),
                        fillColor: Colors.white,
                        filled: true,
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10))
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30.0),
                  child: Text(
                    "Location",
                    style: TextStyle(
                        fontSize: 14, fontWeight: FontWeight.w500),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30.0,vertical: 10),
                  child: TextField(
                    style: const TextStyle(fontSize: 20,color: Colors.black87),
                    // controller: _mobileNumberController,
                    keyboardType: TextInputType.phone,
                    decoration: InputDecoration(
                        contentPadding: const EdgeInsets.symmetric(vertical: 40.0),
                        fillColor: Colors.white,
                        filled: true,
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10))
                    ),
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
