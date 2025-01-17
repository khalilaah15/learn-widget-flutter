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
  Color color1 = Colors.red;
  Color color2 = Colors.amber;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Latihan Draggable dan DragTarget"),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Draggable<Color>(
                  data: color1,
                  child: SizedBox(
                    width: 100,
                    height: 50,
                    child: Material(
                      color: color1,
                      shape: const StadiumBorder(),
                      elevation: 3,
                    ),
                  ),
                  childWhenDragging: SizedBox(
                    width: 100,
                    height: 50,
                    child: Material(
                      color: Colors.black26,
                      shape: const StadiumBorder(),
                      elevation: 3,
                    ),
                  ),
                  feedback: SizedBox(
                    width: 100,
                    height: 50,
                    child: Material(
                      color: color1.withOpacity(0.5),
                      shape: const StadiumBorder(),
                      elevation: 6,
                    ),
                  ),
                )
              ],
            ),
            DragTarget<Color>(
              onAccept: (receivedColor) {
                setState(() {
                  color2 = receivedColor; // Ubah warna target
                });
              },
              builder: (context, acceptedData, rejectedData) {
                return SizedBox(
                  width: 100,
                  height: 50,
                  child: Material(
                    color: color2,
                    shape: const StadiumBorder(),
                    elevation: 3,
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
