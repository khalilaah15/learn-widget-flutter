# Belajar Membuat Product Card di Flutter 🛍️✨

Hai teman-teman! 👋 Hari ini kita akan belajar cara membuat **Product Card** yang menarik di Flutter. Kita akan menggunakan **Container**, **Column**, **Text**, dan **ElevatedButton** untuk menampilkan produk lengkap dengan gambar, nama, harga, dan tombol "Add to Cart". Yuk, simak penjelasan lengkapnya! 🚀

---

## 🎯 Apa yang Akan Kamu Pelajari
- Membuat **Card** produk dengan gambar, nama, dan harga.
- Menambahkan **tombol Add to Cart** dengan fungsionalitas.
- Menggunakan **Stack** dan **BoxDecoration** untuk tata letak dan desain yang menarik.

---

## 📝 Penjelasan Kode

### 1️⃣ Fungsi `main`
```dart
void main() {
  runApp(const MyApp());
}
```
Seperti biasa, fungsi `main` adalah titik masuk aplikasi Flutter kita. Di sini, kita menjalankan widget utama `MyApp`.

### 2️⃣ Widget Utama `MyApp`
```dart
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: firstColor,
          title: const Text('Product Card Example'),
        ),
        body: Container(
          margin: EdgeInsets.all(20),
          child: Align(
            alignment: Alignment.topCenter,
            child: ProductCard(
              imageURL: "https://media.suara.com/pictures/653x366/2023/09/17/51984-poster-drama-korea-high-cookie-mydramalist.jpg",
              name: "Cookie say haii",
              price: "Rp1.000.000",
              onAddCartTap: () {
                print("Product added to cart");
              },
            ),
          ),
        ),
      ),
    );
  }
}
```
#### Fitur Utama:
- **`ProductCard`** adalah widget yang menampilkan kartu produk.
- Gambar produk, nama, dan harga diambil sebagai parameter dari constructor.
- Tombol "Add to Cart" akan mencetak pesan saat diklik.

---

### 3️⃣ Widget `ProductCard`
```dart
class ProductCard extends StatelessWidget {
  final String imageURL;
  final String name;
  final String price;
  final VoidCallback onAddCartTap; // Callback untuk tombol

  // Gaya teks untuk nama dan harga
  final TextStyle textStyle = TextStyle(
    fontFamily: "Lato",
    fontSize: 14,
    fontWeight: FontWeight.bold,
    color: Colors.grey[800],
  );

  ProductCard({
    this.imageURL = "",
    this.name = "",
    this.price = "",
    required this.onAddCartTap,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          width: 150,
          height: 250,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(16),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.2),
                blurRadius: 6,
                offset: const Offset(1, 1),
              ),
            ],
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  // Gambar Produk
                  Container(
                    width: 150,
                    height: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(16),
                        topRight: Radius.circular(16),
                      ),
                      image: DecorationImage(
                        image: NetworkImage(imageURL),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  // Nama Produk
                  Container(
                    margin: EdgeInsets.all(5),
                    child: Text(
                      name,
                      style: textStyle,
                    ),
                  ),
                  // Harga Produk
                  Container(
                    margin: EdgeInsets.only(left: 5, right: 5),
                    child: Text(
                      price,
                      style: textStyle.copyWith(fontSize: 12, color: firstColor),
                    ),
                  ),
                ],
              ),
              // Tombol "Add to Cart"
              Column(
                children: <Widget>[
                  SizedBox(
                    width: 140,
                    child: ElevatedButton(
                      onPressed: onAddCartTap,
                      style: ElevatedButton.styleFrom(
                        backgroundColor: firstColor,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(16),
                            bottomRight: Radius.circular(16),
                          ),
                        ),
                      ),
                      child: Icon(Icons.add_shopping_cart),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
```
#### Fitur Utama:
- **`Container`**: Digunakan untuk membuat card dengan **border radius** dan **shadow** untuk efek kedalaman.
- **`Image`**: Gambar produk ditampilkan dengan **`DecorationImage`**.
- **`Text`**: Nama dan harga produk dengan gaya teks khusus.
- **`ElevatedButton`**: Tombol "Add to Cart" dengan icon keranjang belanja.
- **`Stack`**: Digunakan untuk meletakkan elemen di atas satu sama lain dengan tata letak yang lebih fleksibel.

---

## 🎨 Desain Produk Card
1. **Card** ini memiliki efek bayangan yang lembut untuk tampilan yang lebih menarik.
2. **Gambar Produk** ditampilkan pada bagian atas card.
3. **Nama dan Harga** produk ditampilkan di bawah gambar dengan gaya teks yang bersih dan jelas.
4. **Tombol Add to Cart** dengan warna khas yang menarik perhatian pengguna.

---

## 🚀 Cara Kerja
1. Ketika tombol "Add to Cart" diklik, fungsi `onAddCartTap` yang diberikan dari widget utama akan dipanggil.
2. **`ProductCard`** menggunakan **`Text`** dan **`Container`** untuk menampilkan produk dengan desain yang rapi dan modern.
3. **Fungsionalitas** tombol **"Add to Cart"** bisa dikustomisasi lebih lanjut untuk menyimpan item ke dalam keranjang belanja atau memberikan feedback ke pengguna.

---

## 🖼️ Pratinjau Output
- **Kartu Produk**: Menampilkan gambar, nama, harga, dan tombol "Add to Cart".
- **Tombol**: Ketika diklik, tombol menambahkan produk ke keranjang belanja (simulasi dengan print ke console).

---

## 🎉 Cobain Yuk!
1. Salin kode di atas ke proyek Flutter kamu.
2. Jalankan `flutter run` untuk melihat hasilnya.
3. Kustomisasi gambar, nama, harga, dan fungsi tombol sesuai kebutuhan aplikasi kamu!

Selamat mencoba membuat **Product Card** di Flutter! 💻✨

---

## 📚 Sumber Tambahan
- [Dokumentasi Flutter Widgets](https://flutter.dev/docs/development/ui/widgets)

---

Dibuat dengan ❤️ oleh [Kha](https://www.instagram.com/khalilaah.15/) | [LinkedIn](https://www.linkedin.com/in/khalilullah-nuraini-20246223b/).

Happy Birthday! 🛒✨
