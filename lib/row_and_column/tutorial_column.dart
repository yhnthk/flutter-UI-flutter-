import 'package:flutter/material.dart';

class TutorialColumn extends StatelessWidget {
  const TutorialColumn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("column"),
      ),
      body: Column(
        children: [
          Text("umazing", style: TextStyle(fontSize: 50),),
          Text("umazed")
        ],
      ),
    );
  }
}