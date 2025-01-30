import 'package:flutter/material.dart';

class Nextpage extends StatelessWidget {
  const Nextpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 60),
            Center(
              child: Text(
                'Cloozy',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Cursive',
                ),
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              'Sign Up',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            const Text('Create anew account',
                style: TextStyle(color: Colors.grey, fontSize: 20)),
            const SizedBox(height: 20),
            Align(
                alignment: Alignment.bottomLeft,
                child: Text(
                  'Password',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                )),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                labelText: "Password",
                labelStyle: TextStyle(color: Colors.grey),
                suffixIcon: Icon(Icons.visibility_off_outlined),
                iconColor: Colors.grey,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
            ),
            const SizedBox(height: 10),
            Align(
                alignment: Alignment.bottomLeft,
                child: Text(
                  'Confirm Password',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                )),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                labelText: " Password",
                labelStyle: TextStyle(color: Colors.grey),
                suffixIcon: Icon(Icons.visibility_off_outlined),
                iconColor: Colors.grey,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
            ),
            Row(
              children: [
                Checkbox(value: false, onChanged: (value) {}),
                const Text('I agree to the '),
                Text(
                  'Terms Of Conditions',
                  style: TextStyle(color: Colors.red),
                ),
              ],
            ),
            const SizedBox(height: 20),
            SizedBox(
              width: double.infinity,
              height: 50,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return Nextpage();
                  }));
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xff003B5C),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  padding: const EdgeInsets.symmetric(vertical: 5),
                ),
                child: Center(
                  child: const Text('Create new account',
                      style: TextStyle(fontSize: 20, color: Colors.white)),
                ),
              ),
            ),
            const SizedBox(height: 10),
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Already have an account? ',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'Login',
                    style: TextStyle(
                        color: Color(0xff003B5C), fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTextField(String label) {
    return TextField(
      obscureText: true,
      decoration: InputDecoration(
        labelText: label,
        border: OutlineInputBorder(),
        suffixIcon: Icon(Icons.visibility_off),
      ),
    );
  }
}
