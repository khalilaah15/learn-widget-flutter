# Belajar AnimatedContainer di Flutter 🎨✨

Hai teman-teman Flutter Dev! 👋 Kali ini kita akan belajar tentang **AnimatedContainer** di Flutter. Dengan widget ini, kamu bisa membuat animasi perubahan ukuran, warna, dan banyak lagi dengan sangat mudah dan mulus. Yuk, kita mulai eksplorasi kita! 🚀

---

## 🔹 Apa yang Akan Kamu Pelajari
- Apa itu **AnimatedContainer** dan bagaimana cara menggunakannya.
- Membuat animasi perubahan ukuran dan warna pada *container*.
- Cara memanfaatkan `setState` untuk memperbarui UI secara dinamis.

---

## 📚 Penjelasan Kode

Buka 007_animated_container/lib/main.dart

Mari kita bahas kode di bawah ini step by step:

### 1️⃣ Fungsi `main`
```dart
void main() {
  runApp(const MyApp());
}
```
Seperti biasa, ini adalah titik awal aplikasi Flutter, menjalankan aplikasi dengan widget utama `MyApp`. 🏠

### 2️⃣ Widget Utama: `MyApp`
```dart
class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}
```
`MyApp` adalah **StatefulWidget** karena kita akan membuat perubahan dinamis (ukuran dan warna) pada *container*. Setiap perubahan state akan memperbarui UI secara real-time. ✨

### 3️⃣ State dan Logika Utama
```dart
class _MyAppState extends State<MyApp> {
  Random random = Random();  // Objek random untuk generate nilai acak
```
- **`random`**: Digunakan untuk menghasilkan warna dan ukuran acak setiap kali *container* di-*tap*.

### 4️⃣ Struktur UI di `build` Method
```dart
@override
Widget build(BuildContext context) {
  return MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: Text("Latihan Animated Container"),
      ),
      body: Center(
        child: GestureDetector(
          onTap: () {
            setState(() {
              // Bagian ini menangani perubahan ketika tap
            });
          },
          child: AnimatedContainer(
            color: Color.fromARGB(255, random.nextInt(256), random.nextInt(256), random.nextInt(256)),  // Warna acak
            duration: Duration(seconds: 1),  // Durasi animasi
            width: 50.0 + random.nextInt(101),  // Lebar acak
            height: 50.0 + random.nextInt(101),  // Tinggi acak
          ),
        ),
      ),
    ),
  );
}
```
#### Fitur Utama:
- **AnimatedContainer**: Widget utama yang memungkinkan perubahan ukuran dan warna dengan animasi halus.
- **GestureDetector**: Menangani aksi *tap* untuk memicu perubahan.
- **`setState`**: Memperbarui UI dengan perubahan yang terjadi pada *container*. 🔄

---

## 🚀 Cara Kerja
1. **Tap pada Container**:
   - Setiap kali kamu *tap* pada *container*, warna dan ukuran akan berubah secara acak dengan animasi durasi 1 detik. 🎨📏
   - `setState` memanggil ulang `build`, dan UI diperbarui.

2. **Animasi Halus**:
   - Perubahan ukuran dan warna terjadi dengan animasi yang mulus, membuat aplikasi lebih interaktif dan menyenangkan! ✨

---

## 🖼️ Pratinjau Output
- Ketika kamu *tap* pada *container*, warna dan ukuran akan berubah secara dinamis dan animasi akan terlihat! 🎉

---

## 💜 Cobain Yuk!
1. Salin kode ini ke proyek Flutter kamu.
2. Jalankan aplikasi dengan `flutter run`.
3. Tap pada *container* dan lihat bagaimana ukuran dan warnanya berubah secara dinamis! 🧪

---

## 📖 Sumber Tambahan
- [Dokumentasi AnimatedContainer](https://api.flutter.dev/flutter/widgets/AnimatedContainer-class.html)

---

Dibuat dengan ❤️ oleh [Kha](https://www.instagram.com/khalilaah.15/).  
**LinkedIn:** [Khalilullah Nuraini](https://www.linkedin.com/in/khalilullah-nuraini-20246223b/)  
Selamat ngoding sayy! 💻✨

