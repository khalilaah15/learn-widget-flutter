# Membuat Login Page di Flutter 🔑

Hai teman-teman Flutter Dev! 👋 Kali ini kita akan belajar membuat **Login Page**. Kita akan memanfaatkan widget seperti **Stack**, **Positioned**, dan **TextField** untuk menciptakan UI yang interaktif dan modern.

---

## 🔮 Apa yang Akan Kamu Pelajari
- Membuat desain login dengan elemen visual modern.
- Memanfaatkan **Stack** dan **Positioned** untuk tata letak.
- Menggunakan **TextField** untuk input **Email** dan **Password**.
- Menambahkan elemen dekorasi seperti **gradien warna** dan **shape lingkaran**.

---

## 🖋️ Penjelasan Kode

Buka 018_login/lib/main.dart

### 1⃣ Fungsi `main`
```dart
void main() {
  runApp(const MyApp());
}
```
- **`main`:** Fungsi utama yang menjalankan aplikasi.
- **`MyApp`:** Widget utama yang menjadi root aplikasi.

---

### 2⃣ Widget Utama: `MyApp`
```dart
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MainPage(),
    );
  }
}
```
- **`MaterialApp`:** Membungkus aplikasi dengan tema Material Design.
- **`MainPage`:** Halaman utama yang berisi UI login.

---

### 3⃣ Halaman Login: `MainPage`
```dart
class MainPage extends StatelessWidget {
  double getSmallDiameter(BuildContext context) =>
      MediaQuery.of(context).size.width * 2 / 3;
  double getBigDiameter(BuildContext context) =>
      MediaQuery.of(context).size.width * 7 / 8;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFEEEEEE),
      body: Stack(
        children: <Widget>[
          ...
        ],
      ),
    );
  }
}
```
- **`getSmallDiameter` dan `getBigDiameter`:** Fungsi untuk menghitung diameter lingkaran berdasarkan ukuran layar perangkat.
- **`Scaffold`:** Struktur dasar halaman dengan latar belakang abu-abu muda (`Color(0xFFEEEEEE)`).
- **`Stack`:** Widget utama untuk menyusun elemen secara bertumpuk.

---

### 4⃣ Elemen Visual di Dalam Stack

#### 1️⃣ Lingkaran Atas (Kecil)
```dart
Positioned(
  right: -getSmallDiameter(context) / 3,
  top: -getSmallDiameter(context) / 3,
  child: Container(
    width: getSmallDiameter(context),
    height: getSmallDiameter(context),
    decoration: const BoxDecoration(
        shape: BoxShape.circle,
        gradient: LinearGradient(
            colors: [Color(0xFFB226B2), Color(0XFFFF6DA7)],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter)),
  ),
),
```
Lingkaran kecil dengan gradien warna ungu ke merah muda yang terletak di bagian kanan atas layar.

---

#### 2️⃣ Lingkaran Atas (Besar)
```dart
Positioned(
  right: -getSmallDiameter(context) / 4,
  top: -getSmallDiameter(context) / 4,
  child: Container(
    child: Center(
      child: Text(
        "dribble",
        style: TextStyle(
            fontFamily: "Pacifico",
            fontSize: 30,
            color: Colors.white),
      ),
    ),
    width: getBigDiameter(context),
    height: getBigDiameter(context),
    decoration: const BoxDecoration(
        shape: BoxShape.circle,
        gradient: LinearGradient(
            colors: [Color(0xFFB226B2), Color(0xFFFF4891)],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter)),
  ),
),
```
Lingkaran besar dengan gradien serupa dan teks "dribble" di tengah menggunakan font **Pacifico**.

---

#### 3️⃣ Lingkaran Bawah
```dart
Positioned(
  right: -getBigDiameter(context) / 2,
  bottom: -getBigDiameter(context) / 2,
  child: Container(
    width: getBigDiameter(context),
    height: getBigDiameter(context),
    decoration: const BoxDecoration(
        shape: BoxShape.circle, color: Color(0xFFF3E9EE)),
  ),
),
```
Lingkaran besar berwarna putih yang terletak di kanan bawah layar untuk menyeimbangkan tata letak visual.

---

### 5⃣ Input Form (Email dan Password)
```dart
Align(
  alignment: Alignment.bottomCenter,
  child: ListView(
    children: <Widget>[
      Container(
        decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(color: Colors.grey),
            borderRadius: BorderRadius.circular(5)),
        margin: const EdgeInsets.fromLTRB(20, 300, 20, 10),
        padding: const EdgeInsets.fromLTRB(10, 0, 10, 25),
        child: const Column(
          children: <Widget>[
            TextField(
              decoration: InputDecoration(
                  icon: Icon(
                    Icons.email,
                    color: Color(0xFFFF4891),
                  ),
                  focusedBorder: UnderlineInputBorder(
                      borderSide:
                          BorderSide(color: Color(0xFFFF4891))),
                          labelText: "Email : ",
                          labelStyle: TextStyle(color: Color(0xFFFF4891))
                          ),
            ),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                  icon: Icon(
                    Icons.vpn_key,
                    color: Color(0xFFFF4891),
                  ),
                  focusedBorder: UnderlineInputBorder(
                      borderSide:
                          BorderSide(color: Color(0xFFFF4891))),
                          labelText: "Password : ",
                          labelStyle: TextStyle(color: Color(0xFFFF4891))
                          ),
            ),
          ],
        ),
      )
    ],
  ),
)
```
- **`Container`:** Membungkus form dengan background putih dan border abu-abu.
- **`TextField`:** Menyediakan input untuk email dan password.
  - **Email Input:**
    - Ikon email di sebelah kiri.
    - Teks label "Email" dengan warna merah muda.
  - **Password Input:**
    - Ikon kunci (password) di sebelah kiri.
    - Teks label "Password" dengan warna merah muda.
    - **`obscureText: true`:** Menyembunyikan input password untuk keamanan.

---

## 🚀 Cara Kerja
1. **Lingkaran Atas dan Bawah:** Memberikan sentuhan desain modern.
2. **Form Login:** Menyediakan input untuk **Email** dan **Password**.
3. **Gradien Warna:** Menambah estetika dengan warna ungu dan merah muda.

---

## 🔄 Pratinjau Output
1. **Lingkaran dekoratif di atas dan bawah.**
2. **Form login dengan input email dan password.**
3. **Desain minimalis namun menarik.**

---

## 📚 Cobain Yuk!
1. Salin kode ke proyek Flutter kamu.
2. Jalankan aplikasi dengan perintah `flutter run`.
3. Modifikasi desain, misalnya tambahkan tombol **Login** atau elemen tambahan lainnya!

---

Dibuat dengan ❤️ oleh [Kha](https://www.instagram.com/khalilaah.15/) | [LinkedIn](https://www.linkedin.com/in/khalilullah-nuraini-20246223b/). Selamat belajar dan bereksperimen dengan Flutter! 💻✨
