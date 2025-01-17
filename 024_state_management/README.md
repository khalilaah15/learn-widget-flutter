# 📱 Menyederhanakan State Management dengan Provider di Flutter ✨

Dalam Flutter, salah satu cara untuk mengelola status (state) aplikasi yang lebih kompleks adalah dengan menggunakan **Provider**. Pada contoh kali ini, kita akan belajar bagaimana mengelola perubahan status menggunakan **ChangeNotifierProvider** dan **Consumer** untuk membuat aplikasi yang dapat merespons perubahan status dengan efisien.

---

## 🔮 Apa yang Akan Kamu Pelajari
- Menggunakan **ChangeNotifier** untuk mengelola status.
- Memanfaatkan **Provider** untuk menghubungkan state dengan UI.
- Menggunakan **Consumer** untuk mendengarkan perubahan status dan memperbarui UI secara otomatis.

---

## 🖋️ Penjelasan Kode

Buka 024_state_management/lib/

### 1⃣ Struktur Proyek
Kita memiliki dua file utama di proyek ini:
- **main.dart**: Berisi tampilan utama aplikasi.
- **application_color.dart**: Menyediakan logika pengelolaan status warna.

### 2⃣ Class `ApplicationColor`
```dart
class ApplicationColor with ChangeNotifier{
  bool _isLightBlue = true;

  bool get isLightBlue => _isLightBlue;
  set isLightBlue(bool value){
    _isLightBlue = value;
    notifyListeners();
  }

  Color get color => (_isLightBlue) ? Colors.lightBlue : Colors.amber;
}
```
- **`ApplicationColor`** adalah **model** yang bertanggung jawab untuk mengelola status apakah warna akan berwarna **lightBlue** atau **amber**.
- Variabel **_isLightBlue** menyimpan status (true/false) yang menentukan warna apa yang akan digunakan.
- **getter** `isLightBlue` digunakan untuk mengambil status boolean tersebut.
- **setter** `isLightBlue` digunakan untuk mengubah status dan kemudian memanggil **`notifyListeners()`**, yang memberitahu semua widget yang mendengarkan perubahan untuk memperbarui dirinya.
- **getter** `color` mengembalikan warna berdasarkan nilai **_isLightBlue**.

### 3⃣ Widget `MyApp` dengan Provider
```dart
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ChangeNotifierProvider<ApplicationColor>(
        create: (context) => ApplicationColor(),
        child: Scaffold(
          body: SafeArea(
            child: Column(
              children: [
                AppBar(
                  title: Consumer<ApplicationColor>(
                    builder: (context, applicationColor, _) => Text(
                      "Provider State Management",
                      style: TextStyle(color: applicationColor.color),
                    ),
                  ),
                ),
                Expanded(
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Consumer<ApplicationColor>(
                          builder: (context, applicationColor, _) =>
                              AnimatedContainer(
                            margin: EdgeInsets.all(5),
                            width: 100,
                            height: 100,
                            color: applicationColor.color,
                            duration: Duration(milliseconds: 500),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Container(
                                margin: EdgeInsets.all(5), child: Text("AB")),
                            Consumer<ApplicationColor>(
                              builder: (context, applicationColor, _) =>
                                  Switch(
                                value: applicationColor.isLightBlue,
                                onChanged: (newValue) {
                                  applicationColor.isLightBlue = newValue;
                                },
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.all(5),
                              child: Text("LB"),
                            )
                          ],
                        )
                      ],
                    ),
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
- **`ChangeNotifierProvider`** membungkus aplikasi dan memberikan akses ke **`ApplicationColor`** ke seluruh widget di dalamnya. Ini memungkinkan kita untuk mengubah status dari mana saja di dalam aplikasi dan memperbarui UI secara otomatis.
- **`Consumer<ApplicationColor>`** digunakan untuk mendengarkan perubahan di **ApplicationColor**. Setiap kali status berubah, widget yang menggunakan **Consumer** akan diperbarui. Di sini kita menggunakan **Consumer** di **AppBar** dan **AnimatedContainer** untuk merubah teks dan warna berdasarkan nilai status.
- **`Switch`** digunakan untuk mengubah status **isLightBlue**. Ketika nilai switch berubah, kita mengubah status tersebut, yang memicu pembaruan UI di widget yang mendengarkan.

### 4⃣ Penjelasan Bagian-Bagian Utama
- **`ChangeNotifierProvider<ApplicationColor>`**: Menyediakan instance dari **ApplicationColor** untuk widget di bawahnya.
- **`Consumer<ApplicationColor>`**: Menggunakan **ApplicationColor** untuk mendapatkan nilai terbaru dan memperbarui UI ketika status berubah.
- **`AnimatedContainer`**: Memberikan animasi halus ketika warna berubah berdasarkan status **isLightBlue**.
- **`Switch`**: Kontrol untuk mengubah status **isLightBlue** dari **true** ke **false**, yang mengubah warna UI.

---

## 🚀 Cara Kerja
1. **State Management**: Dengan **ChangeNotifier** dan **Provider**, kita dapat mengelola status dengan cara yang efisien dan responsif.
2. **Consumer** secara otomatis mendengarkan perubahan status dan memperbarui UI dengan nilai terbaru.
3. **Switch** memungkinkan pengguna untuk mengubah status **isLightBlue**, yang kemudian mempengaruhi warna yang ditampilkan pada **AppBar** dan **AnimatedContainer**.

---

## 🔄 Pratinjau Output
- **`AppBar`** akan menampilkan teks dengan warna yang berubah berdasarkan status **isLightBlue**.
- **`AnimatedContainer`** akan mengubah warnanya secara animasi antara **lightBlue** dan **amber** berdasarkan status.
- **`Switch`** memungkinkan pengguna untuk mengubah status **isLightBlue** dan mengubah warna UI secara dinamis.

---

## 📚 Cobain Yuk!
1. Salin kode ini ke proyek Flutter kamu.
2. Jalankan aplikasi dengan `flutter run`.
3. Bereksperimen dengan mengubah nilai **Switch** untuk melihat perubahan warna pada **AppBar** dan **AnimatedContainer**.

---

## 📚 Sumber Tambahan
- [Provider Package Documentation](https://pub.dev/packages/provider)
- [ChangeNotifier Documentation](https://api.flutter.dev/flutter/foundation/ChangeNotifier-class.html)

---

Dibuat dengan ❤️ oleh [Kha](https://www.instagram.com/khalilaah.15/) | [LinkedIn](https://www.linkedin.com/in/khalilullah-nuraini-20246223b/). Selamat belajar dan bereksperimen dengan Flutter! 💻✨
