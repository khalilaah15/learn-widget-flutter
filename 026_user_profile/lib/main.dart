import 'package:flutter/material.dart';
import 'package:user_profile/user_profile.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final UserProfile profile = UserProfile(
    name: "Kim Taehyung",
    role: "Member of BTS",
    photoURL:
        "https://cms.disway.id/uploads/c639fdd1585c331a6cf2b1b4ed54d6d2.jpg",
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red[900],
          title: Text("Doc Comment Example"),
        ),
        body: SafeArea(
          child: Center(
            child: profile,
          ),
        ),
      ),
    );
  }
}
