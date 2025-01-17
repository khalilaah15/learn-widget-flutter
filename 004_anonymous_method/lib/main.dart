import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  
  String message = "Ini adalah Text";
  void tombolDitekan() {
    setState(() {
      message = "Tombol sudah ditekan";
    });
  }
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Anonymous Method"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center, 
            children:<Widget>[
              Text(message),
              ElevatedButton(
                onPressed: tombolDitekan,
                child: const Text("Tekan saya"),
            )
          ]),
        ),
      ),
    );
  }
}
