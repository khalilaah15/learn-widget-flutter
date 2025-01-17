## 📱 User Profile with Flutter ✨

Aplikasi ini membuat tampilan profil pengguna dengan nama, peran, dan foto profil yang diambil dari URL.

Buka 026_user_profile/lib/

### 1⃣ Struktur Proyek
Terdapat dua file utama:
- **`main.dart`**: Menampilkan aplikasi utama dan menginstansiasi objek **UserProfile**.
- **`user_profile.dart`**: Mendefinisikan widget **UserProfile** yang menampilkan informasi profil.

---

### 2⃣ **Class `UserProfile`** (Menampilkan Profil Pengguna)

```dart
class UserProfile extends StatelessWidget {
  final String name;
  final String role;
  final String photoURL;

  UserProfile({this.name = "No Name", this.role = "No Role", this.photoURL = ""});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Image(image: NetworkImage((photoURL != null)
        ? photoURL
        : "https://asset-a.grid.id/crop/0x0:0x0/945x630/photo/2021/12/22/foto-cover-beginilah-pesan-meny-20211222010910.jpg"),
        fit: BoxFit.cover,
        width: 200,
        height: 200,
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          "[" + role + "]",
          style: TextStyle(
            fontWeight: FontWeight.bold
          ),
        ),
        Text(
          "[" + name + "]",
          style: TextStyle(
            fontWeight: FontWeight.bold
          ),
        )
      ],
    );
  }
}
```
- **`UserProfile`** adalah widget **StatelessWidget** yang menerima parameter untuk **name**, **role**, dan **photoURL**.
- **`Image`**: Mengambil gambar profil dari URL yang diberikan, jika tidak ada URL, gambar default akan ditampilkan.
- **`Text`**: Menampilkan nama dan peran pengguna dengan gaya teks tebal.

### 3⃣ **Class `MyApp`** (Menggunakan `UserProfile`)

```dart
class MyApp extends StatelessWidget {
  final UserProfile profile = UserProfile(
    name: "Kim Taehyung",
    role: "Member of BTS",
    photoURL:
        "https://cms.disway.id/uploads/c639fdd1585c331a6cf2b1b4ed54d6d2.jpg",
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red[900],
          title: Text("Doc Comment Example"),
        ),
        body: SafeArea(
          child: Center(
            child: profile,
          ),
        ),
      ),
    );
  }
}
```
- **`MyApp`** membuat instance **UserProfile** dan memasukannya ke dalam `Center` widget untuk menampilkannya di tengah layar.
- **`AppBar`**: Menampilkan judul aplikasi dengan warna merah.
- **`SafeArea`**: Menjaga tampilan tetap aman dari area yang terpotong pada layar perangkat.

### 4⃣ **Menampilkan Profil Pengguna**
Saat aplikasi dijalankan, profil pengguna dengan nama "Kim Taehyung", peran "Member of BTS", dan foto profil akan ditampilkan. Gambar profil ditarik melalui URL yang diberikan.

---

## 🧑‍💻 Penjelasan Fitur:
- **Foto Profil**: Mengambil foto profil dari URL yang diberikan. Jika tidak ada URL, gambar default digunakan.
- **Nama dan Peran**: Nama dan peran pengguna ditampilkan dalam teks tebal.
- **StatelessWidget**: Menggunakan **StatelessWidget** karena profil pengguna tidak memerlukan perubahan dinamis setelah dibuat.

---

## 🚀 Cara Kerja:
1. Ketika aplikasi dimulai, **`MyApp`** akan menampilkan **UserProfile** dengan informasi yang telah disediakan.
2. **UserProfile** menampilkan foto profil, peran, dan nama pengguna di tengah layar.

---

## 💡 Tips:
- Kamu dapat mengganti **`name`**, **`role`**, dan **`photoURL`** untuk menampilkan profil pengguna yang berbeda.
- Bisa juga menambahkan lebih banyak styling, seperti **rounded corners** untuk gambar profil.

---

Dibuat dengan ❤️ oleh [Kha](https://www.instagram.com/khalilaah.15/) | [LinkedIn](https://www.linkedin.com/in/khalilullah-nuraini-20246223b/).

Semangat ngodingnya guyss😄
