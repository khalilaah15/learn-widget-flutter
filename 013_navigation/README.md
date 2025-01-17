# Navigation di Flutter

Hai teman-teman Flutter Dev! 🚀 Kali ini kita akan belajar tentang **Navigation** di Flutter. Pada materi ini, kita akan membuat aplikasi sederhana dengan beberapa halaman dan memahami cara berpindah antarhalaman menggunakan **Navigator**.

---

## 📌 Apa yang Akan Kamu Pelajari

- Bagaimana cara menggunakan **Navigator.push** dan **Navigator.pop**.
- Membuat navigasi dengan halaman login, halaman utama, dan halaman kedua.
- Menggunakan **Navigator.pushReplacement** untuk menggantikan halaman yang sedang aktif.

---

## 📂 Struktur Folder

```
013_navigation
├── lib
│   ├── main.dart
│   ├── login_page.dart
│   ├── main_page.dart
│   └── second_page.dart
```

---

## 📝 Penjelasan Kode

### 1. `main.dart`
File utama yang akan menjalankan aplikasi. Halaman pertama adalah `LoginPage`.
```dart
import 'package:flutter/material.dart';
import 'package:navigation/login_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LoginPage(),
    );
  }
}
```

### 2. `login_page.dart`
Halaman login dengan tombol yang membawa pengguna ke halaman utama menggunakan **Navigator.pushReplacement**.
```dart
import 'package:flutter/material.dart';
import 'package:navigation/main_page.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: ElevatedButton(
        child: Text("LOGIN"),
        onPressed: () {
          Navigator.pushReplacement(context,
              MaterialPageRoute(builder: (context) {
            return MainPage();
          }));
        },
      )),
    );
  }
}
```

### 3. `main_page.dart`
Halaman utama dengan tombol yang membawa pengguna ke halaman kedua menggunakan **Navigator.push**.
```dart
import 'package:flutter/material.dart';
import 'package:navigation/second_page.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Main Page"),
      ),
      body: Center(
        child: ElevatedButton(
          child: Text("Go to Second Page"),
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return SecondPage();
            }));
          },
        ),
      ),
    );
  }
}
```

### 4. `second_page.dart`
Halaman kedua dengan tombol untuk kembali ke halaman sebelumnya menggunakan **Navigator.pop**.
```dart
import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Second Page"),
      ),
      body: Center(
        child: ElevatedButton(
          child: Text("Back"),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
    );
  }
}
```

---

## 🚀 Hasil Akhir
1. Halaman pertama adalah **LoginPage**.
2. Tombol "LOGIN" akan membawa pengguna ke **MainPage**.
3. Dari **MainPage**, pengguna dapat pergi ke **SecondPage** dengan tombol "Go to Second Page".
4. Di **SecondPage**, pengguna dapat kembali ke **MainPage** dengan tombol "Back".

---

## 💬 Identitas Penulis
- [Kha](https://www.instagram.com/khalilaah.15/)  
- [LinkedIn](https://www.linkedin.com/in/khalilullah-nuraini-20246223b/)
