import 'package:flutter/material.dart';

class TutorialRow extends StatelessWidget {
  const TutorialRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("row")
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Icon(Icons.thumb_up),
          Icon(Icons.thumb_down),
          Icon(Icons.share),
        ],
      ),
    );
  }
}