# Belajar Custom Card di Flutter 🖼️✨

Hai teman-teman Flutter Dev! 👋 Kali ini kita akan belajar tentang **Custom Card** di Flutter. Dalam materi ini, kita akan membuat tampilan kartu yang lebih kompleks dan estetik, lengkap dengan gambar latar, teks, dan ikon interaktif. Yuk, kita mulai! 🚀

---

## 🔮 Apa yang Akan Kamu Pelajari
- Membuat **Card** dengan desain modern.
- Menambahkan **gambar latar** di dalam Card.
- Menggunakan **Stack** untuk mengatur lapisan elemen.
- Menambahkan elemen interaktif, seperti **ikon** dan **teks deskripsi**.

---

## 🖋️ Penjelasan Kode

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
      home: MainPage(),
    );
  }
}
```
- **`MaterialApp`:** Membungkus aplikasi dengan tema Material Design.
- **`MainPage`:** Halaman utama aplikasi yang akan menampilkan Custom Card.

### 3⃣ Struktur Halaman: `MainPage`
```dart
class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Custom Card Example",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: const Color(0xFF8C062F),
      ),
      body: Stack(
        children: <Widget>[
          ...
        ],
      ),
    );
  }
}
```
- **`AppBar`:** Menampilkan header dengan teks "Custom Card Example".
- **`Stack`:** Digunakan untuk menumpuk elemen-elemen seperti gradient background dan card.

### 4⃣ Elemen di Dalam Stack
#### Gradient Background
```dart
Container(
  decoration: const BoxDecoration(
      gradient: LinearGradient(
          colors: [Color(0xFFFE5788), Color(0XFFF56D5D)],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter)),
),
```
Membuat latar belakang gradien dengan kombinasi warna merah muda dan jingga.

#### Custom Card
```dart
Center(
  child: SizedBox(
    width: MediaQuery.of(context).size.width * 0.8,
    height: MediaQuery.of(context).size.height * 0.7,
    child: Card(
      elevation: 10,
      child: Stack(
        children: <Widget>[
          ...
        ],
      ),
    ),
  ),
),
```
- **`SizedBox`:** Menentukan ukuran Card agar proporsional dengan layar.
- **`Card`:** Widget utama yang menampilkan desain custom.

#### Desain di Dalam Card
1. **Background Pattern**
   ```dart
   Opacity(
     opacity: 0.1,
     child: Container(
       decoration: BoxDecoration(
           borderRadius: BorderRadius.circular(4),
           image: const DecorationImage(
               image: NetworkImage(
                   "https://img.freepik.com/premium-vector/linear-flat-abstract-lines-pattern_23-2148955379.jpg"),
               fit: BoxFit.cover)),
     ),
   ),
   ```

2. **Gambar Utama**
   ```dart
   Container(
     height: MediaQuery.of(context).size.height * 0.35,
     decoration: const BoxDecoration(
         borderRadius: BorderRadius.only(
             topLeft: Radius.circular(4),
             topRight: Radius.circular(4)),
         image: DecorationImage(
             image: NetworkImage(
                 "https://pict.sindonews.net/dyn/850/pena/news/2021/09/18/156/544508/3-pantai-cantik-di-banten-yang-menarik-buat-plesiran-fuw.jpg"),
             fit: BoxFit.cover)),
   ),
   ```

3. **Deskripsi Konten**
   ```dart
   Container(
     margin: EdgeInsets.fromLTRB(
         20,
         50 + MediaQuery.of(context).size.height * 0.35,
         20,
         20),
     child: Center(
       child: Column(
         children: <Widget>[
           const Text(
             "Beautiful Beach at South Malang",
             maxLines: 2,
             textAlign: TextAlign.center,
             style: TextStyle(
                 color: Color(0xFFF56D5D), fontSize: 25),
           ),
           ...
         ],
       ),
     ),
   )
   ```

4. **Ikon Interaktif**
   ```dart
   const Row(
     children: <Widget>[
       Spacer(flex: 10,),
       Icon(Icons.thumb_up, size: 18, color: Colors.grey,),
       Spacer(flex: 1,),
       Text("99", style: TextStyle(color: Colors.grey),),
       Spacer(flex: 5,),
       Icon(Icons.comment, size: 18, color: Colors.grey,),
       Spacer(flex: 1,),
       Text("99", style: TextStyle(color: Colors.grey),),
       Spacer(flex: 10,)
     ],
   )
   ```

---

## 🚀 Cara Kerja
1. **Background Pattern:** Menambahkan pola garis linear yang redup menggunakan `Opacity`.
2. **Gambar Utama:** Menampilkan gambar pantai dengan posisi di bagian atas Card.
3. **Deskripsi:** Menampilkan teks judul dan tanggal posting.
4. **Ikon Interaktif:** Menambahkan ikon Like dan Comment dengan jumlah.

---

## 🔄 Pratinjau Output
- **Background gradient merah muda dan jingga.**
- **Card dengan gambar pantai di bagian atas.**
- **Teks judul dan tanggal posting di bagian tengah.**
- **Ikon Like dan Comment di bagian bawah.**

---

## 📚 Cobain Yuk!
1. Salin kode ini ke proyek Flutter kamu.
2. Jalankan aplikasi dengan perintah `flutter run`.
3. Modifikasi desain Card untuk membuat variasi yang lebih menarik! 🎉

---

## 📚 Sumber Tambahan
- [Dokumentasi Card](https://api.flutter.dev/flutter/material/Card-class.html)
- [Dokumentasi Stack](https://api.flutter.dev/flutter/widgets/Stack-class.html)

---

Dibuat dengan ❤️ oleh [Kha](https://www.instagram.com/khalilaah.15/) | [LinkedIn](https://www.linkedin.com/in/khalilullah-nuraini-20246223b/). Selamat belajar dan bereksperimen dengan Flutter! 💻✨
