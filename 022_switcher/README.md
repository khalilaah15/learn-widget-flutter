# 🎚️ Menggunakan AnimatedSwitcher dan Switch di Flutter! ✨

Halo Flutter Dev! 👋 Kali ini kita akan belajar bagaimana cara menggunakan **AnimatedSwitcher** dan **Switch** untuk membuat interaksi dan animasi yang menarik di aplikasi Flutter kamu! 🚀

---

## 🔮 Apa yang Akan Kamu Pelajari
- Menambahkan animasi dinamis dengan **AnimatedSwitcher**.
- Mengubah tampilan widget secara responsif menggunakan **Switch**.
- Menggunakan **ScaleTransition** untuk animasi transisi yang halus.

---

## 🖋️ Penjelasan Kode

Buka 022_switcher/lib/main.dart

Mari kita bahas kode di bawah ini, yang menggabungkan **Switch** dan **AnimatedSwitcher**. 🚀

### 1⃣ Fungsi main
```dart
void main() {
  runApp(const MyApp());
}
```
Kode ini adalah titik awal aplikasi Flutter, yang menjalankan widget utama **MyApp**. 🏠

### 2⃣ Widget Utama: MyApp
```dart
class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}
```
Kita menggunakan **StatefulWidget** di sini karena kita akan merubah tampilan widget saat switch berubah. `State<MyApp>` memungkinkan kita untuk memperbarui UI.

### 3⃣ Deklarasi Variabel
```dart
bool isON = false;
Widget myWidget = Container(
  width: 200,
  height: 100,
  decoration: BoxDecoration(
      color: Colors.red, border: Border.all(color: Colors.black, width: 3)),
);
```
- **isON** adalah variabel boolean yang digunakan untuk menentukan apakah **Switch** dalam keadaan ON atau OFF.
- **myWidget** adalah widget yang akan kita tampilkan dan ubah berdasarkan nilai **isON**.

### 4⃣ Widget AnimatedSwitcher
```dart
AnimatedSwitcher(
  duration: const Duration(seconds: 1),
  child: myWidget,
  transitionBuilder: (child, animation) => ScaleTransition(scale: animation, child: child,),
),
```
- **AnimatedSwitcher** memungkinkan kita untuk memberikan animasi pada perubahan widget. 
- **duration** mengatur waktu animasi (dalam detik).
- **transitionBuilder** mengatur animasi transisi, di sini kita menggunakan **ScaleTransition** untuk memberikan efek pembesaran atau pengecilan pada widget saat transisi.

### 5⃣ Widget Switch
```dart
Switch(
  activeColor: Colors.green,
  inactiveThumbColor: Colors.red,
  inactiveTrackColor: Colors.red[200],
  value: isON,
  onChanged: (newValue) {
    isON = newValue;
    setState(() {
      if (isON)
        myWidget = SizedBox(
          width: 200,
          height: 100,
          child: Center(
            child: Text(
              "Switch: ON",
              style: TextStyle(
                  color: Colors.green,
                  fontWeight: FontWeight.w700,
                  fontSize: 20)))),
      else
        myWidget = Container(
          width: 200,
          height: 100,
          decoration: BoxDecoration(
              color: Colors.red,
              border: Border.all(color: Colors.black, width: 3)),
        );
    });
  }
)
```
- **Switch** adalah widget untuk membuat tombol on/off.
- **activeColor** mengubah warna tombol saat aktif (ON).
- **inactiveThumbColor** mengubah warna tombol saat tidak aktif (OFF).
- **inactiveTrackColor** mengubah warna jalur di belakang tombol saat tidak aktif.
- **onChanged** adalah callback yang dipanggil setiap kali nilai switch berubah. Saat switch berubah, kita memperbarui **myWidget** dengan widget baru yang sesuai dengan status switch.

---

## 🚀 Cara Kerja
1. **Switch** memungkinkan pengguna untuk mengubah status dari ON ke OFF dan sebaliknya.
2. Ketika status berubah, kita memperbarui **myWidget** dengan widget baru (sebuah teks atau container).
3. **AnimatedSwitcher** memberikan animasi transisi yang mulus saat **myWidget** berubah. Dalam hal ini, kita menggunakan **ScaleTransition** untuk memberikan efek pembesaran/pengecilan pada widget.

---

## 🔄 Pratinjau Output
- Saat switch berada di posisi ON, widget akan menampilkan teks "Switch: ON" dengan warna hijau.
- Saat switch berada di posisi OFF, widget akan menampilkan kotak merah.
- Perubahan status switch diikuti dengan animasi **ScaleTransition** yang memperbesar atau mengecilkan widget.

---

## 📚 Cobain Yuk!
1. Salin kode ini ke proyek Flutter kamu.
2. Jalankan aplikasi dengan `flutter run`.
3. Bereksperimen dengan menyesuaikan warna dan animasi yang ada! 🎉

---

## 📚 Sumber Tambahan
- [Dokumentasi AnimatedSwitcher](https://api.flutter.dev/flutter/widgets/AnimatedSwitcher-class.html)
- [Dokumentasi Switch](https://api.flutter.dev/flutter/material/Switch-class.html)

---

Dibuat dengan ❤️ oleh [Kha](https://www.instagram.com/khalilaah.15/) | [LinkedIn](https://www.linkedin.com/in/khalilullah-nuraini-20246223b/). Selamat belajar dan bereksperimen dengan Flutter! 💻✨
