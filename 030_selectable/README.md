# Belajar Membuat Selectable Text di Flutter 📝✨

Halo teman-teman! 👋 Kali ini kita akan belajar tentang **SelectableText** di Flutter. Widget ini memungkinkan kita membuat teks yang bisa dipilih oleh pengguna, sehingga sangat berguna jika kamu membuat aplikasi yang membutuhkan interaksi teks. Yuk, simak penjelasan lengkapnya! 🚀

---

## 🎯 Apa yang Akan Kamu Pelajari
- Menampilkan teks yang dapat dipilih menggunakan widget **SelectableText**.
- Menggunakan **ToggleButtons** untuk mengubah efek visual pada teks.
- Menerapkan **ColorFilter** untuk memberi efek warna pada tampilan teks.

---

## 📝 Penjelasan Kode

### 1️⃣ Fungsi `main`
```dart
void main() {
  runApp(const MyApp());
}
```
Fungsi `main` adalah titik awal aplikasi Flutter kita. Di sini, kita menjalankan aplikasi dengan widget utama `MyApp`.

### 2️⃣ Widget Utama `MyApp`
```dart
class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyApp();
}
```
`MyApp` adalah widget stateful karena kita akan mengubah status di dalamnya. Ini memungkinkan kita untuk mengubah warna dan tampilan berdasarkan pilihan dari tombol.

### 3️⃣ Widget `_MyApp`
```dart
class _MyApp extends State<MyApp> {
  List<bool> isSelected = [true, false, false];
  ColorFilter colorFilter = ColorFilter.mode(Colors.blue, BlendMode.screen);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: ColorFiltered(
            colorFilter: colorFilter,
            child: Scaffold(
              appBar: AppBar(
                title: const Text("Widgets Demo GDG 2019"),
              ),
              body: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    // Selectable Text
                    const SelectableText(
                      "Ini adalah selectable Text, adasdksa ajdbas uhjdks dbkadal",
                      style: TextStyle(fontSize: 20),
                      showCursor: true,
                      cursorColor: Colors.red,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    // Toggle Buttons untuk mengubah efek warna
                    ToggleButtons(
                      isSelected: isSelected,
                      children: const <Widget>[
                        Icon(Icons.access_alarm),
                        Icon(Icons.adb),
                        Icon(Icons.add_comment),
                      ],
                      onPressed: (index) {
                        setState(() {
                          if (index == 0)
                            colorFilter =
                                ColorFilter.mode(Colors.blue, BlendMode.screen);
                          else if (index == 1)
                            colorFilter = ColorFilter.mode(
                                Colors.green, BlendMode.softLight);
                          else
                            colorFilter = ColorFilter.mode(
                                Colors.purple, BlendMode.multiply);
                          for (int i = 0; i < isSelected.length; i++)
                            isSelected[i] = (i == index) ? true : false;
                        });
                      },
                      fillColor: Colors.red[50],
                      selectedColor: Colors.red,
                      selectedBorderColor: Colors.red,
                      splashColor: Colors.blue,
                      highlightColor: Colors.yellow,
                      borderRadius: BorderRadius.circular(15),
                    )
                  ],
                ),
              ),
            )));  
  }
}
```
#### Fitur Utama:
- **`SelectableText`**: Menampilkan teks yang dapat dipilih oleh pengguna. Dengan properti `showCursor` dan `cursorColor`, kamu bisa menambahkan kursor yang terlihat saat teks dipilih.
- **`ColorFiltered`**: Mengaplikasikan filter warna pada widget yang dibungkus, memberi efek pada seluruh tampilan.
- **`ToggleButtons`**: Menggunakan tombol bergaya toggle untuk memilih dan mengubah efek visual pada teks, seperti mengganti warna teks dengan menggunakan **`ColorFilter`**.

---

### 4️⃣ Penjelasan Widget `SelectableText`
```dart
const SelectableText(
  "Ini adalah selectable Text, adasdksa ajdbas uhjdks dbkadal",
  style: TextStyle(fontSize: 20),
  showCursor: true,
  cursorColor: Colors.red,
)
```
- **`SelectableText`**: Membuat teks yang bisa dipilih oleh pengguna.
- **`showCursor`**: Menampilkan kursor saat pengguna memilih teks.
- **`cursorColor`**: Mengatur warna kursor.
- **`style`**: Menentukan gaya teks (misalnya ukuran font).

---

### 5️⃣ Penjelasan Widget `ToggleButtons`
```dart
ToggleButtons(
  isSelected: isSelected,
  children: const <Widget>[
    Icon(Icons.access_alarm),
    Icon(Icons.adb),
    Icon(Icons.add_comment),
  ],
  onPressed: (index) {
    setState(() {
      if (index == 0)
        colorFilter = ColorFilter.mode(Colors.blue, BlendMode.screen);
      else if (index == 1)
        colorFilter = ColorFilter.mode(Colors.green, BlendMode.softLight);
      else
        colorFilter = ColorFilter.mode(Colors.purple, BlendMode.multiply);
      for (int i = 0; i < isSelected.length; i++)
        isSelected[i] = (i == index) ? true : false;
    });
  },
  fillColor: Colors.red[50],
  selectedColor: Colors.red,
  selectedBorderColor: Colors.red,
  splashColor: Colors.blue,
  highlightColor: Colors.yellow,
  borderRadius: BorderRadius.circular(15),
)
```
- **`ToggleButtons`**: Membuat tombol yang dapat dipilih satu per satu. Setiap tombol akan mengganti warna teks sesuai dengan pilihan.
- **`isSelected`**: Daftar boolean yang menunjukkan tombol mana yang sedang dipilih.
- **`onPressed`**: Fungsi callback yang dipanggil saat tombol ditekan. Di sini kita mengubah warna **`ColorFilter`** berdasarkan pilihan.

---

## 🚀 Cara Kerja
1. **`SelectableText`** memungkinkan pengguna untuk memilih teks. Kamu bisa menyalin teks tersebut jika diperlukan.
2. **`ToggleButtons`** memberi opsi untuk mengubah efek visual dengan memilih tombol yang berbeda, seperti mengganti warna teks.
3. **`ColorFilter`** diterapkan untuk memberikan efek warna yang berbeda pada seluruh tampilan.

---

## 🖼️ Pratinjau Output
- **Teks Pilihan**: Teks yang bisa dipilih oleh pengguna.
- **Tombol Pilihan**: Tombol yang mengubah warna filter pada teks.
- **Kursor**: Kursor berwarna merah yang muncul saat teks dipilih.

---

## 🎉 Cobain Yuk!
1. Salin kode di atas ke proyek Flutter kamu.
2. Jalankan `flutter run` untuk melihat hasilnya.
3. Eksperimen dengan menambahkan lebih banyak tombol atau mengubah gaya teks.

Selamat mencoba membuat **Selectable Text** di Flutter! 💻✨

---

## 📚 Sumber Tambahan
- [Flutter Widgets Overview](https://flutter.dev/docs/development/ui/widgets)

---

Dibuat dengan ❤️ oleh [Kha](https://www.instagram.com/khalilaah.15/) | [LinkedIn](https://www.linkedin.com/in/khalilullah-nuraini-20246223b/).

Happy Selecting! ✨
