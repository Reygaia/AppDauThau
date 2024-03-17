import 'package:appbanhang/MainPages/HomeWidges/post.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100,
        backgroundColor: Colors.blue,
        title: Column(
          children: [
            Row(
              children: [
                const Expanded(
                  child: Text('Home'),
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
                  hintText: 'Are you interested in something ?',
                  isDense: true,
                  contentPadding: const EdgeInsets.fromLTRB(14, 14, 14, 0),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: BorderSide.none)),
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          Post(),
        ],
      ),
    );
  }
}
