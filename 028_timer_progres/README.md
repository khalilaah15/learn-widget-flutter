# Belajar Timer Progress Bar di Flutter ⏳🚀

Halo teman-teman! 👋 Hari ini kita akan belajar tentang **Timer dengan Progress Bar** di Flutter. Dengan menggunakan **Provider** dan **Timer**, kita bisa membuat progress bar yang bergerak seiring waktu. Yuk, simak penjelasannya! 🎨✨

---

## 🎯 Apa yang Akan Kamu Pelajari
- Membuat progress bar custom yang terupdate dengan waktu.
- Menggunakan **Timer** untuk menghitung mundur.
- Memanfaatkan **Provider** untuk state management.

---

## 📝 Penjelasan Kode

Buka **028_timer_progress/lib/main.dart**

Mari kita bahas kode berikut:

### 1️⃣ Fungsi `main`
```dart
void main() {
  runApp(const MyApp());
}
```
Ini adalah titik awal aplikasi Flutter kita, di mana kita menjalankan aplikasi dengan widget utama `MyApp`. 🏠

### 2️⃣ Membuat Widget Utama
```dart
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Custom Progress Bar"),
        ),
        body: Center(
          child: ChangeNotifierProvider<TimeState>(
            create: (context) => TimeState(),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Consumer<TimeState>(
                  builder: (context, timeState, _) => CustomProgressBar(
                    width: 200,
                    value: timeState.time,
                    totalValue: 15,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Consumer<TimeState>(
                  builder: (context, timeState, _) => ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(Colors.lightBlue),
                    ),
                    onPressed: () {
                      Timer.periodic(Duration(seconds: 1), (timer) {
                        if (timeState.time == 0) {
                          timer.cancel();
                        } else {
                          timeState.time -= 1;
                        }
                      });
                    },
                    child: Text("Start", style: TextStyle(color: Colors.white)),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
```

#### Fitur Utama:
- **`CustomProgressBar`**: Widget kustom untuk menampilkan progress bar yang bergerak.
- **`Consumer`**: Mengambil data dari `TimeState` untuk mengupdate tampilan.
- **`Timer.periodic`**: Mengatur timer yang akan mengurangi nilai `time` setiap detik.

---

### 3️⃣ Widget `CustomProgressBar`
```dart
class CustomProgressBar extends StatelessWidget {
  final double width;
  final int value;
  final int totalValue;

  CustomProgressBar({required this.width, required this.value, required this.totalValue});

  @override
  Widget build(BuildContext context) {
    double ratio = value / totalValue;
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(Icons.timer, color: Colors.amber),
        SizedBox(width: 5),
        Stack(
          children: <Widget>[
            Container(
              width: width,
              height: 10,
              decoration: BoxDecoration(color: Colors.grey[400], borderRadius: BorderRadius.circular(5)),
            ),
            Material(
              borderRadius: BorderRadius.circular(5),
              elevation: 3,
              child: AnimatedContainer(
                height: 10,
                width: width * ratio,
                duration: Duration(milliseconds: 500),
                decoration: BoxDecoration(
                    color: (ratio < 0.3)
                        ? Colors.red
                        : (ratio < 0.6)
                            ? Colors.amber[400]
                            : Colors.lightGreen,
                    borderRadius: BorderRadius.circular(5)),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
```

#### Fitur Utama:
- **`AnimatedContainer`**: Membuat perubahan lebar bar dengan animasi.
- **`color`**: Warna progress bar berubah tergantung seberapa banyak waktu yang tersisa.
  - **Red**: Jika kurang dari 30%.
  - **Amber**: Jika antara 30% hingga 60%.
  - **Green**: Jika lebih dari 60%.

---

### 4️⃣ Mengatur Timer dan State dengan `TimeState`
```dart
class TimeState with ChangeNotifier {
  int _time = 15;

  int get time => _time;
  set time(int newTime) {
    _time = newTime;
    notifyListeners();
  }
}
```
#### Fitur Utama:
- **`ChangeNotifier`**: Menjaga state `time` dan memberitahu widget yang bergantung pada state tersebut untuk melakukan rebuild saat ada perubahan.
- **`time`**: Nilai yang akan berkurang setiap detik untuk menghitung mundur.

---

## 🎨 Menampilkan Progress Bar

1. **Timer**: Timer akan berjalan setiap detik, mengurangi nilai waktu yang tersisa.
2. **Progress Bar**: Sebagai representasi visual, lebar bar akan menyesuaikan dengan waktu yang tersisa.
3. **Color Changes**: Progress bar akan berubah warna sesuai dengan waktu yang tersisa.

---

## 🚀 Cara Kerja
1. **`ChangeNotifierProvider`** menyediakan state `TimeState` untuk widget di bawahnya.
2. **`Timer.periodic`** mengupdate nilai `time` setiap detik.
3. **Progress bar** akan bergerak sesuai dengan nilai `time` yang berkurang.

---

## 🖼️ Pratinjau Output
- **Progress Bar**: Menggambarkan waktu yang tersisa dengan warna yang berubah.
- **Tombol Start**: Menjalankan timer untuk menghitung mundur waktu.

---

## 🎉 Cobain Yuk!
1. Salin kode di atas ke proyek Flutter kamu.
2. Jalankan `flutter run` untuk melihat hasilnya.
3. Eksperimen dengan nilai waktu yang berbeda dan warna progress bar! 🚀

Selamat mencoba membuat **Timer Progress Bar** di Flutter! 🎨🔥

---

## 📚 Sumber Tambahan
- [Dokumentasi Timer](https://api.dart.dev/stable/2.17.6/dart-async/Timer-class.html)
- [Provider Documentation](https://pub.dev/packages/provider)

---

Dibuat dengan ❤️ oleh [Kha](https://www.instagram.com/khalilaah.15/) | [LinkedIn](https://www.linkedin.com/in/khalilullah-nuraini-20246223b/).

Happy Coding! ⏱️💻
