import 'dart:ui';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Flutter Typography"),
        ),
        body: const Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Text(
                "Contoh 01 (Tanpa apapun)",
                style: TextStyle(fontSize: 20),
              ),
              Text(
                "Contoh 02 (Small Caps)",
                style: TextStyle(
                    fontSize: 20, fontFeatures: [FontFeature.enable('smcp')]),
              ),
              Text(
                "Contoh 1/2 (Small Caps & frac)",
                style: TextStyle(
                    fontSize: 20, fontFeatures: [FontFeature.enable('smcp'),
                    FontFeature.enable('frac')]),
              ),
              Text(
                "Contoh cardo 19 (Tanpa apapun)",
                style: TextStyle(
                    fontSize: 20, fontFamily: "Cardo"),
              ),
              Text(
                "Contoh cardo 19 (Old Style)",
                style: TextStyle(
                    fontSize: 20, fontFamily: "Cardo", fontFeatures: [
                      FontFeature.oldstyleFigures()
                    ]),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
