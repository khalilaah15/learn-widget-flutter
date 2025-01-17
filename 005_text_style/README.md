# Belajar Text Style di Flutter 📝🎨

Halo, teman-teman kreatif! 👋 Kali ini kita akan membahas tentang **Text Style** di Flutter, yang bikin teks kamu lebih keren dan menarik. Yuk kita pelajari sambil eksplorasi! 🚀✨

---

## 🎯 Apa yang Akan Kamu Pelajari
- Apa itu **Text Style** dan bagaimana cara menggunakannya.
- Mengubah tampilan teks seperti ukuran, warna, tebal, miring, dan lainnya.

---

## 📝 Penjelasan Kode

Buka 005_text_style/lib/main.dart

Mari kita bahas kode berikut langkah demi langkah:

### 1️⃣ Fungsi `main`
```dart
void main() {
  runApp(const MyApp());
}
```
Seperti biasa, `main` adalah titik awal aplikasi Flutter. Di sini, kita menjalankan aplikasi dengan widget utama `MyApp`. 🏠

### 2️⃣ Membuat Widget Utama
```dart
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Latihan Text Style"),
        ),
        body: const Center(
          child: Text("Ini adalah Text"),
        ),
      ),
    );
  }
}
```
#### Fitur Utama:
- **`Text` Widget**: Menampilkan teks di layar.
- **`AppBar`**: Judul aplikasi.
- **`Center`**: Memastikan teks berada di tengah layar. ✨

Saat ini, teks kita masih sederhana. Yuk tambahkan gaya untuk membuatnya lebih menarik! 🎨

---

## 🎨 Menambahkan Gaya pada Teks
Kita akan memperbarui widget `Text` untuk menggunakan properti `style`. Contoh:
```dart
Text(
  "Ini adalah Text",
  style: TextStyle(
    fontSize: 24, // Mengatur ukuran font
    fontWeight: FontWeight.bold, // Membuat teks tebal
    color: Colors.blue, // Mengubah warna teks
    fontStyle: FontStyle.italic, // Membuat teks miring
  ),
)
```

### Hasil Akhir:
- **Ukuran Font**: 24 piksel.
- **Warna**: Biru.
- **Gaya**: Tebal dan miring.

---

## 🚀 Cara Kerja
1. Widget `Text` diubah untuk menggunakan properti `style`.
2. Objek `TextStyle` memungkinkan kamu menyesuaikan tampilan teks.
3. Ketika kode dijalankan, teks di layar akan tampil lebih menarik. 😍

---

## 🖼️ Pratinjau Output
Teks dengan gaya:
- Ukuran besar
- Tebal dan miring
- Berwarna biru

Coba eksplorasi properti lain dari `TextStyle`, seperti `letterSpacing`, `wordSpacing`, atau `decoration` untuk efek garis bawah atau coret. ✨

---

## 🎉 Cobain Yuk!
1. Salin kode di atas ke proyek Flutter kamu.
2. Jalankan `flutter run` untuk melihat hasilnya.
3. Eksperimen dengan gaya lain untuk membuat teks yang unik! 🚀

Selamat bereksperimen dengan gaya teks di Flutter! 🌟

---

## 📚 Sumber Tambahan
- [Dokumentasi TextStyle](https://api.flutter.dev/flutter/painting/TextStyle-class.html)
- [Flutter Widget of the Week: Text](https://www.youtube.com/watch?v=KtUVoxD8kVM)

---

Dibuat dengan ❤️ oleh Kha. Happy Styling! 💻✨
