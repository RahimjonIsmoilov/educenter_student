import 'package:educenter_student/login_page/login_page.dart';
import 'package:educenter_student/signup_page/widgets/bottombutton.dart';
import 'package:flutter/material.dart';

class PasswordResetSucces extends StatelessWidget {
  const PasswordResetSucces({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 36, right: 36),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              "Password reset successfull",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
            ),
            const Padding(
              padding:
                  EdgeInsets.only(top: 8, left: 30, right: 30, bottom: 102),
              child: Text(
                "You can now login with your new password.",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 20, color: Colors.grey),
              ),
            ),
            BottomButton(name: "Proceed", onTap: () {
              Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const LoginPage(),
                    ),
                  );
            })
          ],
        ),
      ),
    );
  }
}
