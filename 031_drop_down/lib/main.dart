import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainPage(),
    );
  }
}

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  Person? selectedPerson;
  List<Person> persons = [Person("Shooky"), Person("Cooky")];

  List<DropdownMenuItem<Person>> generateItems(List<Person> persons) {
    List<DropdownMenuItem<Person>> items = [];
    for (var item in persons) {
      items.add(DropdownMenuItem(
        child: Text(item.name),
        value: item,
      ));
    }
    return items;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Demo Dropdown Button"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center, 
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            DropdownButton<Person>(
              value: selectedPerson,
              items: generateItems(persons),
              onChanged: (item) {
                setState(() {
                  selectedPerson = item;
                });
              },
            ),
            SizedBox(height: 20),
            Text(
              (selectedPerson != null) ? selectedPerson!.name : "Pilih Person",
              style: const TextStyle(fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }
}

class Person {
  String name;
  Person(this.name);
}
