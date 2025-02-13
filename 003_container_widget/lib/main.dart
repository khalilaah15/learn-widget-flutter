import 'package:flutter/material.dart';

void main() {
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
        title: Text("Latihan Container"),
      ),
      body: Container(color: const Color.fromARGB(255, 186, 54, 45),
      margin: EdgeInsets.fromLTRB(10, 15, 20, 25),
      padding: EdgeInsets.only(bottom: 20, top: 20),
      child: Container(
        margin: EdgeInsets.all(10),
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: <Color>[Colors.amber, Colors.blue]
        )),
      ),
      ),
      ),
    );
  }
}
