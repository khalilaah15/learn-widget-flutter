# Belajar ListView di Flutter 📜✨

Hai teman-teman Flutter Dev! 👋 Kali ini kita akan belajar tentang **ListView** di Flutter. Dengan ListView, kamu bisa menampilkan banyak data dalam satu kolom atau baris secara dinamis. Yuk, kita mulai petualangan kode kita! 🚀

---

## 🎯 Apa yang Akan Kamu Pelajari
- Apa itu **ListView** dan bagaimana cara menggunakannya.
- Menambahkan atau menghapus item secara dinamis di ListView.
- Cara memanfaatkan `setState` untuk memperbarui UI.

---

## 📝 Penjelasan Kode
Mari kita telusuri kode di bawah ini langkah demi langkah:

### 1️⃣ Fungsi `main`
```dart
void main() {
  runApp(const MyApp());
}
```
Seperti biasa, ini adalah titik awal aplikasi Flutter, menjalankan aplikasi dengan widget utama `MyApp`. 🏠

### 2️⃣ Widget Utama: `MyApp`
```dart
class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}
```
`MyApp` adalah **StatefulWidget** karena kita akan mengubah daftar item secara dinamis. Setiap perubahan state akan diperbarui secara real-time di UI. 🌟

### 3️⃣ State dan Logika Utama
```dart
class _MyAppState extends State<MyApp> {
  List<Widget> widgets = [];
  int counter = 1;
```
- **`widgets`**: Menyimpan daftar widget yang akan ditampilkan di ListView.
- **`counter`**: Sebagai penomoran untuk setiap data yang ditambahkan.

### 4️⃣ Struktur UI di `build` Method
```dart
@override
Widget build(BuildContext context) {
  return MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: const Text("Latihan ListView"),
      ),
      body: ListView(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              ElevatedButton(
                child: Text("Tambah Data"),
                onPressed: () {
                  setState(() {
                    widgets.add(Text(
                      "Data ke-" + counter.toString(),
                      style: const TextStyle(fontSize: 35),
                    ));
                    counter++;
                  });
                },
              ),
              ElevatedButton(
                child: Text("Hapus Data"),
                onPressed: () {
                  setState(() {
                    widgets.removeLast();
                  });
                },
              )
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: widgets,
          )
        ],
      ),
    ),
  );
}
```
#### Fitur Utama:
- **ListView**: Komponen utama untuk menampilkan daftar data.
- **Row**: Berisi tombol "Tambah Data" dan "Hapus Data" untuk mengelola data di ListView.
- **Column**: Menyimpan elemen teks yang ditambahkan secara dinamis ke dalam `widgets`.
- **`setState`**: Memperbarui UI saat item ditambah atau dihapus. 🔄

---

## 🚀 Cara Kerja
1. **Tambah Data**:
   - Klik tombol "Tambah Data" untuk menambahkan item baru ke daftar.
   - `setState` akan memanggil ulang `build`, dan daftar diperbarui.

2. **Hapus Data**:
   - Klik tombol "Hapus Data" untuk menghapus item terakhir di daftar.
   - Jika daftar kosong, tombol ini tidak akan berfungsi (tidak ada data yang dihapus). 😅

3. **ListView**: Secara otomatis mengelola scrollbar dan layout untuk daftar yang panjang.

---

## 🖼️ Pratinjau Output
- Tombol di bagian atas untuk menambah dan menghapus data.
- Daftar teks yang diperbarui secara dinamis.

---

## 🎉 Cobain Yuk!
1. Salin kode ini ke proyek Flutter kamu.
2. Jalankan aplikasi dengan `flutter run`.
3. Tambah dan hapus data di ListView sambil eksplorasi fitur lainnya! 🧪

---

## 📚 Sumber Tambahan
- [Dokumentasi ListView](https://api.flutter.dev/flutter/widgets/ListView-class.html)
- [Flutter Widget of the Week: ListView](https://www.youtube.com/watch?v=KJpkjHGiI5A)

---

Dibuat dengan ❤️ oleh [Kha](https://www.instagram.com/khalilaah.15/). Selamat ngoding dan bereksperimen! 💻✨
[LinkedIn](https://www.linkedin.com/in/khalilullah-nuraini-20246223b/)

