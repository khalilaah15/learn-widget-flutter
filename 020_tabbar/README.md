# 🌟 Membuat TabBar di Flutter dengan Mudah 🎉

Halo Flutter Dev! 👋 Kali ini kita akan belajar cara membuat **TabBar** yang keren di Flutter! 🎨 TabBar memungkinkan kita membuat tab navigasi untuk berpindah antar konten yang berbeda. Penasaran? Yuk, kita mulai! 🚀

---

## 🔮 Apa yang Akan Kamu Pelajari
- Cara membuat **TabBar** untuk navigasi antar tab.
- Menggunakan **TabBarView** untuk menampilkan konten berdasarkan tab yang dipilih.
- Menambahkan berbagai jenis widget di dalam **Tab** seperti ikon dan gambar.

---

## 🖋️ Penjelasan Kode

Buka `lib/main.dart`, dan mari kita bahas kode ini bareng-bareng! 🚀

### 1⃣ Fungsi main
```dart
void main() {
  runApp(const MyApp());
}
```
Kode ini adalah titik awal aplikasi Flutter, yang menjalankan widget utama **MyApp**. 🏠

### 2⃣ Widget Utama: MyApp
```dart
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
          length: 4,
          child: Scaffold(
            appBar: AppBar(
              title: const Text("Contoh Tab Bar"),
              bottom: const TabBar(
                tabs: <Widget>[
                  Tab(icon: Icon(Icons.comment), text: "Comments"),
                  Tab(child: Image(image: AssetImage("assets/van.png"))),
                  Tab(icon: Icon(Icons.computer)),
                  Tab(text: "News"),
                ]
              ),
            ),
            body: const TabBarView(
              children: <Widget>[
                Center(child: Text("Tab 1")),
                Center(child: Text("Tab 2")),
                Center(child: Text("Tab 3")),
                Center(child: Text("Tab 4")),
              ]
            ),
          ),
        ),
    );
  }
}
```
- **MaterialApp** di sini menjadi widget utama aplikasi kita.
- **DefaultTabController** mengontrol jumlah tab yang akan kita buat. Di sini kita set `length` ke 4, yang berarti kita akan membuat 4 tab.
- **TabBar** diletakkan di dalam **AppBar**, dan di dalamnya kita mendefinisikan 4 tab:
  - Tab pertama menggunakan ikon komentar dan teks "Comments".
  - Tab kedua menampilkan gambar van dari BT21.
  - Tab ketiga menggunakan ikon komputer.
  - Tab keempat hanya menampilkan teks "News".
  
### 3⃣ TabBarView
```dart
body: const TabBarView(
  children: <Widget>[
    Center(child: Text("Tab 1")),
    Center(child: Text("Tab 2")),
    Center(child: Text("Tab 3")),
    Center(child: Text("Tab 4")),
  ]
),
```
- **TabBarView** berfungsi untuk menampilkan konten yang berbeda sesuai dengan tab yang dipilih. Setiap tab akan memiliki widget **Center** dengan teks yang menunjukkan tab mana yang sedang aktif.

---

## 🚀 Cara Kerja
1. **TabBar** memungkinkan kita untuk membuat tab navigasi yang bisa dipilih oleh pengguna.
2. Setiap tab memiliki widget berbeda yang dapat berupa ikon, gambar, atau teks.
3. **TabBarView** akan menampilkan konten yang sesuai dengan tab yang aktif.

---

## 🔄 Pratinjau Output
- **Tab 1**: Menampilkan teks "Tab 1".
- **Tab 2**: Menampilkan teks "Tab 2".
- **Tab 3**: Menampilkan teks "Tab 3".
- **Tab 4**: Menampilkan teks "Tab 4".

---

## 📚 Cobain Yuk!
1. Salin kode ini ke proyek Flutter kamu.
2. Jalankan aplikasi dengan `flutter run`.
3. Eksplorasi TabBar dan sesuaikan dengan kebutuhan aplikasi kamu! 🎉

---

## 📚 Sumber Tambahan
- [Dokumentasi TabBar](https://api.flutter.dev/flutter/material/TabBar-class.html)
- [Dokumentasi TabBarView](https://api.flutter.dev/flutter/material/TabBarView-class.html)

---

Dibuat dengan ❤️ oleh [Kha](https://www.instagram.com/khalilaah.15/) | [LinkedIn](https://www.linkedin.com/in/khalilullah-nuraini-20246223b/). Selamat belajar dan bereksperimen dengan Flutter! 💻✨
