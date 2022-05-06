import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:welcome_login_ui/Screens/Welcome/components/background.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'WELCOME TO EDU',
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          SvgPicture.asset(
            'assets/icons/chat.svg',
            height: size.height * .45,
          ),
        ],
      ),
    );
  }
}
