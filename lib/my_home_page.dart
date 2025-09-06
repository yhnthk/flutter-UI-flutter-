import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_3/container/tutorial_container.dart';
import 'package:flutter_application_3/latihan/a1.dart';
import 'package:flutter_application_3/latihan/a2.dart';
import 'package:flutter_application_3/latihan/detail_page.dart';
import 'package:flutter_application_3/row_and_column/tutorial_column.dart';
import 'package:flutter_application_3/row_and_column/tutorial_row.dart';
import 'package:flutter_application_3/scaffold/tutorial_scaffold.dart';

class MyHomePage extends StatefulWidget {
  final String nama;

  const MyHomePage({super.key, required this.nama});


  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.nama),
      ),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(onPressed: () {
              Navigator.push(context, CupertinoPageRoute(builder: (context) => TutorialScaffold()),
              );
            }, child: const Text("Scaffold")
            ),
            SizedBox(height: 10,),
            ElevatedButton(onPressed: () {
              Navigator.push(context, CupertinoPageRoute(builder: (context) => TutorialRow()),
              );
            }, child: const Text("row")
            ),
            ElevatedButton(onPressed: () {
            Navigator.push(context, CupertinoPageRoute(builder: (context) => TutorialColumn()),
              );
            }, child: const Text("column")
            ),
            SizedBox(height: 10,),
            ElevatedButton(onPressed: () {
            Navigator.push(context, CupertinoPageRoute(builder: (context) => TutorialContainer()),
              );
            }, child: const Text("container")
            ),
            ElevatedButton(onPressed: () {
            Navigator.push(context, CupertinoPageRoute(builder: (context) => DetailPage()),
              );
            }, child: const Text("Farm Lembang")
            ),
            ElevatedButton(onPressed: () {
            Navigator.push(context, CupertinoPageRoute(builder: (context) => a1()),
              );
            }, child: const Text("1")
            ),
            ElevatedButton(onPressed: () {
            Navigator.push(context, CupertinoPageRoute(builder: (context) => a2()),
              );
            }, child: const Text("2")
            ),
          ],
        ),
      ),
    );
  }                                  
}