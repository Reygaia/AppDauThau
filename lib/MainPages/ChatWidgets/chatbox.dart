import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ChatBox extends StatefulWidget {
  const ChatBox({super.key, required this.userID});
  final String userID;

  @override
  State<ChatBox> createState() => _ChatBoxState();
}

//query for messages

class _ChatBoxState extends State<ChatBox> {
  String currentID = '';

  @override
  void initState() {
    currentID = widget.userID;
    super.initState();
  }

  @override
  void setState(VoidCallback fn) {
    super.setState(fn);
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text('$currentID'),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView(
              children: const [
                SizedBox(
                  height: 30,
                ),
                MessageBox(message: 'message 1'),
                SizedBox(
                  height: 10,
                ),
                MessageBox(message: 'message 2'),
              ],
            ),
          ),
          const ChatInputField(),
        ],
      ),
    );
  }
}

class MessageBox extends StatelessWidget {
  final String message;

  const MessageBox({super.key, required this.message});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
      padding: const EdgeInsets.all(12.0),
      decoration: BoxDecoration(
        color: Colors.blue[100],
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: Text(
        message,
        style: const TextStyle(fontSize: 16.0),
      ),
    );
  }
}

class ChatInputField extends StatefulWidget {
  const ChatInputField({super.key});

  @override
  State<ChatInputField> createState() => _ChatInputFieldState();
}

class _ChatInputFieldState extends State<ChatInputField> {
  late TextEditingController _controller;

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20.0),
        border: Border.all(color: Colors.grey), // Add border color
      ),
      margin: const EdgeInsets.all(16.0),
      child: Row(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: TextField(
                controller: _controller,
                decoration: const InputDecoration(
                  hintText: 'Enter your message',
                  border: InputBorder.none,
                ),
              ),
            ),
          ),
          IconButton(
            icon: const Icon(Icons.send),
            onPressed: () {
              String message = _controller.text.trim();
              if (message.isNotEmpty) {
                // Send message logic
                _controller.clear(); // Clear TextField after sending
              }
            },
          ),
        ],
      ),
    );
  }
}
