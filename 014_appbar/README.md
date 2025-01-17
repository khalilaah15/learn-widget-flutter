# Belajar AppBar di Flutter 🎨✨

Hai teman-teman Flutter Dev! 👋 Kali ini kita akan belajar tentang **AppBar** di Flutter. Dengan AppBar, kita dapat membuat header aplikasi yang keren, lengkap dengan ikon, tombol aksi, dan bahkan background gradient! Yuk, kita eksplor lebih jauh! 🚀

---

## 🔮 Apa yang Akan Kamu Pelajari
- Fungsi **AppBar** sebagai header di aplikasi Flutter.
- Menambahkan **ikon** dan **tombol aksi** di AppBar.
- Membuat **background gradient** dengan gaya modern.

---

## 🖋️ Penjelasan Kode

Buka `014_appbar/lib/main.dart`. Mari kita telusuri kode ini langkah demi langkah:

### 1⃣ Fungsi `main`
```dart
void main() {
  runApp(const MyApp());
}
```
Kode ini adalah titik awal aplikasi Flutter. Fungsi ini menjalankan widget utama kita, yaitu `MyApp`. 🌟

### 2⃣ Widget Utama: `MyApp`
```dart
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          ...
        ),
      ),
    );
  }
}
```
- **`MaterialApp`:** Membungkus aplikasi dengan material design.
- **`Scaffold`:** Membuat struktur halaman utama, seperti AppBar dan Body.

### 3⃣ Elemen AppBar
```dart
        appBar: AppBar(
          leading: const Icon(
            Icons.adb,
            color: Colors.white,
          ),
          title: const Text(
            "AppBar Example",
            style: TextStyle(color: Colors.white),
          ),
          actions: <Widget>[
            IconButton(onPressed: () {}, icon: const Icon(Icons.settings)),
            IconButton(onPressed: () {}, icon: const Icon(Icons.exit_to_app))
          ],
          flexibleSpace: Container(
            decoration: const BoxDecoration(
                gradient: LinearGradient(
                    colors: [Color(0xff0096ff), Color(0xff6610f2)],
                    begin: FractionalOffset.topLeft,
                    end: FractionalOffset.bottomRight),
                image: DecorationImage(
                    image: AssetImage("assets/pattern.png"),
                    fit: BoxFit.none,
                    repeat: ImageRepeat.repeat)),
          ),
        ),
```

#### 🔑 Detail Penjelasan:
- **`leading:`** Menampilkan ikon ADB di kiri atas.
- **`title:`** Menampilkan teks "AppBar Example" di tengah.
- **`actions:`** Berisi ikon Settings dan Exit di sisi kanan.
- **`flexibleSpace:`** Membuat background gradient dengan pola gambar.

---

## 🚀 Cara Kerja
1. **Leading Icon:** Menambahkan ikon di kiri atas dengan properti `leading`.
2. **Title:** Menampilkan teks menggunakan `title` dengan style yang bisa disesuaikan.
3. **Actions:** Tombol tambahan di kanan atas menggunakan `actions`.
4. **Flexible Space:** Membuat background gradient dengan kombinasi warna biru dan ungu, serta menambahkan pola gambar.

---

## 🔄 Pratinjau Output
- **Ikon ADB di kiri atas.**
- **Teks judul "AppBar Example" di tengah.**
- **Tombol Settings dan Exit di kanan atas.**
- **Background gradient biru ke ungu dengan pola gambar.**

---

## 📚 Cobain Yuk!
1. Salin kode ini ke proyek Flutter kamu.
2. Jalankan aplikasi dengan perintah `flutter run`.
3. Modifikasi properti AppBar untuk membuat desainmu sendiri! 🎉

---

## 📚 Sumber Tambahan
- [Dokumentasi AppBar](https://api.flutter.dev/flutter/material/AppBar-class.html)
- [Dokumentasi LinearGradient](https://api.flutter.dev/flutter/painting/LinearGradient-class.html)

---

Dibuat dengan ❤️ oleh [Kha](https://www.instagram.com/khalilaah.15/) | [LinkedIn](https://www.linkedin.com/in/khalilullah-nuraini-20246223b/). Selamat belajar dan bereksperimen dengan Flutter! 💻✨
