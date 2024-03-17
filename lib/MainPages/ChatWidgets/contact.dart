import 'package:appbanhang/MainPages/ChatWidgets/chatbox.dart';
import 'package:flutter/material.dart';

class Contact extends StatefulWidget {
  const Contact({super.key, required this.userID});
  final String userID;

  @override
  State<Contact> createState() => _ContactState();
}

class _ContactState extends State<Contact> {
  bool isRead = false;

  String userid = '';
  String username = '';
  String latestMessage = '';

  String getLatestMessage(String userID) {
    //query the latest message

    return 'example message';
  }

  String getUserName(String userID) {
    //query user ID

    return 'example name + $userID';
  }

  @override
  void initState() {
    super.initState();
    userid = widget.userID;
    username = getUserName(userid);
    latestMessage = getLatestMessage(userid);
  }

  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => ChatBox(userID: userid),
            ),
          );
        },
        child: Row(
          children: [
            const Icon(Icons.account_circle),
            Text('''  $username example name
  $latestMessage example message '''),
          ],
        ),
      ),
    );
  }
}
