import 'package:flutter/material.dart';
import 'package:flutter_auth/Screens/Login/components/forget_password.dart';

import '../../../components/already_have_an_account_acheck.dart';
import '../../../constants.dart';
import 'drop_down.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
     Function? press;

    return Form(
      child: Column(
        children: [
          TextFormField(
            keyboardType: TextInputType.emailAddress,
            decoration: const InputDecoration(
              contentPadding: EdgeInsets.only(bottom: 0),
              prefixIcon: Padding(
                padding: const EdgeInsets.all(4),
                child: Icon(Icons.email_outlined),
              ),
              border: UnderlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.black,
                ),
              ),
              focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.black,
                ),
              ),
              labelText: 'Enter your email',
              labelStyle: TextStyle(
                color: Colors.black38, fontSize: 15
              ),
            ),
          ),
          const SizedBox(height: defaultPadding),

          Padding(
            padding: const EdgeInsets.symmetric(vertical: defaultPadding),
            child: TextFormField(
              keyboardType: TextInputType.emailAddress,
              obscureText: true,
              decoration: const InputDecoration(
                contentPadding: EdgeInsets.only(bottom: 0),
                prefixIcon: Padding(
                  padding: const EdgeInsets.all(4),
                  child: Icon(Icons.lock_outline),
                ),
                border: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.black,
                  ),
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.black,
                  ),
                ),
                labelText: 'Enter your username',
                labelStyle: TextStyle(
                  color: Colors.black38, fontSize: 15
                ),
              ),
            ),
          ),
          const SizedBox(height: defaultPadding),


          DropDown(),
          const SizedBox(height: defaultPadding),
          ForgetPassword(),

          const SizedBox(height: defaultPadding),
          Hero(
            tag: "login_btn",
            child: ElevatedButton(
              onPressed: () {},
              child: Text(
                "Login",
              ),
            ),
          ),


        ],
      ),
    );
  }
}
