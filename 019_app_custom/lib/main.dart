import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              PreferredSize(
                preferredSize: const Size.fromHeight(200),
                child: AppBar(
                  backgroundColor: Colors.amber,
                  flexibleSpace: Align(
                    alignment: Alignment.bottomRight,
                    child: Container(
                      margin: const EdgeInsets.all(20),
                      child: const Text(
                        "AppBar with custom Height",
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.w700),
                      ),
                    ),
                  ),
                ),
              ),
              // Tambahkan widget lain di sini
              Expanded(
                child: Center(
                  child: const Text("Konten di sini"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
