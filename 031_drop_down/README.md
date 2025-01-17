# Belajar Membuat Dropdown Button di Flutter 🎯🔽

Kali ini, kita akan belajar bagaimana cara menggunakan **DropdownButton** di Flutter. DropdownButton memungkinkan pengguna untuk memilih opsi dari daftar pilihan yang tersedia, yang sangat berguna dalam berbagai kasus, seperti memilih kategori, memilih negara, atau memilih item dari daftar.

---

## 🎯 Apa yang Akan Kamu Pelajari
- Menampilkan dropdown yang memungkinkan pemilihan item dari daftar.
- Mengelola pilihan item yang dipilih oleh pengguna.
- Menggunakan **`DropdownButton`** dan **`DropdownMenuItem`** untuk membangun dropdown yang dapat disesuaikan.

---

## 📝 Penjelasan Kode

### 1️⃣ Fungsi `main`
```dart
void main() {
  runApp(const MyApp());
}
```
Fungsi `main` adalah titik awal aplikasi Flutter kita. Di sini kita menjalankan aplikasi dengan widget utama `MyApp`.

### 2️⃣ Widget Utama `MyApp`
```dart
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainPage(),
    );
  }
}
```
`MyApp` adalah widget stateless yang menyimpan widget **MainPage** sebagai halaman utama aplikasi.

### 3️⃣ Widget `MainPage`
```dart
class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}
```
`MainPage` adalah widget stateful karena kita perlu memperbarui tampilan berdasarkan item yang dipilih dalam dropdown.

### 4️⃣ State `_MainPageState`
```dart
class _MainPageState extends State<MainPage> {
  Person? selectedPerson;
  List<Person> persons = [Person("Shooky"), Person("Cooky")];

  List<DropdownMenuItem<Person>> generateItems(List<Person> persons) {
    List<DropdownMenuItem<Person>> items = [];
    for (var item in persons) {
      items.add(DropdownMenuItem(
        child: Text(item.name),
        value: item,
      ));
    }
    return items;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Demo Dropdown Button"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            DropdownButton<Person>(
              value: selectedPerson,
              items: generateItems(persons),
              onChanged: (item) {
                setState(() {
                  selectedPerson = item;
                });
              },
            ),
            SizedBox(height: 20),
            Text(
              (selectedPerson != null) ? selectedPerson!.name : "Pilih Person",
              style: const TextStyle(fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }
}
```

#### Penjelasan:
- **`DropdownButton`**: Widget utama untuk membuat dropdown. Kita mengatur nilai yang dipilih (value) dan daftar item (items) dari **DropdownMenuItem**.
  - **`value`**: Nilai yang dipilih pada dropdown.
  - **`items`**: Daftar item yang akan ditampilkan dalam dropdown.
  - **`onChanged`**: Fungsi callback yang dipanggil saat pilihan dropdown berubah. Fungsi ini akan memperbarui **`selectedPerson`** menggunakan **`setState`**.
  
- **`DropdownMenuItem`**: Menentukan item-item yang muncul di dropdown. Setiap item mewakili objek `Person`.

### 5️⃣ Kelas `Person`
```dart
class Person {
  String name;
  Person(this.name);
}
```
Kelas `Person` digunakan untuk mendefinisikan objek yang akan digunakan sebagai item di dropdown. Setiap objek `Person` memiliki nama yang bisa dipilih.

---

## 🚀 Cara Kerja
1. **DropdownButton** akan menampilkan dropdown dengan dua pilihan (Shooky dan Cooky).
2. **`onChanged`** akan memanggil fungsi **setState** untuk memperbarui **selectedPerson** setiap kali pengguna memilih item baru.
3. Setelah memilih, teks yang menunjukkan nama yang dipilih akan muncul di bawah dropdown.

---

## 🖼️ Pratinjau Output
- Dropdown menampilkan dua opsi: **Shooky** dan **Cooky**.
- Pengguna dapat memilih salah satu dan nama yang dipilih akan ditampilkan.

---

## 🎉 Cobain Yuk!
1. Salin kode di atas ke proyek Flutter kamu.
2. Jalankan aplikasi menggunakan `flutter run` untuk melihat dropdown berfungsi.
3. Eksperimen dengan menambahkan lebih banyak item dalam daftar `persons` dan melihat bagaimana aplikasi memperbarui pilihan yang dipilih.

---

## 📚 Sumber Tambahan
- [DropdownButton Documentation](https://api.flutter.dev/flutter/material/DropdownButton-class.html)
- [Flutter Widgets Overview](https://flutter.dev/docs/development/ui/widgets)

---

Dibuat dengan ❤️ oleh [Kha](https://www.instagram.com/khalilaah.15/) | [LinkedIn](https://www.linkedin.com/in/khalilullah-nuraini-20246223b/).

Selamat mencoba membuat **Dropdown Button** di Flutter! 🚀
