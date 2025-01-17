# Belajar Draggable dan DragTarget di Flutter 🚀✨

Hai teman-teman Flutter Dev! 👋 Kali ini kita akan belajar tentang **Draggable dan DragTarget** di Flutter. Dengan fitur ini, kamu bisa membuat elemen yang bisa di-drag dan drop untuk menciptakan UI yang interaktif. Yuk, kita eksplorasi lebih dalam! 🔥

---

## 🎯 Apa yang Akan Kamu Pelajari
- Apa itu **Draggable** dan **DragTarget** serta cara menggunakannya.
- Membuat elemen yang dapat di-drag dan drop.
- Menangani perubahan UI saat elemen di-drag.

---

## 📝 Penjelasan Kode

Buka 012_dragable/lib/main.dart

Berikut adalah kode untuk memahami konsep Draggable dan DragTarget di Flutter:

### 1️⃣ Fungsi `main`
```dart
void main() {
  runApp(const MyApp());
}
```
Seperti biasa, fungsi ini adalah titik awal aplikasi Flutter. Menjalankan aplikasi dengan widget utama `MyApp`. 🏠

### 2️⃣ Widget Utama: `MyApp`
```dart
class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}
```
`MyApp` adalah **StatefulWidget** karena kita akan mengubah warna target secara dinamis saat elemen di-drop. ✨

### 3️⃣ Logika dan State di `_MyAppState`
```dart
class _MyAppState extends State<MyApp> {
  Color color1 = Colors.red;
  Color color2 = Colors.amber;
```
- **`color1`**: Warna elemen yang bisa di-drag.
- **`color2`**: Warna target yang akan berubah saat elemen di-drop.

### 4️⃣ Struktur UI di `build` Method
```dart
@override
Widget build(BuildContext context) {
  return MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: const Text("Latihan Draggable dan DragTarget"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Draggable<Color>(
                data: color1,
                child: SizedBox(
                  width: 100,
                  height: 50,
                  child: Material(
                    color: color1,
                    shape: const StadiumBorder(),
                    elevation: 3,
                  ),
                ),
                childWhenDragging: SizedBox(
                  width: 100,
                  height: 50,
                  child: Material(
                    color: Colors.black26,
                    shape: const StadiumBorder(),
                    elevation: 3,
                  ),
                ),
                feedback: SizedBox(
                  width: 100,
                  height: 50,
                  child: Material(
                    color: color1.withOpacity(0.5),
                    shape: const StadiumBorder(),
                    elevation: 6,
                  ),
                ),
              )
            ],
          ),
          DragTarget<Color>(
            onAccept: (receivedColor) {
              setState(() {
                color2 = receivedColor; // Ubah warna target
              });
            },
            builder: (context, acceptedData, rejectedData) {
              return SizedBox(
                width: 100,
                height: 50,
                child: Material(
                  color: color2,
                  shape: const StadiumBorder(),
                  elevation: 3,
                ),
              );
            },
          ),
        ],
      ),
    ),
  );
}
```
#### Penjelasan
1. **Draggable**:
   - Elemen yang bisa di-drag. Properti penting:
     - `data`: Data yang dikirim saat elemen di-drop.
     - `child`: Widget utama yang ditampilkan.
     - `childWhenDragging`: Widget yang ditampilkan saat elemen sedang di-drag.
     - `feedback`: Widget yang muncul di posisi kursor selama drag.
2. **DragTarget**:
   - Area tempat elemen bisa di-drop. Properti penting:
     - `onAccept`: Callback yang dijalankan saat elemen di-drop ke target.
     - `builder`: Fungsi untuk membangun tampilan target.

---

## 🚀 Cara Kerja
1. **Drag Elemen**:
   - Klik dan tahan elemen berwarna merah, lalu seret ke area target.
2. **Drop Elemen**:
   - Lepaskan elemen di area target untuk mengubah warnanya.

---

## 🎉 Cobain Yuk!
1. Salin kode ini ke proyek Flutter kamu.
2. Tambahkan gambar atau animasi untuk membuat UI lebih menarik.
3. Eksplorasi fitur tambahan seperti mengubah bentuk elemen yang di-drag. 🧪

---

## 📚 Sumber Tambahan
- [Dokumentasi Draggable](https://api.flutter.dev/flutter/widgets/Draggable-class.html)
- [Dokumentasi DragTarget](https://api.flutter.dev/flutter/widgets/DragTarget-class.html)

---

Dibuat dengan ❤️ oleh [Kha](https://www.instagram.com/khalilaah.15/) | [LinkedIn](https://www.linkedin.com/in/khalilullah-nuraini-20246223b/). Selamat belajar dan bereksperimen dengan Flutter! 💻✨
