import 'package:appbanhang/StartScreen/login_prompt.dart';
import 'package:appbanhang/StartScreen/sign_up_prompt.dart';
import 'package:flutter/material.dart';

class LoginOrRegister extends StatefulWidget {
  const LoginOrRegister({super.key});

  @override
  State<LoginOrRegister> createState() => _LoginOrRegisterState();
}

class _LoginOrRegisterState extends State<LoginOrRegister> {
  bool showLoginPage = true;

  void togglePages() {
    setState(() {
      showLoginPage = !showLoginPage;
      print('Pressed');
    });
  }

  @override
  Widget build(BuildContext context) {
    if (showLoginPage) {
      return LoginPrompt(
        onTap: togglePages,
      );
    } else {
      return SignUpPrompt(
        onTap: togglePages,
      );
    }
  }
}
