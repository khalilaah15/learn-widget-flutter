# 🎨 Membuat AppBar dengan Custom Height di Flutter 🌟

Halo Flutter Dev! 👋 Hari ini kita akan belajar cara membuat **AppBar** dengan **Custom Height** yang keren di Flutter! 🎉

---

## 🔮 Apa yang Akan Kamu Pelajari
- Membuat **AppBar** dengan tinggi kustom.
- Menggunakan **PreferredSize** untuk menyesuaikan ukuran AppBar.
- Menambahkan teks di dalam **AppBar** dengan posisi yang bisa disesuaikan.

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
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              // AppBar dengan tinggi kustom
              PreferredSize(
                preferredSize: const Size.fromHeight(200),
                child: AppBar(
                  backgroundColor: Colors.amber,
                  flexibleSpace: Align(
                    alignment: Alignment.bottomRight,
                    child: Container(
                      margin: const EdgeInsets.all(20),
                      child: const Text(
                        "AppBar with custom Height",
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.w700),
                      ),
                    ),
                  ),
                ),
              ),
```
- **Widget utama** kita adalah **MyApp**. Di sini kita menggunakan **MaterialApp** untuk aplikasi material desain dan **Scaffold** untuk struktur dasar UI.
- **AppBar** kita memiliki tinggi yang disesuaikan dengan **PreferredSize**. Kita set ukuran tinggi ke 200 piksel. 🌟

### 3⃣ Menambahkan Teks pada AppBar
```dart
              // Tambahkan widget lain di sini
              Expanded(
                child: Center(
                  child: const Text("Konten di sini"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
```
- **FlexibleSpace** di dalam AppBar memungkinkan kita untuk menambahkan **Text** dengan gaya font yang keren di bagian bawah kanan. Teks ini akan berfungsi sebagai judul AppBar kita! 🎤
- Di bawah AppBar, kita menggunakan **Expanded** untuk menampilkan teks lainnya di tengah layar.

---

## 🚀 Cara Kerja
1. **PreferredSize** digunakan untuk mengatur tinggi AppBar ke 200px.
2. **FlexibleSpace** memungkinkan kita menambahkan widget lain, dalam hal ini teks, dengan posisi yang fleksibel di dalam AppBar.
3. **Align** digunakan untuk menempatkan teks di bagian bawah kanan AppBar. 📏

---

## 🔄 Pratinjau Output
- **AppBar** dengan tinggi kustom yang memiliki teks di sudut kanan bawah.
- Konten di bawah AppBar yang dapat kamu sesuaikan lebih lanjut!

---

## 📚 Cobain Yuk!
1. Salin kode ini ke proyek Flutter kamu.
2. Jalankan aplikasi dengan `flutter run`.
3. Eksplorasi lebih lanjut tentang AppBar dan sesuaikan dengan kebutuhan UI kamu! 🎉

---

## 📚 Sumber Tambahan
- [Dokumentasi PreferredSize](https://api.flutter.dev/flutter/widgets/PreferredSize-class.html)
- [Dokumentasi AppBar](https://api.flutter.dev/flutter/material/AppBar-class.html)

---

Dibuat dengan ❤️ oleh [Kha](https://www.instagram.com/khalilaah.15/) | [LinkedIn](https://www.linkedin.com/in/khalilullah-nuraini-20246223b/). Selamat belajar dan bereksperimen dengan Flutter! 💻✨
