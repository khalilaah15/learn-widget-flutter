# Belajar Flutter Image Widget 🌟🌄

Halo Flutter Devs! 👋 Kali ini kita akan mempelajari cara menggunakan widget **Image** di Flutter untuk menampilkan gambar pada aplikasi kita. Yuk, kita mulai eksplorasinya! 🚀

---

## 🎯 Apa yang Akan Kamu Pelajari
- Cara menampilkan gambar menggunakan widget **Image**.
- Pengaturan properti seperti `fit` dan `repeat` pada gambar.
- Menambahkan gambar dari folder **assets** ke aplikasi Flutter.

---

## 🖊️ Penjelasan Kode
Buka 010_image/lib/main.dart

Mari kita bahas bagian kode berikut:

### 1⃣ Fungsi `main`
```dart
void main() {
  runApp(const MyApp());
}
```
Fungsi ini adalah entry point aplikasi Flutter. Di sini kita menjalankan widget utama `MyApp`. 🏡

### 2⃣ Widget Utama: `MyApp`
```dart
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Latihan Image"),
        ),
        body: Center(
          child: Container(
            color: Colors.black,
            width: 200,
            height: 200,
            padding: const EdgeInsets.all(3),
            child: const Image(
              image: AssetImage("assets/image.jpg"),
              fit: BoxFit.fill,
              repeat: ImageRepeat.repeat,
            ),
          ),
        ),
      ),
    );
  }
}
```

#### Penjelasan:
1. **Container**:
   - Membuat area dengan ukuran **200x200** dan warna latar belakang hitam.
   - Menggunakan `padding` sebesar **3** untuk memberi ruang antara kontainer dan gambar.

2. **Image**:
   - Menampilkan gambar dari folder **assets** dengan properti `AssetImage`.
   - Properti `fit` diatur ke `BoxFit.fill` untuk memastikan gambar memenuhi area yang tersedia.
   - Properti `repeat` diatur ke `ImageRepeat.repeat` untuk mengulangi gambar jika area lebih besar dari ukuran gambar.

---

## 🎨 Cara Menambahkan Gambar ke Flutter

### 1. Tambahkan Gambar ke Folder **Assets**
- Buat folder bernama **assets** di direktori proyek kamu.
- Letakkan file gambar (misalnya `image.jpg`) ke dalam folder **assets**.

### 2. Tambahkan Path ke File `pubspec.yaml`
```yaml
flutter:
  assets:
    - assets/image.jpg
```
- Pastikan indentasi benar, atau aplikasi tidak akan bisa membaca gambar.

### 3. Jalankan Ulang Aplikasi
- Setelah konfigurasi selesai, jalankan ulang aplikasi dengan perintah:
```
flutter pub get
flutter run
```
Sekarang gambarmu siap ditampilkan! 📸

---

## 🚀 Fitur Tambahan yang Bisa Dicoba
- **BoxFit**: Ubah properti `fit` pada gambar untuk melihat efek seperti `cover`, `contain`, atau `fill`.
- **ImageRepeat**: Ubah properti `repeat` untuk mencoba nilai seperti `noRepeat` atau `repeatX`.

---

## 🎦 Pratinjau Output
- Gambar akan ditampilkan dalam area hitam berukuran **200x200**.
- Properti `fit` memastikan gambar menyesuaikan dengan ukuran kontainer.
- Properti `repeat` akan menggandakan gambar jika diperlukan.

---

## 🌐 Sumber Tambahan
- [Dokumentasi Widget Image](https://api.flutter.dev/flutter/widgets/Image-class.html)
- [Flutter Widget of the Week: Image](https://www.youtube.com/watch?v=7oIAs-0G4mw)

---

Dibuat dengan ❤️ oleh [Kha](https://www.instagram.com/khalilaah.15/) | [LinkedIn](https://www.linkedin.com/in/khalilullah-nuraini-20246223b/). Happy coding! 🚀💻

