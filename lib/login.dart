
import 'package:countree/otp_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class login extends StatefulWidget {
  const login({Key? key}) : super(key: key);

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  final _mobileNumberController = TextEditingController();
  bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xffDEF9FF),
      body: Stack(
          children: [
            SingleChildScrollView(
              physics: NeverScrollableScrollPhysics(),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  SizedBox(
                    height: 60,
                  ),
                  Image.asset(
                    "assets/images/logo.png",
                    scale: 1.8,
                  ),
                  const SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.all(30.0),
                    child: TextField(
                      style: const TextStyle(fontSize: 20,color: Colors.black87),
                      controller: _mobileNumberController,
                      inputFormatters: [LengthLimitingTextInputFormatter(10)],
                      keyboardType: TextInputType.phone,
                      decoration: InputDecoration(
                          fillColor: Colors.white,
                          filled: true,
                          prefix: const Text(
                            '+91',
                            style: TextStyle(fontSize: 20),
                          ),
                          label: const Text(
                            'Enter your Mobile Number',
                            style: TextStyle(fontSize: 15),
                          ),
                          hintText: 'Enter your mobile number',
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10))
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>OtpScreen()));
                    },
                    child: isLoading
                        ? const Center(child: CircularProgressIndicator())
                        : Image.asset(
                      'assets/images/arrow.png',
                      scale: 0.7,
                      height: 90,
                      width: 90,
                    ),
                  ),
                  const Text(
                    'Next',
                  ),
                  const SizedBox(height: 20),
                  Image.asset(
                    'assets/images/login.png',
                    height: MediaQuery.of(context).size.height / 2,
                    fit: BoxFit.cover,
                  )
                ],
              ),
            ),]
      ),
    );
  }
}
