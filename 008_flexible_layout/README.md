# Belajar Flexible Layout di Flutter 🔧🌈

Halo Flutter Enthusiasts! 👋 Yuk kita lanjut belajar tentang **Flexible Layout** di Flutter! Dengan widget ini, kamu bisa membuat tata letak yang fleksibel dan responsif dengan mudah. Siap untuk eksplorasi? Ayo kita mulai! 🚀

---

## 🔹 Apa yang Akan Kamu Pelajari
- Apa itu **Flexible** dan kapan menggunakannya.
- Cara membagi ruang di dalam **Column** dan **Row**.
- Membuat tata letak responsif dengan `flex` di **Flexible**.

---

## 📚 Penjelasan Kode

Buka 008_flexible_layout/lib/main.dart

Mari kita bahas kode di bawah ini step by step:

### 1️⃣ Fungsi `main`
```dart
void main() {
  runApp(const MyApp());
}
```
Seperti biasa, ini adalah titik awal aplikasi Flutter yang akan menjalankan widget utama `MyApp`. 🏠

### 2️⃣ Widget Utama: `MyApp`
```dart
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Flexible Layout"),
        ),
        body: Column(
          children: <Widget>[
```
`MyApp` adalah **StatelessWidget** karena layout kita tidak membutuhkan perubahan dinamis. Semua elemen diatur pada saat build. ✨

### 3️⃣ Struktur Flexible di dalam Column
```dart
Column(
  children: <Widget>[
    Flexible(
      flex: 1,
      child: Row(
        children: <Widget>[
          Flexible(
            flex: 1,
            child: Container(
              margin: EdgeInsets.all(5),
              color: Colors.red,
            )),
          Flexible(
            flex: 1,
            child: Container(
              margin: EdgeInsets.all(5),
              color: Colors.green,
            )),
          Flexible(
            flex: 1,
            child: Container(
              margin: EdgeInsets.all(5),
              color: Colors.purple,
            )),
        ],
      ),
    ),
    Flexible(
      flex: 2,
      child: Container(
        margin: EdgeInsets.all(5),
        color: Colors.amber,
      )),
    Flexible(
      flex: 1,
      child: Container(
        margin: EdgeInsets.all(5),
        color: Colors.blue,
      )),
  ],
),
```
#### Fitur Utama:
- **Flexible**: Widget ini membagi ruang secara fleksibel di dalam tata letak.
- **`flex`**: Digunakan untuk menentukan seberapa besar ruang yang diberikan pada setiap widget dibandingkan dengan widget lain.
- **Container**: Setiap elemen memiliki margin dan warna yang berbeda untuk mempermudah visualisasi.

---

## 🚀 Cara Kerja
1. **Flexible dalam Row**:
   - Baris pertama dibagi menjadi 3 bagian yang sama besar (merah, hijau, ungu), masing-masing memiliki `flex: 1`. 🔢

2. **Flexible dalam Column**:
   - Kolom utama memiliki 3 bagian:
     - Bagian pertama (baris merah, hijau, ungu) dengan `flex: 1`.
     - Bagian kedua (kuning) dengan `flex: 2`, sehingga ukurannya dua kali lebih besar.
     - Bagian ketiga (biru) dengan `flex: 1`. 🎨

3. **Responsivitas**:
   - Semua elemen menyesuaikan ruang yang tersedia, membuat layout fleksibel dan responsif! ✨

---

## 🖼️ Pratinjau Output
- Baris pertama: 3 kotak kecil dengan warna merah, hijau, ungu.
- Bagian tengah: Kotak besar berwarna kuning.
- Bagian bawah: Kotak kecil berwarna biru.

---

## 💜 Cobain Yuk!
1. Salin kode ini ke proyek Flutter kamu.
2. Jalankan aplikasi dengan `flutter run`.
3. Ubah nilai `flex` untuk melihat perubahan pada tata letak! 🎨

---

## 📖 Sumber Tambahan
- [Dokumentasi Flexible](https://api.flutter.dev/flutter/widgets/Flexible-class.html)
- [Flutter Widget of the Week: Flexible](https://www.youtube.com/watch?v=CI7x0mAZiY0)

---

Dibuat dengan ❤️ oleh [Kha](https://www.instagram.com/khalilaah.15/).  
**LinkedIn:** [Khalilullah Nuraini](https://www.linkedin.com/in/khalilullah-nuraini-20246223b/)  
Selamat mencoba dan bereksperimen! 💻✨

