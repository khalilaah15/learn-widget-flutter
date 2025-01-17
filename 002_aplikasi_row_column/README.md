# Yuk Belajar Row dan Column di Flutter! 🐦

Hai, teman-teman! 👋 Kali ini kita bakal belajar tentang **Row** dan **Column**, dua widget paling sering dipakai untuk mengatur tata letak di Flutter. Siap belajar? Yuk kita mulai! 😄✨

---

## 🎯 Apa yang Akan Kamu Pelajari
- Cara menggunakan widget **Row** dan **Column**.
- Mengatur tata letak vertikal dan horizontal dengan properti **mainAxisAlignment** dan **crossAxisAlignment**.
- Menyusun widget di dalam Row dan Column untuk membuat layout yang fleksibel. 🚀

---

## 📝 Penjelasan Kode

Berikut langkah-langkah memahami kodenya:

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
          title: Text("Latihan Row dan Column"),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text("Text 1"),
            Text("Text 2"),
            Text("Text 3"),
            Row(
              children: <Widget>[
                Text("Text 4"),
                Text("Text 5"),
                Text("Text 6")
              ],
            )
          ],
        ),
      ),
    );
  }
}
```
#### Apa yang Terjadi?
- **AppBar**: Menampilkan judul "Latihan Row dan Column" di bagian atas.
- **Column**: Widget yang menyusun anak-anaknya secara vertikal.
  - **`mainAxisAlignment: MainAxisAlignment.center`**: Mengatur agar widget di dalam Column berada di tengah secara vertikal.
  - **`crossAxisAlignment: CrossAxisAlignment.start`**: Mengatur agar widget di dalam Column disejajarkan ke kiri.
- **Row**: Widget yang menyusun anak-anaknya secara horizontal.

---

## 🚀 Cara Kerja
1. **Text 1, Text 2, Text 3**: Ditampilkan secara vertikal di dalam Column.
2. **Text 4, Text 5, Text 6**: Ditampilkan secara horizontal di dalam Row, yang ada di dalam Column.
3. **MainAxisAlignment & CrossAxisAlignment**: Mengontrol bagaimana widget disejajarkan di sepanjang sumbu utama (main axis) dan sumbu silang (cross axis).

---

## 🖼️ Hasil Akhirnya
- Tiga teks pertama (**Text 1, Text 2, Text 3**) tersusun secara vertikal.
- Di bawahnya, ada tiga teks lain (**Text 4, Text 5, Text 6**) tersusun secara horizontal.
- Semua teks rata kiri. ✨

---

## 🤔 Kenapa Pakai Row dan Column?
- **Column** cocok untuk menyusun widget secara vertikal.
- **Row** cocok untuk menyusun widget secara horizontal.
- Gabungkan keduanya untuk membuat layout yang lebih kompleks! 😍

---

## 🎉 Cobain Sendiri Yuk!
1. Salin kode di atas ke proyek Flutter-mu.
2. Jalankan `flutter run` dan lihat hasilnya.
3. Eksperimen dengan properti **mainAxisAlignment** dan **crossAxisAlignment**. 🚀

Selamat mencoba dan semangat belajar Flutter! 🌟

---

## 📚 Sumber Tambahan
- [Dokumentasi Flutter](https://flutter.dev/docs)
- [Panduan Row dan Column](https://docs.flutter.dev/development/ui/layout)

---

Dibuat dengan ❤️ oleh Guweh sendiri hahayy. Happy Coding! 💻✨
