import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:welcome_login_ui/Screens/Login/components/background.dart';
import 'package:welcome_login_ui/Screens/SignUp/signup_screen.dart';
import 'package:welcome_login_ui/components/rounded_button.dart';
import 'package:welcome_login_ui/components/rounded_input_field.dart';
import 'package:welcome_login_ui/components/rounded_password_field.dart';
import 'package:welcome_login_ui/components/text_field_container.dart';
import 'package:welcome_login_ui/constants.dart';

import '../../../components/already_have_an_account_check.dart';

class Body extends StatelessWidget {
  const Body({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return BackGround(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'LOGIN',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: size.height * .03,
            ),
            SvgPicture.asset(
              'assets/icons/login.svg',
              height: size.height * .36,
            ),
            SizedBox(
              height: size.height * .03,
            ),
            RoundedInputField(
              hintText: 'Your Email',
              onChanged: (value) {},
            ),
            RoundedPasswordField(
              onchanged: (value) {},
            ),
            RoundedButton(
              text: 'LOGIN',
              press: () {},
            ),
            SizedBox(
              height: size.height * .03,
            ),
            AlreadyHaveAnAccountCheck(
              login: true,
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
