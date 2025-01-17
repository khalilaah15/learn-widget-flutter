# 🎨 Bermain dengan Typography dan Font di Flutter! ✨

Halo Flutter Dev! 👋 Di Flutter, kamu bisa menyesuaikan **font** dan **typography** untuk membuat tampilan aplikasi lebih menarik! Kali ini, kita akan belajar tentang berbagai cara untuk memodifikasi teks menggunakan fitur font di Flutter! 🎉

---

## 🔮 Apa yang Akan Kamu Pelajari
- Mengubah gaya font dengan **TextStyle**.
- Menggunakan fitur **FontFeature** untuk mengubah tampilan teks, seperti **small caps** dan **frac**.
- Menambahkan font kustom ke aplikasi Flutter kamu.

---

## 🖋️ Penjelasan Kode

Buka `lib/main.dart`, dan mari kita bahas kode ini bareng-bareng! 🚀

### 1⃣ Fungsi main
```dart
void main() {
  runApp(const MyApp());
}
```
Kode ini adalah titik awal aplikasi Flutter, yang menjalankan widget utama **MyApp**. 🏠

### 2⃣ Widget Utama: MyApp
```dart
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Flutter Typography"),
        ),
        body: const Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Text(
                "Contoh 01 (Tanpa apapun)",
                style: TextStyle(fontSize: 20),
              ),
```
- **MaterialApp** digunakan sebagai widget utama untuk aplikasi kita.
- Di dalam **Scaffold**, kita memiliki **AppBar** dengan judul "Flutter Typography" dan **body** yang berisi beberapa contoh teks yang akan kita tampilkan dengan berbagai gaya font.

### 3⃣ Contoh 01: Teks Tanpa Modifikasi
```dart
              Text(
                "Contoh 01 (Tanpa apapun)",
                style: TextStyle(fontSize: 20),
              ),
```
- Di sini, kita hanya menggunakan **TextStyle** dengan ukuran font **20** tanpa modifikasi tambahan.

### 4⃣ Contoh 02: Small Caps
```dart
              Text(
                "Contoh 02 (Small Caps)",
                style: TextStyle(
                    fontSize: 20, fontFeatures: [FontFeature.enable('smcp')]),
              ),
```
- **Small Caps** adalah fitur tipografi yang mengubah huruf kecil menjadi huruf kapital kecil, memberikan tampilan yang lebih elegan dan profesional.

### 5⃣ Contoh 03: Small Caps dan Frac
```dart
              Text(
                "Contoh 1/2 (Small Caps & frac)",
                style: TextStyle(
                    fontSize: 20, fontFeatures: [FontFeature.enable('smcp'),
                    FontFeature.enable('frac')]),
              ),
```
- **Frac** adalah fitur tipografi yang mengubah angka pecahan seperti "1/2" menjadi simbol pecahan yang lebih rapi. Di sini, kita menggabungkan **Small Caps** dan **Frac** dalam satu teks.

### 6⃣ Contoh 04: Font Kustom - Cardo
```dart
              Text(
                "Contoh cardo 19 (Tanpa apapun)",
                style: TextStyle(
                    fontSize: 20, fontFamily: "Cardo"),
              ),
```
- Kita juga menggunakan font kustom **Cardo** di aplikasi ini. Pastikan kamu sudah menambahkan font ini di file `pubspec.yaml` agar bisa digunakan!

### 7⃣ Contoh 05: Old Style Figures
```dart
              Text(
                "Contoh cardo 19 (Old Style)",
                style: TextStyle(
                    fontSize: 20, fontFamily: "Cardo", fontFeatures: [
                      FontFeature.oldstyleFigures()
                    ]),
              ),
```
- **Old Style Figures** adalah fitur font yang mengubah angka agar terlihat lebih elegan, seperti angka 3 yang memiliki tampilan lebih ramping. Fitur ini sangat cocok untuk tipografi yang lebih klasik dan profesional.

---

## 🚀 Cara Kerja
1. **TextStyle** digunakan untuk mengatur berbagai gaya teks, seperti ukuran font, warna, dan font family.
2. **FontFeature** memberikan fitur khusus seperti **small caps**, **frac**, dan **oldstyleFigures** untuk meningkatkan tampilan teks.
3. Kamu bisa menggunakan **font kustom** seperti **Cardo** di aplikasi Flutter dengan menambahkannya di file `pubspec.yaml`.

---

## 🔄 Pratinjau Output
- **Contoh 01**: Teks biasa dengan ukuran font 20.
- **Contoh 02**: Teks dengan huruf kecil menjadi huruf kapital kecil (Small Caps).
- **Contoh 03**: Teks dengan **Small Caps** dan **Frac** untuk pecahan.
- **Contoh 04**: Teks menggunakan font kustom **Cardo**.
- **Contoh 05**: Teks menggunakan **Old Style Figures** dengan font **Cardo**.

---

## 📚 Cobain Yuk!
1. Salin kode ini ke proyek Flutter kamu.
2. Jalankan aplikasi dengan `flutter run`.
3. Eksplorasi berbagai fitur **FontFeature** dan tambahkan font kustom untuk meningkatkan desain aplikasi kamu! 🎉

---

## 📚 Sumber Tambahan
- [Dokumentasi TextStyle](https://api.flutter.dev/flutter/painting/TextStyle-class.html)

---

## 📝 Menambahkan Font Kustom di `pubspec.yaml`

Untuk menggunakan font kustom di aplikasi Flutter, kamu perlu mendefinisikan font di file `pubspec.yaml`. Begini cara menambahkannya:

1. Siapkan file font yang ingin digunakan, misalnya **Cardo**.
2. Letakkan file font di folder **assets/fonts/** dalam proyek kamu.
3. Edit file `pubspec.yaml` dengan menambahkan font seperti berikut:

```yaml
flutter:
  fonts:
    - family: Cardo
      fonts:
        - asset: assets/fonts/Cardo-Regular.ttf
        - asset: assets/fonts/Cardo-Bold.ttf
          weight: 700
```

#### Penjelasan:
- **family**: Nama font yang ingin digunakan. Pada contoh ini, nama fontnya adalah **Cardo**.
- **fonts**: Daftar file font yang digunakan.
  - **asset**: Lokasi file font di proyek kamu (misalnya `assets/fonts/Cardo-Regular.ttf`).
  - **weight**: Menentukan ketebalan font, seperti **700** untuk bold.

Setelah itu, kamu bisa menggunakan font kustom **Cardo** dalam aplikasi menggunakan **fontFamily: "Cardo"** di widget **Text**.

---

Dibuat dengan ❤️ oleh [Kha](https://www.instagram.com/khalilaah.15/) | [LinkedIn](https://www.linkedin.com/in/khalilullah-nuraini-20246223b/). Selamat belajar dan bereksperimen dengan Flutter! 💻✨
