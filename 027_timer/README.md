# Belajar Timer di Flutter ⏱️🔥

Halo teman-teman! 👋 Kali ini kita akan belajar tentang **Timer** di Flutter! Timer sangat berguna untuk melakukan aksi secara otomatis setelah jangka waktu tertentu. Yuk, kita pelajari cara menggunakannya! 🚀✨

---

## 🎯 Apa yang Akan Kamu Pelajari
- Cara membuat timer yang berjalan secara otomatis di Flutter.
- Menggunakan **Timer.periodic** untuk perulangan aksi.
- Menghentikan timer dengan **cancel** saat tidak diperlukan lagi.

---

## 📝 Penjelasan Kode

Buka **027_timer/lib/main.dart**

Mari kita bahas kode berikut:

### 1️⃣ Fungsi `main`
```dart
void main() {
  runApp(const MyApp());
}
```
Seperti biasa, `main` adalah titik awal aplikasi Flutter. Di sini, kita menjalankan aplikasi dengan widget utama `MyApp`. 🏠

### 2️⃣ Membuat Widget Utama
```dart
class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool isBlack = true;
  bool isStop = true;
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Timer Demo"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                counter.toString(),
                style: TextStyle(
                    color: (isBlack) ? Colors.black : Colors.red,
                    fontSize: 40,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 10,
              ),
              ElevatedButton(
                child: Text("Ubah warna 5 detik kemudian"),
                onPressed: () {
                  Timer(Duration(seconds: 5), () {
                    setState(() {
                      isBlack = !isBlack;
                    });
                  });
                },
              ),
              SizedBox(
                height: 10,
              ),
              ElevatedButton(
                child: Text("Ubah warna secara langsung"),
                onPressed: () {
                  setState(() {
                    isBlack = !isBlack;
                  });
                },
              ),
              SizedBox(
                height: 10,
              ),
              ElevatedButton(
                child: Text("Start Timer"),
                onPressed: () {
                  setState(() {
                    counter = 0;
                    isStop = false;
                  });
                  Timer.periodic(Duration(seconds: 1), (timer) {
                    if (isStop) {
                      timer.cancel();
                    }
                    setState(() {
                      counter++;
                    });
                  });
                },
              ),
              SizedBox(
                height: 10,
              ),
              ElevatedButton(
                child: Text("Stop Timer"),
                onPressed: () {
                  setState(() {
                    isStop = true;
                  });
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
```

#### Fitur Utama:
- **`Timer(Duration(seconds: 5))`**: Mengubah warna teks setelah 5 detik.
- **`Timer.periodic(Duration(seconds: 1))`**: Menjalankan aksi secara berulang setiap detik dan menghitung waktu.
- **`cancel()`**: Menghentikan timer jika sudah tidak diperlukan.

---

## ⏲️ Cara Kerja Timer

1. **`Timer(Duration(seconds: 5))`** digunakan untuk menunda perubahan warna selama 5 detik.
2. **`Timer.periodic(Duration(seconds: 1))`** mengulangi aksi setiap detik, seperti menghitung detik secara terus-menerus.
3. **`cancel()`** menghentikan timer jika tombol "Stop Timer" ditekan.

---

## 🎨 Gaya dan Output

- **Warna Teks**: Teks berubah warna setelah 5 detik atau langsung ketika tombol ditekan.
- **Timer**: Menghitung detik dari 0 hingga tak terbatas sampai dihentikan.

---

## 🚀 Cara Kerja Kode
1. **Mengatur Timer**: Dengan `Timer.periodic`, kita mengatur timer untuk menambah angka **counter** setiap detik.
2. **Tombol Kontrol**: Ada tombol untuk mengubah warna teks dan memulai/ menghentikan timer.

---

## 🖼️ Pratinjau Output
- **Warna Teks**: Berubah setelah 5 detik atau langsung setelah tombol ditekan.
- **Counter**: Menampilkan jumlah detik yang telah berlalu.
- **Tombol**: Kontrol untuk memulai, menghentikan timer, atau mengubah warna teks.

---

## 🎉 Cobain Yuk!
1. Salin kode di atas ke proyek Flutter kamu.
2. Jalankan `flutter run` untuk melihat hasilnya.
3. Eksperimen dengan timer dan aksi lainnya! 🚀

Selamat mencoba dan bereksperimen dengan **Timer** di Flutter! ⏳💥

---

## 📚 Sumber Tambahan
- [Dokumentasi Timer](https://api.dart.dev/stable/2.17.6/dart-async/Timer-class.html)

---

Dibuat dengan ❤️ oleh [Kha](https://www.instagram.com/khalilaah.15/) | [LinkedIn](https://www.linkedin.com/in/khalilullah-nuraini-20246223b/).

Happy Coding! 💻⏱️
