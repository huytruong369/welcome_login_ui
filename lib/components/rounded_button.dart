import 'package:flutter/material.dart';
import 'package:welcome_login_ui/constants.dart';

class RoundedButton extends StatelessWidget {
  final String text;
  final Color color;
  final Color textColor;
  final VoidCallback? press;
  const RoundedButton({
    Key? key,
    required this.text,
    this.color = kPrimaryColor,
    this.textColor = Colors.white,
    this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      width: size.width * .8,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(29),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            primary: color,
            padding: const EdgeInsets.symmetric(
              vertical: 20,
              horizontal: 39,
            ),
          ),
          onPressed: press,
          child: Text(
            text,
            style: TextStyle(
              color: textColor,
            ),
          ),
        ),
      ),
    );
  }
}
