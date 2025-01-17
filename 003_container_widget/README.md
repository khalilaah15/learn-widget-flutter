# Yuk Kenalan dengan Container Widget di Flutter! 🐦

Halo, teman-teman! 👋 Kali ini kita akan belajar tentang **Container**, widget serbaguna di Flutter untuk membuat layout yang keren dan fleksibel. Siap eksplorasi? 🚀✨

---

## 🎯 Apa yang Akan Kamu Pelajari
- Apa itu **Container** dan fungsinya di Flutter.
- Mengatur warna, margin, padding, dan dekorasi dengan **BoxDecoration**.
- Membuat efek gradasi warna dan border yang indah. 🌈

---

## 📝 Penjelasan Kode

Yuk kita bahas langkah-langkahnya:

### 1️⃣ Fungsi `main`
```dart
void main() {
  runApp(new MyApp());
}
```
Seperti biasa, fungsi `main` adalah titik masuk aplikasi. Di sini kita menjalankan aplikasi dengan widget utama `MyApp`. 🏠

### 2️⃣ Membuat `StatelessWidget`
```dart
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Latihan Container"),
        ),
        body: Container(
          color: const Color.fromARGB(255, 186, 54, 45),
          margin: EdgeInsets.fromLTRB(10, 15, 20, 25),
          padding: EdgeInsets.only(bottom: 20, top: 20),
          child: Container(
            margin: EdgeInsets.all(10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: <Color>[Colors.amber, Colors.blue],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
```
#### Apa yang Terjadi?
- **Container Utama**:
  - **`color`**: Memberikan warna latar belakang merah tua.
  - **`margin`**: Memberikan jarak luar (margin) dari Container ke elemen lain.
  - **`padding`**: Memberikan ruang di dalam Container untuk isinya.
- **Container Anak**:
  - **`margin`**: Memberikan jarak luar untuk elemen di dalamnya.
  - **`decoration`**: Menggunakan **BoxDecoration** untuk menambahkan dekorasi seperti border radius dan gradasi warna.

---

## 🚀 Cara Kerja
1. **Container Utama** tampil dengan warna merah tua dan margin serta padding yang diatur.
2. **Container Anak** berada di dalam Container Utama dengan dekorasi berupa sudut melengkung dan gradasi warna dari kuning ke biru.

---

## 🖼️ Hasil Akhirnya
- Latar belakang merah tua dengan jarak yang diatur.
- Container kecil di dalamnya memiliki sudut melengkung dan gradasi warna yang keren. 🌟

---

## 🤔 Kenapa Pakai Container?
- **Container** itu serbaguna! Bisa dipakai untuk menata, memberi jarak, menambahkan dekorasi, dan lainnya.
- Dengan **BoxDecoration**, kamu bisa bikin desain yang eye-catching dengan mudah! 😍

---

## 🎉 Cobain Sendiri Yuk!
1. Salin kode di atas ke proyek Flutter-mu.
2. Jalankan `flutter run` untuk melihat hasilnya.
3. Eksperimen dengan properti **margin**, **padding**, atau warna gradasi. 🚀

Selamat belajar dan semoga makin jago Flutter! 🌟

---

## 📚 Sumber Tambahan
- [Dokumentasi Flutter](https://flutter.dev/docs)
- [Panduan Container Widget](https://docs.flutter.dev/development/ui/widgets/container)

---

Dibuat dengan ❤️ oleh Kha. Happy Coding! 💻✨
