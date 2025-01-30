import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:hello_world/screens/NextPage.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  String selectedGender = "female"; // القيمة الافتراضية

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Center(
                  child: Text(
                    'Cloozy',
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

                // Name Field
                Align(
                    alignment: Alignment.bottomLeft,
                    child: Text(
                      'Name',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    )),
                TextField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    labelText: "Name",
                    labelStyle: TextStyle(color: Colors.grey),
                    suffixIcon: Icon(Icons.person),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                ),
                const SizedBox(height: 20),

                // Email Field
                Align(
                    alignment: Alignment.bottomLeft,
                    child: Text(
                      'Email',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    )),
                TextField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    labelText: "Email",
                    labelStyle: TextStyle(color: Colors.grey),
                    suffixIcon: Icon(Icons.email_outlined),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                ),
                const SizedBox(height: 20),

                // Phone Field
                Align(
                    alignment: Alignment.bottomLeft,
                    child: Text(
                      'Phone',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    )),
                TextField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    labelText: "+20",
                    labelStyle: TextStyle(color: Colors.grey),
                    suffixIcon: Icon(Icons.tag),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                ),
                const SizedBox(height: 20),

                // Gender Selection
                const Text("Gender",
                    style:
                        TextStyle(fontSize: 16, fontWeight: FontWeight.w500)),
                Row(
                  children: [
                    Expanded(
                      child: RadioListTile(
                        title: Row(
                          children: [
                            Icon(Icons.male),
                            const Text("Male"),
                          ],
                        ),
                        value: "male",
                        groupValue: selectedGender,
                        onChanged: (value) {
                          setState(() {
                            selectedGender = value.toString();
                          });
                        },
                      ),
                    ),
                    Expanded(
                      child: RadioListTile(
                        title: Row(
                          children: [
                            Icon(Icons.female),
                            const Text("Female"),
                          ],
                        ),
                        value: "female",
                        groupValue: selectedGender,
                        onChanged: (value) {
                          setState(() {
                            selectedGender = value.toString();
                          });
                        },
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 20),

                // Next Button
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
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
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text('Next',
                              style:
                                  TextStyle(fontSize: 20, color: Colors.white)),
                          IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.arrow_forward),
                            color: Colors.white,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),

                const SizedBox(height: 15),

                // Back to Sign In
                Center(
                    child: GestureDetector(
                  onTap: () {
                    Navigator.pop(context); // يرجع لشاشة تسجيل الدخول
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "Already have an account? ",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return SignUp();
                          }));
                        },
                        child: const Text(
                          "Login",
                          style: TextStyle(
                              color: Color(0xff003B5C),
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
