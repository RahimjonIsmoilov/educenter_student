import 'package:educenter_student/login_page/forgot_pas_page.dart';
import 'package:educenter_student/login_page/password_succes.dart';
import 'package:educenter_student/signup_page/signup_page.dart';
import 'package:educenter_student/signup_page/widgets/bottombutton.dart';
import 'package:flutter/material.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        toolbarHeight: 100,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(
              context,
              MaterialPageRoute(
                builder: (context) => const ForgotPassword(),
              ),
            );
          },
          icon: const Icon(
            Icons.keyboard_arrow_left,
            size: 44,
          ),
        ),
        title: const Text(
          "Reset password",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 50),
              child: Labels(labeltext: 'New Password'),
            ),
            Container(
              margin: const EdgeInsets.only(top: 15),
              height: 44,
              child: const TextField(
                  textAlignVertical: TextAlignVertical.bottom,
                  decoration: InputDecoration(
                    hintText: "12345678",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(12))),
                  )),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 22),
              child: Labels(labeltext: "Confirm New Password"),
            ),
            Container(
              margin: const EdgeInsets.only(top: 15),
              height: 44,
              child: const TextField(
                  textAlignVertical: TextAlignVertical.bottom,
                  decoration: InputDecoration(
                    hintText: "12345678",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(12))),
                  )),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 97),
              child: BottomButton(
                  name: "Submit",
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const PasswordResetSucces(),
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
