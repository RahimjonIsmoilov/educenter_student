import 'package:educenter_student/login_page/login_page.dart';
import 'package:educenter_student/signup_page/signup_page.dart';
import 'package:educenter_student/signup_page/widgets/bottombutton.dart';
import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';

class VerifyEmail extends StatelessWidget {
  const VerifyEmail({super.key});

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
                builder: (context) => const SignUp(),
              ),
            );
          },
          icon: const Icon(
            Icons.keyboard_arrow_left,
            size: 44,
          ),
        ),
        title: const Text(
          "Verify Email Address",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 26, right: 26),
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 50, bottom: 50),
              child: Text(
                textAlign: TextAlign.center,
                'We sent you a 4 digit code to verify your email address (desx@gmail.com).  Enter in the field below.',
                style: TextStyle(fontSize: 16),
              ),
            ),
            Pinput(
              animationCurve: Curves.ease,
              defaultPinTheme: PinTheme(
                  height: 70,
                  width: 60,
                  textStyle: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(16))),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 50, bottom: 8, left: 63),
              child: Row(
                children: [
                  const Text(
                    'Didn’t get the code?',
                    style: TextStyle(fontSize: 14),
                  ),
                  TextButton(
                    child: const Text('Resend',
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            color: Colors.black)),
                    onPressed: () {},
                  )
                ],
              ),
            ),
            const Text(
              "Expires in 1:00",
              style: TextStyle(fontSize: 14),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 110),
              child: BottomButton(
                  name: "Submit",
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const LoginPage(),
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
