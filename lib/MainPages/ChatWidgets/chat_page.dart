import 'package:appbanhang/MainPages/ChatWidgets/contact.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({super.key});

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100,
        backgroundColor: Colors.blueAccent,
        title: Column(
          children: [
            Row(
              children: [
                const Expanded(
                  child: SizedBox(
                    child: Text('Chat'),
                  ),
                ),
                GestureDetector(
                  child: const Icon(Icons.search),
                  //serach function
                  onTap: () {},
                )
              ],
            ),
            const SizedBox(
              height: 8,
            ),
            TextFormField(
              decoration: InputDecoration(
                hintText: 'Searching for someone ?',
                isDense: true,
                contentPadding: const EdgeInsets.fromLTRB(14, 14, 14, 0),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: BorderSide.none),
              ),
            ),
          ],
        ),
      ),
      body: ListView(
        shrinkWrap: true,
        children: const [
          Contact(userID: '456'),
          Divider(),
          Contact(userID: '789'),
        ],
      ),
    );
  }
}
