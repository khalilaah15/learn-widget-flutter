import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:state_management/application_color.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ChangeNotifierProvider<ApplicationColor>(
        create: (context) => ApplicationColor(),
        child: Scaffold(
          body: SafeArea( // Tambahkan SafeArea di sini
            child: Column(
              children: [
                AppBar(
                  title: Consumer<ApplicationColor>(
                    builder: (context, applicationColor, _) => Text(
                      "Provider State Management",
                      style: TextStyle(color: applicationColor.color),
                    ),
                  ),
                ),
                Expanded(
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Consumer<ApplicationColor>(
                          builder: (context, applicationColor, _) =>
                              AnimatedContainer(
                            margin: EdgeInsets.all(5),
                            width: 100,
                            height: 100,
                            color: applicationColor.color,
                            duration: Duration(milliseconds: 500),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Container(
                                margin: EdgeInsets.all(5), child: Text("AB")),
                            Consumer<ApplicationColor>(
                              builder: (context, applicationColor, _) => Switch(
                                value: applicationColor.isLightBlue,
                                onChanged: (newValue) {
                                  applicationColor.isLightBlue = newValue;
                                },
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.all(5),
                              child: Text("LB"),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
