# Belajar TextField di Flutter ✏️✨

Hai teman-teman Flutter Dev! 👋 Kali ini kita akan belajar tentang **TextField** di Flutter. Dengan TextField, kita dapat menerima input dari pengguna dengan berbagai gaya dan fitur tambahan. Yuk, kita eksplor lebih jauh! 🚀

---

## 🔮 Apa yang Akan Kamu Pelajari
- Fungsi **TextField** sebagai komponen input teks di Flutter.
- Menambahkan **ikon**, **hint text**, dan **border** ke TextField.
- Mengatur **TextEditingController** untuk membaca input pengguna secara dinamis.

---

## 🖋️ Penjelasan Kode

Buka `016/lib/main.dart`. Mari kita telusuri kode ini step by step:

### 1⃣ Fungsi `main`
```dart
void main() {
  runApp(const MyApp());
}
```
Kode ini adalah titik awal aplikasi Flutter. Fungsi ini menjalankan widget utama kita, yaitu `MyApp`. 🌟

### 2⃣ Widget Utama: `MyApp`
```dart
class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Text("Latihan Text Field"),
            ),
            body: ...));
  }
}
```
- **`StatefulWidget`:** Digunakan untuk mengelola input yang dapat berubah secara dinamis.
- **`TextEditingController`:** Mengontrol nilai teks yang dimasukkan oleh pengguna.

### 3⃣ Elemen TextField
```dart
TextField(
  decoration: InputDecoration(
      fillColor: Colors.lightBlue[50],
      filled: true,
      icon: Icon(Icons.adb),
      suffix: Container(
        width: 5,
        height: 5,
        color: Colors.red,
      ),
      prefixIcon: Icon(Icons.person),
      prefixText: "Name",
      prefixStyle: TextStyle(
          color: Colors.blue,
          fontWeight: FontWeight.w600),
      labelText: "Nama Lengkap",
      hintText: "Ketik disini",
      hintStyle: TextStyle(fontSize: 15),
      border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10))),
  maxLength: 5,
  onChanged: (value) {
    setState(() {});
  },
  controller: controller,
)
```

#### 🔑 Detail Penjelasan:
- **`decoration:`** Mengatur gaya TextField, termasuk ikon, label, dan hint.
- **`maxLength:`** Membatasi jumlah karakter yang dapat dimasukkan pengguna.
- **`onChanged:`** Memperbarui nilai teks secara real-time.
- **`controller:`** Mengambil dan mengatur nilai teks secara langsung.

---

## 🚀 Cara Kerja
1. **Dekorasi Input:** Tambahkan ikon, teks label, dan hint untuk memandu pengguna.
2. **Real-Time Update:** Teks yang diketik pengguna langsung ditampilkan di bawah TextField.
3. **Validasi Input:** Gunakan `maxLength` untuk membatasi input pengguna.

---

## 🕊️ Pratinjau Output
- **Ikon Android di sebelah kiri TextField.**
- **Label "Nama Lengkap" di atas TextField.**
- **Teks pengguna ditampilkan secara real-time di bawah TextField.**
- **Batas maksimum input sebanyak 5 karakter.**

---

## 📚 Cobain Yuk!
1. Salin kode ini ke proyek Flutter kamu.
2. Jalankan aplikasi dengan perintah `flutter run`.
3. Modifikasi properti TextField untuk membuat desainmu sendiri! 🎉

---

## 📚 Sumber Tambahan
- [Dokumentasi TextField](https://api.flutter.dev/flutter/material/TextField-class.html)
- [Dokumentasi InputDecoration](https://api.flutter.dev/flutter/material/InputDecoration-class.html)

---

Dibuat dengan ❤️ oleh [Kha](https://www.instagram.com/khalilaah.15/) | [LinkedIn](https://www.linkedin.com/in/khalilullah-nuraini-20246223b/). Selamat belajar dan bereksperimen dengan Flutter! 💻✨
