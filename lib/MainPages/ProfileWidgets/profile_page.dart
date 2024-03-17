import 'package:appbanhang/MainPages/ProfileWidgets/wallet.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

void signOut() {
  FirebaseAuth.instance.signOut();
}

class _ProfilePageState extends State<ProfilePage> {
  int creditPoint = 1;

  String hideEmailorPhoneNumber(String input) {
    if (input.contains('@')) {
      // Input is an email address
      List<String> parts = input.split('@');
      if (parts.length != 2) {
        return input; // Invalid email format, return unchanged
      }
      String localPart = parts[0];
      String domainPart = parts[1];
      const int visibleCharacters = 3;
      String maskedLocalPart =
          '${localPart.substring(0, visibleCharacters)}***';
      return '$maskedLocalPart@$domainPart';
    } else {
      // Input is a phone number
      const int visibleDigits = 3;
      String visiblePart = input.substring(0, visibleDigits);
      String hiddenPart = '*' * (input.length - visibleDigits);
      return '$visiblePart$hiddenPart';
    }
  }

  @override
  Widget build(BuildContext context) {
    String? userEmail = FirebaseAuth.instance.currentUser?.email;

    String exampleEmail = hideEmailorPhoneNumber(userEmail!);
    String phoneNumber = hideEmailorPhoneNumber('012345678');

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orangeAccent,
        title: Row(
          children: [
            const Expanded(
              child: Text('Account'),
            ),
            GestureDetector(
              onTap: signOut,
              child: const Icon(Icons.logout),
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 10,
          horizontal: 10,
        ),
        child: Column(
          children: [
            //E wallet box
            SizedBox(
              height: 30,
              child: Row(
                children: [
                  const Expanded(
                    child: Text(
                      'E-Wallet',
                      textAlign: TextAlign.left,
                    ),
                  ),
                  GestureDetector(
                    child: const Text(
                      '+ Link to banking ',
                      style: TextStyle(color: Colors.blue),
                    ),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Wallet(),
                        ),
                      );
                    },
                  )
                ],
              ),
            ),
            //Divider
            const Divider(),
            //Divider
            SizedBox(
              height: 30,
              child: Row(
                children: [
                  Expanded(
                    child: Text('Credit Point: $creditPoint'),
                  ),
                  GestureDetector(
                    child: const Icon(Icons.arrow_forward_ios_rounded),
                  ),
                ],
              ),
            ),
            const Divider(),
            SizedBox(
              height: 30,
              child: Row(
                children: [
                  const Expanded(
                    child: Text('Personal info'),
                  ),
                  Text('$exampleEmail | $phoneNumber')
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
