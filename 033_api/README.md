# Belajar API Integration di Flutter 🌐📱

Kali ini kita akan belajar bagaimana menghubungkan aplikasi Flutter dengan API menggunakan `http` package untuk mengambil dan mengirim data.

---

## 🎯 Apa yang Akan Kamu Pelajari
- Mengirim permintaan POST ke API.
- Mengambil dan mengonversi data JSON menjadi objek Dart menggunakan `fromJson`.
- Menampilkan hasil API di aplikasi Flutter.

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
class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  PostResult? postResult;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("API Demo"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Text(
                (postResult != null)
                    ? "ID: ${postResult!.id}\nName: ${postResult!.name}\nJob: ${postResult!.job}\nCreated: ${postResult!.created}"
                    : "No Data",
                textAlign: TextAlign.center,
              ),
              ElevatedButton(
                onPressed: () async {
                  PostResult result = await PostResult.connectToAPI(
                    "John Doe",
                    "Software Engineer",
                  );
                  setState(() {
                    postResult = result;
                  });
                },
                child: const Text("POST"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
```
**Penjelasan:**
- **`MyApp`** adalah widget utama dari aplikasi yang menggunakan `StatefulWidget`, karena kita ingin memanipulasi state setelah mendapatkan respons dari API.
- **`postResult`** menyimpan data yang diambil dari API.
- Ketika tombol `POST` ditekan, kita memanggil fungsi `connectToAPI` untuk mengirim data ke API dan mendapatkan responsnya.

### 3️⃣ Model `PostResult`
```dart
class PostResult {
  String id;
  String name;
  String job;
  String created;

  PostResult({
    required this.id,
    required this.name,
    required this.job,
    required this.created,
  });

  factory PostResult.fromJson(Map<String, dynamic> json) {
    return PostResult(
      id: json['id'],
      name: json['name'],
      job: json['job'],
      created: json['createdAt'],
    );
  }

  static Future<PostResult> connectToAPI(String name, String job) async {
    String apiURL = "https://reqres.in/api/users";

    var apiResult = await http.post(
      Uri.parse(apiURL),
      body: {"name": name, "job": job},
    );
    var jsonObject = json.decode(apiResult.body);

    return PostResult.fromJson(jsonObject);
  }
}
```
**Penjelasan:**
- **Model `PostResult`** mendefinisikan struktur data yang kita terima dari API. Dalam hal ini, data yang kita ambil terdiri dari `id`, `name`, `job`, dan `createdAt`.
- Fungsi **`connectToAPI`** mengirim permintaan **POST** ke API menggunakan package `http` dan mengirimkan parameter `name` dan `job` sebagai body request.
- Respons API dalam format JSON kemudian diubah menjadi objek `PostResult` menggunakan fungsi `fromJson`.

---

## 🚀 Cara Kerja API di Aplikasi Ini:
1. **Pengiriman Data**: Ketika tombol `POST` ditekan, aplikasi mengirimkan data nama dan pekerjaan ke API menggunakan **POST request**.
2. **Menerima Respons**: Respons yang diterima dari API berupa JSON, yang kemudian diubah menjadi objek Dart (`PostResult`) untuk digunakan di aplikasi.
3. **Menampilkan Data**: Setelah data diterima, aplikasi menampilkan informasi seperti `ID`, `Name`, `Job`, dan `Created` pada layar.

---

## 🖼️ Pratinjau Output
- Ketika aplikasi pertama kali dijalankan, tampilan akan menunjukkan "No Data".
- Setelah menekan tombol **POST**, data dari API akan ditampilkan, seperti:
  ```
  ID: 123
  Name: John Doe
  Job: Software Engineer
  Created: 2023-01-01T00:00:00.000Z
  ```

---

## 🎉 Cobain Yuk!
1. Salin kode di atas ke proyek Flutter kamu.
2. Pastikan kamu menambahkan `http` package di file `pubspec.yaml`:
    ```yaml
    dependencies:
      flutter:
        sdk: flutter
      http: ^0.13.3
    ```
3. Jalankan aplikasi menggunakan `flutter run` dan lihat hasilnya.
4. Modifikasi data yang dikirimkan ke API dan lihat responsnya.

---

## 📚 Sumber Tambahan
- [Flutter HTTP Documentation](https://pub.dev/packages/http)
- [API ReqRes](https://reqres.in/)

---


Dibuat dengan ❤️ oleh [Kha](https://www.instagram.com/khalilaah.15/) | [LinkedIn](https://www.linkedin.com/in/khalilullah-nuraini-20246223b/). Selamat belajar dan bereksperimen dengan Flutter! 💻✨
