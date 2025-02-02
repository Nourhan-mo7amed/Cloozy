import 'package:flutter/material.dart';

class New_Passward extends StatefulWidget {
  @override
  _New_PasswardState createState() => _New_PasswardState();
}

class _New_PasswardState extends State<New_Passward> {
  bool _isPasswordVisible = false;
  bool _isConfirmPasswordVisible = false;

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
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                  child: Image.asset(
                'assets/imeges/cloozy.png',
                width: 200,
              )),
              const SizedBox(height: 50),
              const Text(
                'New Passward',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              const Text("Create a new passward",
                  style: TextStyle(color: Colors.grey, fontSize: 18)),
              const SizedBox(height: 25),
              Align(
                  alignment: Alignment.bottomLeft,
                  child: Text(
                    'Password',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  )),
              SizedBox(height: 5),
              TextField(
                obscureText: !_isPasswordVisible,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  labelText: " Password",
                  labelStyle: TextStyle(color: Colors.grey),
                  iconColor: Colors.grey,
                  suffixIcon: IconButton(
                    icon: Icon(_isPasswordVisible
                        ? Icons.visibility
                        : Icons.visibility_off),
                    onPressed: () {
                      setState(() {
                        _isPasswordVisible = !_isPasswordVisible;
                      });
                    },
                  ),
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 20),
              Align(
                  alignment: Alignment.bottomLeft,
                  child: Text(
                    'Confirm Password',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  )),
              SizedBox(height: 5),
              TextField(
                obscureText: !_isConfirmPasswordVisible,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  labelText: " Password",
                  labelStyle: TextStyle(color: Colors.grey),
                  iconColor: Colors.grey,
                  suffixIcon: IconButton(
                    icon: Icon(_isConfirmPasswordVisible
                        ? Icons.visibility
                        : Icons.visibility_off),
                    onPressed: () {
                      setState(() {
                        _isConfirmPasswordVisible = !_isConfirmPasswordVisible;
                      });
                    },
                  ),
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 40),
              SizedBox(
                width: double.infinity,
                height: 50,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xff003B5C),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    padding: const EdgeInsets.symmetric(vertical: 5),
                  ),
                  child: const Text(
                    "Create new password",
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
