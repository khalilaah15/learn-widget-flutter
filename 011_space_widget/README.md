# Mengenal Spacer Widget di Flutter ✨

Halo, Flutter Devs! 👋 Kali ini, kita akan belajar tentang **Spacer Widget**, salah satu widget yang simpel tapi sangat berguna untuk mengatur jarak antar widget di dalam baris atau kolom. Yuk, langsung kita eksplor! 🚀

---

## 🔬 Apa yang Akan Kamu Pelajari
- Cara menggunakan **Spacer Widget** untuk mengatur jarak.
- Bagaimana **flex** memengaruhi proporsi ruang yang digunakan.
- Implementasi **Spacer Widget** dalam **Row** dan **Column**.

---

## 🔍 Penjelasan Kode
Buka 011_space_widget/lib/main.dart

Mari kita telusuri kode berikut untuk memahami bagaimana **Spacer Widget** bekerja:

### 1⃣ Fungsi `main`
```dart
void main() {
  runApp(const MyApp());
}
```
Seperti biasa, ini adalah titik awal aplikasi Flutter, yang menjalankan widget utama `MyApp`. ☕

### 2⃣ Widget Utama: `MyApp`
```dart
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Spacer Widget"),
        ),
        body: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Spacer(flex: 1,),
              Container(
                width: 80,
                height: 80,
                color: Colors.red,
              ),
              Spacer(flex: 2,),
              Container(
                width: 80,
                height: 80,
                color: Colors.green,
              ),
              Spacer(flex: 3,),
              Container(
                width: 80,
                height: 80,
                color: Colors.blue,
              ),Spacer(flex: 2,),
            ],
          ),
        ),
      ),
    );
  }
}
```

#### ✨ Penjelasan Detail:
1. **Row**:
   - Widget ini menampilkan elemen secara horizontal.
   - **mainAxisAlignment: MainAxisAlignment.spaceBetween**: Memberikan jarak di antara elemen dalam baris.

2. **Spacer**:
   - **Spacer Widget** digunakan untuk mengisi ruang kosong di antara widget lainnya.
   - Properti **flex** menentukan proporsi ruang yang digunakan setiap Spacer. Misalnya:
     - Spacer dengan `flex: 1` menggunakan 1 bagian ruang.
     - Spacer dengan `flex: 2` menggunakan 2 bagian ruang (dua kali lebih besar dari Spacer dengan `flex: 1`).

3. **Container**:
   - Setiap kotak memiliki ukuran 80x80 dengan warna yang berbeda (merah, hijau, biru).
   - Spacer ditempatkan di antara setiap **Container** untuk memberikan jarak sesuai nilai **flex**.

---

## 🚀 Cara Kerja
1. **Spacer Widget** menciptakan ruang di dalam **Row** tanpa memengaruhi ukuran widget lainnya.
2. Ruang diatur berdasarkan nilai **flex** untuk menentukan proporsi masing-masing Spacer.

---

## 🔄 Pratinjau Output
Hasilnya adalah 3 kotak berwarna (merah, hijau, biru) dengan jarak yang berbeda:
- Spacer pertama (“flex: 1”) memberikan ruang kecil.
- Spacer kedua (“flex: 2”) memberikan ruang sedang.
- Spacer ketiga (“flex: 3”) memberikan ruang paling besar.

---

## 🖋️ Cobain Yuk!
1. Salin kode di atas ke proyek Flutter kamu.
2. Jalankan aplikasi dengan perintah `flutter run`.
3. Eksperimen dengan nilai **flex** untuk melihat perbedaannya!

---

## 📖 Dokumentasi Tambahan
- [Dokumentasi Spacer Widget](https://api.flutter.dev/flutter/widgets/Spacer-class.html)
- [Flutter Widget of the Week](https://www.youtube.com/watch?v=7FJgd7QN1zI)

---

Dibuat dengan ❤️ oleh [Kha](https://www.instagram.com/khalilaah.15/) | [LinkedIn](https://www.linkedin.com/in/khalilullah-nuraini-20246223b/). Selamat belajar dan bereksperimen dengan Flutter! 💻✨

