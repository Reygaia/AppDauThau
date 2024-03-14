import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class LoginPrompt extends StatefulWidget {
  const LoginPrompt({super.key});

  @override
  State<LoginPrompt> createState() => _LoginPromptState();
}

final emailController = TextEditingController();
final passwordController = TextEditingController();

void signinUser() async {
  await FirebaseAuth.instance.signInWithEmailAndPassword(
    email: emailController.text,
    password: passwordController.text,
  );
}

class _LoginPromptState extends State<LoginPrompt> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          //username
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
            child: TextFormField(
              controller: emailController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(40),
                  ),
                ),
                labelText: 'Username',
                hintText: 'Enter your username',
              ),
            ),
          ),
          //password
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
            child: TextFormField(
              controller: passwordController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(40),
                  ),
                ),
                labelText: 'Password',
                hintText: 'Enter your password',
              ),
            ),
          ),
          //sign in button
          const SizedBox(
            height: 20,
          ),
          OutlinedButton(
            style: OutlinedButton.styleFrom(
              fixedSize: const Size(200, 45),
            ),
            onPressed: () {
              signinUser();
            },
            child: const Text(
              'Sign in',
              style: TextStyle(
                fontSize: 17,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
