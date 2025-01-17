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
  bool isON = false;
  Widget myWidget = Container(
    width: 200,
    height: 100,
    decoration: BoxDecoration(
        color: Colors.red, border: Border.all(color: Colors.black, width: 3)),
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: const Text("Animated Switcher"),
          ),
          body: Center(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  AnimatedSwitcher(
                    duration: const Duration(seconds: 1),
                    child: myWidget,
                    transitionBuilder: (child, animation) => ScaleTransition(scale: animation, child: child,),
                  ),
                  Switch(
                      activeColor: Colors.green,
                      inactiveThumbColor: Colors.red,
                      inactiveTrackColor: Colors.red[200],
                      value: isON,
                      onChanged: (newValue) {
                        isON = newValue;
                        setState(() {
                          if (isON)
                            myWidget = SizedBox(
                              width: 200,
                              height: 100,
                              child: Center(
                                child: Text(
                              "Swicth: ON",
                                style: TextStyle(
                                    color: Colors.green,
                                    fontWeight: FontWeight.w700,
                                    fontSize: 20))));
                          else
                            myWidget = Container(
                              width: 200,
                              height: 100,
                              decoration: BoxDecoration(
                                  color: Colors.red,
                                  border: Border.all(
                                      color: Colors.black, width: 3)),
                            );
                        });
                      })
                ]),
          )),
    );
  }
}
