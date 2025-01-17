# Belajar Card di Flutter ✨🌟

Hai teman-teman Flutter Dev! 👋 Kali ini kita akan belajar tentang **Card** di Flutter. Dengan Card, kita dapat membuat komponen dengan desain elegan dan terstruktur, cocok untuk menampilkan konten seperti informasi, gambar, atau ikon. Yuk, kita pelajari bersama! 🚀

---

## 🌟 Apa yang Akan Kamu Pelajari
- Fungsi **Card** sebagai elemen visual di Flutter.
- Membuat **Card** dengan ikon dan teks.
- Menambahkan **elevation** untuk efek bayangan.
- Mengatur tata letak konten dalam **Card**.

---

## 🖋️ Penjelasan Kode

Buka file `015_card/lib/main.dart` dan salin kode berikut untuk memulai:

### 1⃣ Fungsi `main`
```dart
void main() {
  runApp(const MyApp());
}
```
Kode ini adalah titik awal aplikasi Flutter. Fungsi ini menjalankan widget utama kita, yaitu `MyApp`. ✨

### 2⃣ Widget Utama: `MyApp`
```dart
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.green,
        body: Container(
          margin: const EdgeInsets.all(10),
          child: ListView(children: <Widget>[
            BuildCard(Icons.account_box, "Account Box"),
            BuildCard(Icons.adb, "Serangga Android")
          ]),
        ),
      ),
    );
  }

  Card BuildCard(IconData iconData, String text) {
    return Card(
      elevation: 5,
      child: Row(
        children: <Widget>[
          Container(
              margin: EdgeInsets.all(5),
              child: Icon(
                iconData,
                color: Colors.green,
              )),
          Text(text)
        ],
      ),
    );
  }
}
```

#### 🔑 Detail Penjelasan
1. **`MaterialApp:`** Membungkus aplikasi dengan material design.
2. **`Scaffold:`** Membuat struktur halaman utama.
3. **`ListView:`** Menampilkan daftar Card secara vertikal.
4. **`BuildCard:`** Fungsi untuk membuat widget Card dengan ikon dan teks.
5. **`elevation:`** Menambahkan efek bayangan untuk tampilan lebih menarik.

---

## 🚀 Cara Kerja
1. **Card:** Membuat elemen persegi dengan properti bayangan dan padding.
2. **Ikon dan Teks:** Ditempatkan dalam `Row` untuk tata letak horizontal.
3. **ListView:** Mengatur daftar Card agar dapat di-scroll.

---

## 📊 Pratinjau Output
- **Account Box:** Card pertama dengan ikon akun.
- **Serangga Android:** Card kedua dengan ikon Android.

---

## 📚 Cobain Yuk!
1. Salin kode di atas ke proyek Flutter kamu.
2. Jalankan aplikasi dengan perintah `flutter run`.
3. Modifikasi properti Card untuk membuat desainmu sendiri! 🎉

---

## 🔗 Sumber Tambahan
- [Dokumentasi Card](https://api.flutter.dev/flutter/material/Card-class.html)
- [Dokumentasi Icon](https://api.flutter.dev/flutter/widgets/Icon-class.html)

---

Dibuat dengan ❤️ oleh [Kha](https://www.instagram.com/khalilaah.15/) | [LinkedIn](https://www.linkedin.com/in/khalilullah-nuraini-20246223b/). Selamat belajar dan bereksperimen dengan Flutter! 💻✨

