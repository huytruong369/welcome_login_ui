import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:welcome_login_ui/Screens/Login/login_screen.dart';
import 'package:welcome_login_ui/Screens/SignUp/components/background.dart';
import 'package:welcome_login_ui/Screens/SignUp/components/or_divider.dart';
import 'package:welcome_login_ui/Screens/SignUp/components/social_icon.dart';
import 'package:welcome_login_ui/components/rounded_button.dart';
import 'package:welcome_login_ui/components/rounded_input_field.dart';
import 'package:welcome_login_ui/components/rounded_password_field.dart';
import '../../../components/already_have_an_account_check.dart';

class Body extends StatelessWidget {
  const Body({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'SIGNUP',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: size.height * .03),
            SvgPicture.asset(
              'assets/icons/signup.svg',
              height: size.height * .36,
            ),
            SizedBox(height: size.height * .03),
            RoundedInputField(
              hintText: 'Your Email',
              onChanged: (value) {},
            ),
            RoundedPasswordField(
              onchanged: (value) {},
            ),
            RoundedButton(
              text: 'SIGNUP',
              press: () {},
            ),
            SizedBox(height: size.height * .03),
            AlreadyHaveAnAccountCheck(
              login: false,
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
            const OrDivider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SocialIcon(
                  press: () {},
                  iconSrc: 'assets/icons/facebook.svg',
                ),
                SocialIcon(
                  press: () {},
                  iconSrc: 'assets/icons/twitter.svg',
                ),
                SocialIcon(
                  press: () {},
                  iconSrc: 'assets/icons/google-plus.svg',
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
