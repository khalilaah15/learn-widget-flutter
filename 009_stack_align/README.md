# Belajar Stack dan Align di Flutter ★✨

Hai teman-teman Flutter Dev! 👋 Kali ini kita akan belajar tentang **Stack** dan **Align** di Flutter. Dengan Stack, kita bisa menyusun widget di atas satu sama lain, dan dengan Align, kita dapat mengatur posisi widget dengan mudah. Yuk, kita eksplor lebih jauh! 🚀

---

## 🔮 Apa yang Akan Kamu Pelajari
- Konsep dasar **Stack** untuk membuat lapisan-lapisan widget.
- Cara menggunakan **Align** untuk mengatur posisi widget di dalam Stack.
- Kombinasi Stack dengan widget lainnya, seperti ListView.

---

## 🖋️ Penjelasan Kode

Buka 009_stack_align/lib/main.dart

Mari kita telusuri kode di bawah ini langkah demi langkah:

### 1⃣ Fungsi `main`
```dart
void main() {
  runApp(const MyApp());
}
```
Seperti biasa, kode ini adalah titik awal aplikasi Flutter, yang menjalankan widget utama `MyApp`. 🏠

### 2⃣ Widget Utama: `MyApp`
```dart
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Latihan Stack dan Align"),
        ),
```
Di sini, kita menggunakan `StatelessWidget` karena UI-nya tidak memerlukan perubahan state secara dinamis. ✨

### 3⃣ Struktur Utama: Stack
```dart
        body: Stack(
          children: <Widget>[
            // Lapisan bawah
            Column(
              children: <Widget>[
                Flexible(
                  flex: 1,
                  child: Row(
                    children: <Widget>[
                      Flexible(
                        flex: 1,
                        child: Container(
                          color: Colors.white,
                        ),
                      ),
                      Flexible(
                        flex: 1,
                        child: Container(
                          color: Colors.black12,
                        ),
                      ),
                    ],
                  ),
                ),
                Flexible(
                  flex: 1,
                  child: Row(
                    children: <Widget>[
                      Flexible(
                        flex: 1,
                        child: Container(
                          color: Colors.black12,
                        ),
                      ),
                      Flexible(
                        flex: 1,
                        child: Container(
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
```
- **Lapisan Bawah**: Membuat pola kotak seperti papan catur dengan warna putih dan abu-abu.

### 4⃣ Lapisan Tengah: ListView
```dart
            ListView(
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Container(
                      margin: const EdgeInsets.all(10),
                      child: const Text(
                          "Ini adalah text yang ada di lapisan tengah dari Stack.",
                          style: TextStyle(fontSize: 25)),
                    ),
                    // Tambahkan text lainnya jika perlu
                  ],
                )
              ],
            ),
```
- **Lapisan Tengah**: Menggunakan ListView untuk menampilkan teks secara scrollable. ▶️

### 5⃣ Lapisan Atas: Align
```dart
            Align(
              alignment: Alignment.bottomCenter,
              child: ElevatedButton(
                onPressed: () {},
                child: const Text("My Button")
              ),
            )
          ],
        ),
```
- **Lapisan Atas**: Menambahkan tombol di bagian bawah layar menggunakan **Align** dengan properti `Alignment.bottomCenter`. 🔽

---

## 🚀 Cara Kerja
1. **Lapisan Bawah**: Membuat layout papan catur menggunakan widget **Row** dan **Column** yang dibungkus oleh **Flexible**.
2. **Lapisan Tengah**: Menampilkan teks menggunakan **ListView**, sehingga teks bisa discroll.
3. **Lapisan Atas**: Menambahkan tombol yang selalu berada di bawah layar dengan menggunakan **Align**.

---

## 🔄 Pratinjau Output
- **Lapisan Bawah**: Pola kotak seperti papan catur.
- **Lapisan Tengah**: Teks yang bisa digeser dengan scroll.
- **Lapisan Atas**: Tombol yang tetap berada di bawah.

---

## 📚 Cobain Yuk!
1. Salin kode ini ke proyek Flutter kamu.
2. Jalankan aplikasi dengan `flutter run`.
3. Eksplorasi lapisan Stack dan posisi Align untuk kebutuhan layout lainnya! 🎉

---

## 📚 Sumber Tambahan
- [Dokumentasi Stack](https://api.flutter.dev/flutter/widgets/Stack-class.html)
- [Dokumentasi Align](https://api.flutter.dev/flutter/widgets/Align-class.html)

---

Dibuat dengan ❤️ oleh [Kha](https://www.instagram.com/khalilaah.15/) | [LinkedIn](https://www.linkedin.com/in/khalilullah-nuraini-20246223b/). Selamat belajar dan bereksperimen dengan Flutter! 💻✨

