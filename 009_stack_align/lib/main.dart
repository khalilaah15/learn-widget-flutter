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
          title: Text("Latihan Stack dan Align"),
        ),
        body: Stack(
          children: <Widget>[
            Column(
              children: <Widget>[
                Flexible(
                  flex: 1,
                  child: Row(
                    children: <Widget>[
                      Flexible(
                        flex: 1,
                        child: Container(
                          color: Colors.white,
                        ),
                      ),
                      Flexible(
                        flex: 1,
                        child: Container(
                          color: Colors.black12,
                        ),
                      ),
                    ],
                  ),
                ),
                Flexible(
                  flex: 1,
                  child: Row(
                    children: <Widget>[
                      Flexible(
                        flex: 1,
                        child: Container(
                          color: Colors.black12,
                        ),
                      ),
                      Flexible(
                        flex: 1,
                        child: Container(
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            ListView(
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Container(
                      margin: const EdgeInsets.all(10),
                      child: const Text(
                          "Ini adalah text yang ada di lapisan tengah dari Stack.",
                          style: TextStyle(fontSize: 25)),
                    ),
                    Container(
                      margin: const EdgeInsets.all(10),
                      child: const Text(
                          "Ini adalah text yang ada di lapisan tengah dari Stack.",
                          style: TextStyle(fontSize: 25)),
                    ),
                    Container(
                      margin: const EdgeInsets.all(10),
                      child: const Text(
                          "Ini adalah text yang ada di lapisan tengah dari Stack.",
                          style: TextStyle(fontSize: 25)),
                    ),
                  ],
                )
              ],
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: ElevatedButton(
                onPressed: () {},
                child: const Text("My Button")
              ),
            )
          ],
        ),
      ),
    );
  }
}
