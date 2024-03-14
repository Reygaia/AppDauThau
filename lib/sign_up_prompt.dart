import 'package:flutter/material.dart';

class SignUpPrompt extends StatefulWidget {
  const SignUpPrompt({super.key});

  @override
  State<SignUpPrompt> createState() => _SignUpPromptState();
}

class _SignUpPromptState extends State<SignUpPrompt> {
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
          //Email
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
            child: TextFormField(
              decoration: const InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(40),
                  ),
                ),
                labelText: 'Email',
                hintText: 'Enter your Email',
              ),
            ),
          ),
          //phone number
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
            child: TextFormField(
              decoration: const InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(40),
                  ),
                ),
                labelText: 'Phone number',
                hintText: 'Enter your phone number',
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
            onPressed: () {},
            child: const Text(
              'Sign Up',
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
