import 'package:flutter/material.dart';
import 'package:hello_world/screens/New_Passward_Page.dart';
import 'package:pinput/pinput.dart';

class OTP_Page extends StatelessWidget {
  const OTP_Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xffF7F7F7),
        appBar: AppBar(
          backgroundColor: Color(0xffF7F7F7),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Center(
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Center(
                  child: Image.asset(
                'assets/imeges/cloozy.png',
                width: 200,
              )),
              const SizedBox(height: 50),
              const Text(
                'Enter Code',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              const Text(
                  "We've sent a message with an activation code to your email cs*********@**",
                  style: TextStyle(color: Colors.grey, fontSize: 20)),
              const SizedBox(height: 25),

              // OTP Input Field
              Pinput(
                length: 6,
                keyboardType: TextInputType.number,
                showCursor: true,
                onCompleted: (pin) {
                  print("OTP Entered: $pin");
                },
              ),

              const SizedBox(height: 25),
              SizedBox(
                width: double.infinity,
                height: 50,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return New_Passward();
                    }));
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xff003B5C),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    padding: const EdgeInsets.symmetric(vertical: 5),
                  ),
                  child: const Text(
                    "Verify",
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Didn't receive OTP?  "),
                  const Text(
                    "Re-send Code",
                    style: TextStyle(
                        color: Color(0xff003B5C), fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ]),
          ),
        ));
  }
}
