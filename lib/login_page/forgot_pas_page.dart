import 'package:educenter_student/login_page/reset_password.dart';
import 'package:educenter_student/signup_page/widgets/bottombutton.dart';
import 'package:flutter/material.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 36, right: 36),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Padding(
              padding: EdgeInsets.only(),
              child: Text(
                // TextAlign.center
                "Forgot your Password?",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 7, bottom: 44),
              child: Text(
                "Enter your email address and we will share a link to create a new password.",
              ),
            ),
            const SizedBox(
              height: 44,
              child: TextField(
                  textAlignVertical: TextAlignVertical.bottom,
                  decoration: InputDecoration(
                    hintText: "Enter Email Address",
                    border: OutlineInputBorder(),
                  )),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 40),
              child: BottomButton(
                  name: "Send  ✔",
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const ResetPassword(),
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
