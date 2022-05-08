import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:welcome_login_ui/Screens/Login/login_screen.dart';
import 'package:welcome_login_ui/Screens/SignUp/signup_screen.dart';
import 'package:welcome_login_ui/Screens/Welcome/components/background.dart';
import 'package:welcome_login_ui/components/rounded_button.dart';
import 'package:welcome_login_ui/constants.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'WELCOME TO EDU',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: size.height * .03),
            SvgPicture.asset(
              'assets/icons/chat.svg',
              height: size.height * .45,
            ),
            SizedBox(height: size.height * .05),
            RoundedButton(
              text: 'LOGIN',
              press: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) {
                      return const LoginScreen();
                    },
                  ),
                );
              },
            ),
            RoundedButton(
              text: 'SIGNUP',
              textColor: Colors.black,
              color: kPrimaryLightColor,
              press: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) {
                      return const SignUpScreen();
                    },
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
