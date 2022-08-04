import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';


class ForgetPassword extends StatefulWidget {
  const ForgetPassword({Key? key}) : super(key: key);

  @override
  State<ForgetPassword> createState() => _ForgetPasswordState();
}

class _ForgetPasswordState extends State<ForgetPassword> {
  bool _rememberMe = true;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        GestureDetector(
          child: Container(
            padding: EdgeInsets.symmetric(vertical: 16),
            child: Row(
              children: <Widget>[
                SizedBox(
                  height: 20,
                  width: 20,
                  child: Checkbox(
                    value: _rememberMe,
                    onChanged: _pressRememberMe,
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(left: 7),
                  child: Text("Remember Me"),
                ),
              ],
            ),
          ),
        ),
        Expanded(
          child: GestureDetector(
            onTap: () {},
            child: const Text(
              "Forgot Password",
              textAlign: TextAlign.right,
              style: TextStyle(color: kPrimaryColor),
            ),
          ),
        ),
      ],
    );
  }
  void _pressRememberMe(val) {
    setState(() {
      this._rememberMe = val;
    });
  }
}
