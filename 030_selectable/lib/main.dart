import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyApp();
}

class _MyApp extends State<MyApp> {
  List<bool> isSelected = [true, false, false];
  ColorFilter colorFilter = ColorFilter.mode(Colors.blue, BlendMode.screen);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: ColorFiltered(
            colorFilter: colorFilter,
            child: Scaffold(
              appBar: AppBar(
                title: const Text("Widgets Demo GDG 2019"),
              ),
              body: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    const SelectableText(
                      "Ini adalah selectable Text, adasdksa ajdbas uhjdks dbkadal",
                      style: TextStyle(fontSize: 20),
                      showCursor: true,
                      cursorColor: Colors.red,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    ToggleButtons(
                      isSelected: isSelected,
                      children: const <Widget>[
                        Icon(Icons.access_alarm),
                        Icon(Icons.adb),
                        Icon(Icons.add_comment),
                      ],
                      onPressed: (index) {
                        setState(() {
                          if (index == 0)
                            colorFilter =
                                ColorFilter.mode(Colors.blue, BlendMode.screen);
                          else if (index == 1)
                            colorFilter = ColorFilter.mode(
                                Colors.green, BlendMode.softLight);
                          else
                            colorFilter = ColorFilter.mode(
                                Colors.purple, BlendMode.multiply);
                          for (int i = 0; i < isSelected.length; i++)
                            isSelected[i] = (i == index) ? true : false;
                        });
                      },
                      fillColor: Colors.red[50],
                      selectedColor: Colors.red,
                      selectedBorderColor: Colors.red,
                      splashColor: Colors.blue,
                      highlightColor: Colors.yellow,
                      borderRadius: BorderRadius.circular(15),
                    )
                  ],
                ),
              ),
            )));
  }
}
