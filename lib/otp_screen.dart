
import 'package:countree/screens/dashboard/dashboard.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class OtpScreen extends StatefulWidget {
  static const routename = '/otp-screen';

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xffDEF9FF),
        body: Stack(
            children: [
              SingleChildScrollView(
                physics: NeverScrollableScrollPhysics(),
                child: Padding(
                  padding: const EdgeInsets.only(top: 70),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Image.asset(
                        "assets/images/logo.png",
                        scale: 1.8,
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      Text('Please enter the OTP sent on userMobile',
                          style: const TextStyle(fontWeight: FontWeight.bold)),
                      const SizedBox(height: 10),
                      Form(
                        child: Padding(
                          padding: const EdgeInsets.all(30.0),
                          child: PinCodeTextField(
                            appContext: context,
                            length: 5,
                            onCompleted: (v) {},
                            onChanged: (value) {
                            },
                            keyboardType: TextInputType.number,
                            animationType: AnimationType.fade,
                            pinTheme: PinTheme(
                                shape: PinCodeFieldShape.box,
                                borderRadius: BorderRadius.circular(10),
                                fieldHeight: 50,
                                fieldWidth: 50,
                                activeColor: Colors.blue,
                                inactiveColor: const Color(0xff707070),
                                activeFillColor: Colors.blue,
                                selectedFillColor: Colors.blue),
                          ),
                        ),
                      ),
                      // const SizedBox(height: 30),
                      InkWell(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>dashBoard()));
                        },
                        child: isLoading
                            ? const Center(child: CircularProgressIndicator())
                            : Image.asset(
                          'assets/images/arrow.png',
                          scale: 0.6,
                          height: 50,
                          width: 50,
                        ),
                      ),
                      const Text(
                        'Login',
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      Image.asset(
                        'assets/images/otp.png',
                        scale: 0.7,
                        height: MediaQuery.of(context).size.height / 2,
                      )
                    ],
                  ),
                ),
              ),]
        ));
  }
}
