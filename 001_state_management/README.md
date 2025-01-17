# Yuk Belajar Stateful Widget di Flutter! 🐦

Halo teman-teman! 👋 Selamat datang di proyek **State Management**. Di sini kita bakal belajar cara bikin aplikasi Flutter yang bisa berubah-ubah sesuai interaksi pengguna (Statefull Widget). Fun banget, kan? 😄✨

---

## 🎯 Apa Sih yang Bakal Kamu Pelajari?
- Cara bikin dan pakai **StatefulWidget**.
- Mengelola **state** di Flutter pakai `setState()`.
- Membuat UI yang dinamis dan responsif dengan teks dan tombol. 🚀

---

## 📝 Penjelasan Kode
buka 001_state_management/lib/main.dart
Yuk kita kupas kodenya satu per satu:

### 1️⃣ Impor Dulu Paketnya
```dart
import 'package:flutter/material.dart';
```
Bagian ini buat ngimpor framework Flutter. Jadi kita bisa pakai widget-widget keren buat bikin UI. ✨

### 2️⃣ Fungsi Utama (`main`)
```dart
void main() {
  runApp(const MyApp());
}
```
Ini adalah pintu masuk utama aplikasi. `runApp` bakal ngejalanin aplikasi dengan `MyApp` sebagai widget utamanya. 🏠

### 3️⃣ Bikin Widget yang Bisa Berubah (StatefulWidget)
```dart
class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}
```
- **StatefulWidget** ini adalah widget yang bisa berubah-ubah seiring waktu.
- `createState()` nyambungin widget ke state-nya, yaitu `_MyAppState`.

### 4️⃣ Kelola State di `_MyAppState`
```dart
class _MyAppState extends State<MyApp> {
  int number = 0;

  void tekanTombol() {
    setState(() {
      number = number + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Demo Widget Stateful"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                number.toString(),
                style: TextStyle(fontSize: 10 + number.toDouble()),
              ),
              ElevatedButton(
                onPressed: tekanTombol,
                child: const Text("Tambah Bilangan"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
```
#### Apa yang Dilakukan?
- **`int number = 0;`**: Ini buat nyimpen angka yang bakal kita tambahin.
- **`tekanTombol()`**: Kalau tombol ditekan, angkanya naik 1. 🆙
- **`setState()`**: Buat nyuruh Flutter nge-refresh UI sesuai perubahan state.
- **Teks Dinamis**: Angka yang ditampilkan makin besar, dan ukuran teksnya ikut gede! 🎉

---

## 🚀 Cara Kerja Aplikasi
1. Aplikasi dimulai dengan angka `0`.
2. Tekan tombol "Tambah Bilangan" buat naikin angkanya.
3. Teks di layar berubah sesuai angka, dan ukurannya juga makin besar. 😍

---

## 🖼️ Tampilannya Kayak Gini
- Judul di atas layar: "Demo Widget Stateful."
- Angka besar di tengah layar.
- Tombol **Tambah Bilangan** di bawahnya. Klik tombolnya, dan lihat apa yang terjadi! 🔢

---

## 🤔 Kenapa Harus StatefulWidget?
Karena kalau aplikasi kamu perlu berubah sesuai aksi pengguna, kayak contoh ini, **StatefulWidget** adalah solusi tepat! Fleksibel dan gampang banget dipakai. 😊

---

## 🎉 Cobain Sendiri Yuk!
1. Clone repo ini ke komputermu.
2. Jalankan perintah `flutter run`.
3. Lihat keajaibannya langsung di layar. 😎

Selamat belajar dan happy coding, ya! 🌟

---

## 📚 Sumber Keren
- [Dokumentasi Flutter](https://flutter.dev/docs)
- [Tutorial StatefulWidget](https://flutter.dev/docs/development/ui/widgets-intro#stateful-and-stateless-widgets)

---

Dibuat dengan ❤️ oleh SAYA SENDIRI HAHAHAHA. Semangat terus, ya! 💻✨
