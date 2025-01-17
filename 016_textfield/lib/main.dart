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
  TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Text("Latihan Text Field"),
            ),
            body: Container(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                  Container(
                    margin: EdgeInsets.all(20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        TextField(
                          decoration: InputDecoration(
                              fillColor: Colors.lightBlue[50],
                              filled: true,
                              icon: Icon(Icons.adb),
                              suffix: Container(
                                width: 5,
                                height: 5,
                                color: Colors.red,
                              ),
                              prefixIcon: Icon(Icons.person),
                              prefixText: "Name",
                              prefixStyle: TextStyle(
                                  color: Colors.blue,
                                  fontWeight: FontWeight.w600),
                              labelText: "Nama Lengkap",
                              hintText: "Ketik disini",
                              hintStyle: TextStyle(fontSize: 15),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10))),
                          maxLength: 5,
                          onChanged: (value) {
                            setState(() {});
                          },
                          controller: controller,
                        ),
                        Text(controller.text)
                      ],
                    ),
                  ),
                  SizedBox(height: 40),
              Align(
                alignment: Alignment.centerRight,
                      child: GestureDetector(
          onTap: () {
            // Aksi yang dijalankan saat tombol di tap
            print('Tombol ditekan');
          },
                  child: Container(
    width: 382,
    height: 54,
    padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 15),
    clipBehavior: Clip.antiAlias,
    decoration: ShapeDecoration(
        gradient: LinearGradient(
            begin: Alignment(0.98, -0.22),
            end: Alignment(-0.98, 0.22),
            colors: [Color(0xFF085BB9), Color(0xFF0A8ECF)],
        ),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
    ),
    child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
            Container(
                width: 1,
                height: 1,
                decoration: ShapeDecoration(
                    color: Color(0xFF3C8BD5),
                    shape: OvalBorder(),
                ),
            ),
            Container(
                width: 1,
                height: 1,
                decoration: ShapeDecoration(
                    color: Color(0xFF043485),
                    shape: OvalBorder(),
                ),
            ),
            Container(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                        Container(
                            width: 50,
                            padding: const EdgeInsets.symmetric(horizontal: 4),
                            child: Row(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                    Text(
                                        'Login',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 16,
                                            fontFamily: 'Nunito',
                                            fontWeight: FontWeight.w700,
                                            height: 0,
                                        ),
                                    ),
                                ],
                            ),
                        ),
                    ],
                ),
            ),
        ],
    ),
)
                  ) ) ]
                ),
                ),
                )
                );
  }
}
