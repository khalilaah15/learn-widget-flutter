# Belajar Extension Methods di Flutter 🔧📱

Kali ini, kita akan membahas tentang **Extension Methods** di Flutter, yang memungkinkan kita untuk menambah fungsi pada tipe data yang sudah ada tanpa mengubah kode sumber dari tipe data tersebut.

---

## 🎯 Apa yang Akan Kamu Pelajari
- Menambahkan fungsi pada tipe data menggunakan **Extension**.
- Menggunakan **Extension** pada tipe data seperti **List**, **int**, **double**, dan **String**.
- Menyederhanakan kode dengan menambahkan fungsi tambahan tanpa harus mengubah kelas aslinya.

---

## 📝 Penjelasan Kode

### 1️⃣ Fungsi `main`
```dart
void main() {
  runApp(const MyApp());
}
```
Fungsi `main` adalah titik awal aplikasi kita. Di sini kita menjalankan aplikasi dengan widget utama `MyApp`.

### 2️⃣ Widget Utama `MyApp`
```dart
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainPage(),
    );
  }
}
```
`MyApp` adalah widget stateless yang menyimpan widget **MainPage** sebagai halaman utama aplikasi.

### 3️⃣ Widget `MainPage`
```dart
class MainPage extends StatelessWidget {
  final double x = -5;
  final List<int> myList = [1, 2, 3, 4];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Extension Demo"),
      ),
      body: Center(
        child: Text(
          "Bilangan: " & myList.midElement.toString(),
          style: TextStyle(fontSize: 40),
        ),
      ),
    );
  }
}
```

#### Penjelasan:
- **`MainPage`** adalah widget stateless yang menampilkan hasil dari penggunaan extension pada tipe data **List**, **int**, dan **String**.
- Kita mendeklarasikan `x` sebagai **double** dan `myList` sebagai **List<int>** yang akan digunakan untuk mendemonstrasikan penggunaan **extension**.

### 4️⃣ Extension Methods
#### Extension pada **List**:
```dart
extension ListExtension<T> on List {
  T get midElement => (this.length == 0) ? null : this[(this.length / 2).floor()];
}
```
Extension `ListExtension` ini menambahkan properti `midElement` pada **List**. Properti ini akan mengembalikan elemen tengah dari daftar jika ada, atau `null` jika daftar kosong.

#### Extension pada **Integer**:
```dart
extension IntegerExtension on int {
  int negate() => -1 * this;
}
```
Extension `IntegerExtension` menambahkan fungsi `negate` pada **int** yang akan mengembalikan nilai negatif dari angka tersebut.

#### Extension pada **Double**:
```dart
extension DoubleExtension on double {
  double negate() => -1 * this;
}
```
Extension `DoubleExtension` serupa dengan `IntegerExtension`, namun kali ini untuk tipe data **double**. Fungsi `negate` mengembalikan nilai negatif dari angka bertipe **double**.

#### Extension pada **String**:
```dart
extension StringExtension on String {
  String operator &(String other) => this + "-" + other;
}
```
Extension `StringExtension` menambahkan operator `&` pada **String**. Fungsi ini akan menggabungkan dua string dengan tanda hubung (`-`).

---

## 🚀 Cara Kerja
- **`midElement`** pada **List** akan mengambil elemen tengah dari daftar. Jika daftar kosong, akan mengembalikan `null`.
- **`negate`** pada **int** dan **double** akan mengubah nilai angka menjadi negatif.
- **Operator `&`** pada **String** memungkinkan kita menggabungkan dua string dengan tanda hubung.

---

## 🖼️ Pratinjau Output
- Tampilan aplikasi akan menampilkan teks "Bilangan: 3", karena angka 3 adalah elemen tengah dari daftar `[1, 2, 3, 4]`.
- Kamu bisa memodifikasi kode untuk menampilkan hasil dari metode `negate()` atau menggabungkan string menggunakan operator `&`.

---

## 🎉 Cobain Yuk!
1. Salin kode di atas ke proyek Flutter kamu.
2. Jalankan aplikasi menggunakan `flutter run` dan lihat hasilnya.
3. Eksperimen dengan menggunakan **Extension** pada tipe data lainnya.

---

## 📚 Sumber Tambahan
- [Dart Extensions Documentation](https://dart.dev/guides/language/extension-methods)
- [Flutter Widgets Overview](https://flutter.dev/docs/development/ui/widgets)

---
Dibuat dengan ❤️ oleh [Kha](https://www.instagram.com/khalilaah.15/) | [LinkedIn](https://www.linkedin.com/in/khalilullah-nuraini-20246223b/).

Selamat mencoba **Extension Methods** di Flutter! 🚀
