import 'package:flutter/material.dart';

class Certificate extends StatefulWidget {
  const Certificate({Key? key}) : super(key: key);

  @override
  _CertificateState createState() => _CertificateState();
}

class _CertificateState extends State<Certificate> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Countree',style: TextStyle(color:Color(0xff008101),fontWeight: FontWeight.w700 ),),
        backgroundColor: Color(0xffDEF9FF),
        iconTheme: IconThemeData(color: Color(0xff008101)),
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 50,
            ),
            Image.asset(
              "assets/images/certif.png",
              scale: 0.9,
            ),
          Container(
            height: 400,
            child: ListView.builder(
              itemCount: 4,
                itemBuilder: (index,context){
                return  Padding(
                  padding: const EdgeInsets.all(8.0),
                  child:  Card(
                      elevation: 5,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(7))),
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                 Text(
                                    "Total Tree Count",
                                    style: TextStyle(
                                        fontSize: 14, fontWeight: FontWeight.w500),
                                  ),

                                Text(
                                  "100",
                                  style: TextStyle(
                                      fontSize: 14, fontWeight: FontWeight.w500),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                 Text(
                                    "Date of Plantation",
                                    style: TextStyle(
                                        fontSize: 14, fontWeight: FontWeight.w500),
                                  ),

                                Text(
                                  "18-07-2021",
                                  style: TextStyle(
                                      fontSize: 14, fontWeight: FontWeight.w500),
                                ),
                              ],
                            ),
                          ],
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
