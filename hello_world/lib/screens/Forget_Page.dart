import 'package:flutter/material.dart';
import 'package:hello_world/screens/OTP_Page.dart';

class Forget_Page extends StatelessWidget {
  const Forget_Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF7F7F7),
      appBar: AppBar(
        backgroundColor: Color(0xffF7F7F7),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
         
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
                child: Image.asset(
              'assets/imeges/cloozy.png',
              width: 200,
            )),
            const SizedBox(height: 60),
            const Text(
              'Forget Password',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            const Text(
              'Please select option to send reset code',
              style: TextStyle(fontSize: 20, color: Colors.grey),
            ),
            const SizedBox(height: 40),
            OptionTile(
              icon: Icons.email_outlined,
              title: 'Reset via email',
              subtitle:
                  'Code to reset your password will be sent to your email',
              isSelected: true,
            ),
            const SizedBox(height: 15),
            OptionTile(
              icon: Icons.phone_in_talk_outlined,
              title: 'Reset via SMS number',
              subtitle:
                  'Code to reset your password will be sent to your SMS number',
              isSelected: false,
            ),
            const SizedBox(height: 20),
            SizedBox(
              width: double.infinity,
              height: 50,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return OTP_Page();
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
                  "Next",
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class OptionTile extends StatelessWidget {
  final IconData icon;
  final String title;
  final String subtitle;
  final bool isSelected;

  const OptionTile({
    required this.icon,
    required this.title,
    required this.subtitle,
    required this.isSelected,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        border: Border.all(color: Color(0xff003B5C)),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        children: [
          Icon(icon, size: 30, color: Color(0xff003B5C)),
          const SizedBox(width: 10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title,
                    style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Color(0xff003B5C))),
                const SizedBox(height: 5),
                Text(subtitle,
                    style: const TextStyle(fontSize: 14, color: Colors.grey)),
              ],
            ),
          ),
          if (isSelected)
            const Icon(Icons.check_circle, color: Color(0xff003B5C)),
        ],
      ),
    );
  }
}
