# 🧑‍🎨 Menggunakan Animated Padding di Flutter! ✨

Halo Flutter Dev! 👋 Pada materi kali ini, kita akan belajar bagaimana cara menggunakan **AnimatedPadding** untuk menambahkan animasi padding yang halus saat kita mengubah ruang di sekitar widget. 🚀

---

## 🔮 Apa yang Akan Kamu Pelajari
- Menambahkan animasi pada padding menggunakan **AnimatedPadding**.
- Menggunakan **EdgeInsets** untuk mengatur padding dinamis.
- Menyesuaikan layout widget secara responsif.

---

## 🖋️ Penjelasan Kode

Buka 023_animated_padding/lib/main.dart

Mari kita bahas kode di bawah ini yang menggunakan **AnimatedPadding** untuk memberikan efek animasi saat padding berubah. 🚀

### 1⃣ Fungsi main
```dart
void main() {
  runApp(const MyApp());
}
```
Kode ini adalah titik awal aplikasi Flutter, yang menjalankan widget utama **MyApp**. 🏠

### 2⃣ Widget Utama: MyApp
```dart
class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}
```
Kita menggunakan **StatefulWidget** di sini karena kita akan merubah padding secara dinamis. `State<MyApp>` memungkinkan kita untuk memperbarui UI berdasarkan perubahan status.

### 3⃣ Deklarasi Variabel Padding
```dart
double myPadding = 5;
```
- **myPadding** adalah variabel untuk mengatur nilai padding. Nilai ini akan digunakan untuk menentukan jarak ruang di sekitar widget.

### 4⃣ Widget AnimatedPadding
```dart
AnimatedPadding(
  duration: Duration(seconds: 1),
  padding: EdgeInsets.all(myPadding),
  child: Container(
    color: Colors.red,
  ),
),
```
- **AnimatedPadding** adalah widget yang memungkinkan kita untuk memberikan animasi ketika padding berubah.
- **duration** mengatur durasi animasi (dalam detik).
- **padding** menggunakan **EdgeInsets.all(myPadding)** untuk mengatur padding pada keempat sisi widget. Nilai padding ini bersifat dinamis dan bisa berubah.
- **child** adalah widget yang diberi padding, di sini kita menggunakan sebuah **Container** dengan warna merah.

### 5⃣ Layout dengan Row dan Flexible
```dart
Flexible(
  flex: 1,
  child: Row(
    children: <Widget>[
      Flexible(
        flex: 1,
        child: AnimatedPadding(
          duration: Duration(seconds: 1),
          padding: EdgeInsets.all(myPadding),
          child: Container(
            color: Colors.red,
          ),
        ),
      ),
      Flexible(
        flex: 1,
        child: Container(
          color: Colors.green,
        ),
      ),
    ],
  ),
),
```
- Kita menggunakan **Row** untuk menata dua widget secara horizontal. **Flexible** digunakan untuk membuat setiap widget memiliki ruang yang proporsional.
- Widget pertama menggunakan **AnimatedPadding**, sedangkan widget kedua adalah **Container** berwarna hijau yang tidak diberi padding animasi.

---

## 🚀 Cara Kerja
1. **AnimatedPadding** digunakan untuk memberikan animasi pada perubahan padding.
2. **EdgeInsets.all(myPadding)** memungkinkan kita untuk mengatur padding di sekitar widget, dan kita bisa mengubah nilai **myPadding** secara dinamis.
3. Widget yang memiliki **AnimatedPadding** akan memberikan efek transisi halus ketika padding berubah.

---

## 🔄 Pratinjau Output
- **Animated Padding** memberikan efek perubahan padding yang halus ketika nilai **myPadding** diperbarui.
- Setiap kali padding berubah, widget yang diberi padding akan terlihat bergerak atau berubah ukuran dengan animasi yang mulus.

---

## 📚 Cobain Yuk!
1. Salin kode ini ke proyek Flutter kamu.
2. Jalankan aplikasi dengan `flutter run`.
3. Bereksperimen dengan menambahkan kontrol untuk mengubah nilai padding secara dinamis (misalnya menggunakan **Slider** atau **Button**).

---

## 📚 Sumber Tambahan
- [Dokumentasi AnimatedPadding](https://api.flutter.dev/flutter/widgets/AnimatedPadding-class.html)
- [Dokumentasi EdgeInsets](https://api.flutter.dev/flutter/painting/EdgeInsets-class.html)

---

Dibuat dengan ❤️ oleh [Kha](https://www.instagram.com/khalilaah.15/) | [LinkedIn](https://www.linkedin.com/in/khalilullah-nuraini-20246223b/). Selamat belajar dan bereksperimen dengan Flutter! 💻✨
