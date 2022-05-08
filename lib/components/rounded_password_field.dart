import 'package:flutter/material.dart';
import 'package:welcome_login_ui/components/text_field_container.dart';
import 'package:welcome_login_ui/constants.dart';

class RoundedPasswordField extends StatelessWidget {
  final ValueChanged<String> onchanged;
  const RoundedPasswordField({
    Key? key,
    required this.onchanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        onChanged: onchanged,
        obscureText: true,
        decoration: const InputDecoration(
          hintText: 'Password',
          border: InputBorder.none,
          icon: Icon(
            Icons.lock,
            color: kPrimaryColor,
          ),
          suffixIcon: Icon(
            Icons.visibility,
            color: kPrimaryColor,
          ),
        ),
      ),
    );
  }
}
