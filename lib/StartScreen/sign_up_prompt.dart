import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class SignUpPrompt extends StatefulWidget {
  final Function()? onTap;
  const SignUpPrompt({super.key, required this.onTap});

  @override
  State<SignUpPrompt> createState() => _SignUpPromptState();
}

class _SignUpPromptState extends State<SignUpPrompt> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color.fromARGB(255, 8, 179, 179),
            Color.fromARGB(255, 31, 178, 214),
            Color.fromARGB(115, 15, 194, 218),
            Color.fromARGB(192, 235, 124, 33),
            Color.fromARGB(255, 236, 132, 35),
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const SizedBox(
              height: 160,
            ),
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
                  labelText: 'Email',
                  hintText: 'Enter your Email',
                ),
              ),
            ),
            //password
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
              child: TextFormField(
                obscureText: true,
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
            //Confirm password
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
              child: TextFormField(
                obscureText: true,
                controller: confirmPasswordController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(40),
                    ),
                  ),
                  labelText: 'Confirm Password',
                  hintText: 'Confirm your password',
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
                signUp();
              },
              child: const Text(
                'Sign Up',
                style: TextStyle(
                  fontSize: 17,
                ),
              ),
            ),
            //switch screen
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('Already a member?'),
                const SizedBox(
                  width: 6,
                ),
                GestureDetector(
                  onTap: widget.onTap,
                  child: const Text(
                    'Sign in',
                    style: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  final emailController = TextEditingController();

  final passwordController = TextEditingController();

  final confirmPasswordController = TextEditingController();

  void signUp() {
    if (passwordController.text == confirmPasswordController.text) {
      FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: emailController.text,
        password: passwordController.text,
      );
    }
  }
}
