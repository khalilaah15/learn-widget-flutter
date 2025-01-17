# Belajar Anonymous Method di Flutter 🐦

Hai, teman-teman! 👋 Kali ini kita akan membahas **Anonymous Method**, salah satu fitur menarik di Dart yang bikin kode lebih ringkas dan efisien. Siap belajar? 🚀✨

---

## 🎯 Apa yang Akan Kamu Pelajari
- Apa itu **Anonymous Method** dan kapan menggunakannya.
- Cara mengubah teks di layar menggunakan tombol interaktif di Flutter.
- Perbedaan antara fungsi terpisah dan Anonymous Method.

---

## 📝 Penjelasan Kode

Buka 004_anonymous_method/lib/main.dart

Mari kita bahas kode ini langkah demi langkah:

### 1️⃣ Fungsi `main`
```dart
void main() {
  runApp(const MyApp());
}
```
Seperti biasa, `main` adalah titik awal aplikasi Flutter. Di sini kita menjalankan aplikasi dengan widget utama `MyApp`. 🏠

### 2️⃣ Membuat `StatefulWidget`
```dart
class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}
```
Widget ini **stateful**, artinya bisa menyimpan dan memperbarui data yang berubah, seperti teks pada layar.

### 3️⃣ State dan Fungsi di `_MyAppState`
```dart
class _MyAppState extends State<MyApp> {
  String message = "Ini adalah Text";

  void tombolDitekan() {
    setState(() {
      message = "Tombol sudah ditekan";
    });
  }
```
#### Apa yang Terjadi?
- **`String message`**: Variabel untuk menyimpan teks yang ditampilkan.
- **`tombolDitekan`**: Fungsi terpisah yang memanggil `setState()` untuk memperbarui teks di layar.
- **`setState()`**: Memberitahu Flutter bahwa ada perubahan state sehingga UI perlu diperbarui. 🔄

### 4️⃣ Membuat UI di `build()`
```dart
@override
Widget build(BuildContext context) {
  return MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: const Text("Anonymous Method"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center, 
          children:<Widget>[
            Text(message),
            ElevatedButton(
              onPressed: tombolDitekan,
              child: const Text("Tekan saya"),
            )
          ]),
      ),
    ),
  );
}
```
#### Fitur Utama:
- **`Text(message)`**: Menampilkan teks yang berubah saat tombol ditekan.
- **`ElevatedButton`**:
  - **`onPressed`**: Menggunakan fungsi terpisah `tombolDitekan` untuk memperbarui state.
  - **Anonymous Method**: Kamu juga bisa mengganti `tombolDitekan` dengan fungsi langsung di sini seperti ini:
    ```dart
    onPressed: () {
      setState(() {
        message = "Tombol sudah ditekan!";
      });
    },
    ```

---

## 🚀 Cara Kerja
1. Aplikasi memulai dengan teks awal "Ini adalah Text".
2. Saat tombol ditekan, fungsi `tombolDitekan` dijalankan.
3. Fungsi ini memperbarui variabel `message`.
4. Dengan `setState()`, Flutter menggambar ulang UI dan teks baru ditampilkan. 🎉

---

## 🖼️ Hasil Akhir
- Teks "Ini adalah Text" di layar.
- Ketika tombol ditekan, teks berubah menjadi "Tombol sudah ditekan". ✨

---

## 🤔 Apa Itu Anonymous Method?
Anonymous Method adalah fungsi tanpa nama yang langsung didefinisikan di tempat. Contohnya:
```dart
ElevatedButton(
  onPressed: () {
    print("Tombol ditekan!");
  },
  child: const Text("Klik Saya"),
)
```
Kapan pakai Anonymous Method? 🤔
- Kalau kode dalam fungsi sederhana dan hanya digunakan sekali.
- Kalau nggak perlu mendeklarasikan fungsi terpisah.

---

## 🎉 Cobain Yuk!
1. Salin kode di atas ke proyek Flutter kamu.
2. Jalankan `flutter run` untuk melihat hasilnya.
3. Eksperimen dengan mengganti fungsi `tombolDitekan` menjadi Anonymous Method. 🚀

Selamat mencoba dan terus belajar Flutter! 🌟

---

## 📚 Sumber Tambahan
- [Dokumentasi Flutter](https://flutter.dev/docs)
- [StatefulWidget dan State](https://docs.flutter.dev/development/ui/widgets-intro#stateful-and-stateless-widgets)

---

Dibuat dengan ❤️ oleh Kha. Happy Coding! 💻✨
