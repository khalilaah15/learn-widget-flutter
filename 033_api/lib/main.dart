import 'package:flutter/material.dart';
import 'post_result_model.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  PostResult? postResult;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("API Demo"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Text(
                (postResult != null)
                    ? "ID: ${postResult!.id}\nName: ${postResult!.name}\nJob: ${postResult!.job}\nCreated: ${postResult!.created}"
                    : "No Data",
                textAlign: TextAlign.center,
              ),
              ElevatedButton(
                onPressed: () async {
                  PostResult result = await PostResult.connectToAPI(
                    "John Doe",
                    "Software Engineer",
                  );
                  setState(() {
                    postResult = result;
                  });
                },
                child: const Text("POST"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
