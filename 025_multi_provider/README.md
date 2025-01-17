## 📱 Mengelola Banyak State dengan MultiProvider di Flutter ✨

Pada contoh ini, kita akan mengelola dua state yang berbeda, yaitu **Money** dan **Cart**, dengan menggunakan **MultiProvider**. Keduanya akan disediakan secara bersamaan dalam aplikasi sehingga perubahan di satu state dapat mempengaruhi bagian lain dari aplikasi.

---

## 🖋️ Penjelasan Kode

Buka 025_multi_provider/lib

### 1⃣ Struktur Proyek
Ada tiga file utama di proyek ini:
- **main.dart**: Tempat kita mengatur **MultiProvider** untuk mengelola state aplikasi.
- **money.dart**: Mengelola state untuk saldo (balance).
- **cart.dart**: Mengelola state untuk jumlah item di dalam keranjang belanja.

### 2⃣ Class `Money`
```dart
class Money with ChangeNotifier{
  int _balance = 10000;
  int get balance => _balance;
  set balance(int value) {
   _balance = value;
   notifyListeners(); 
  }
}
```
- **`Money`** adalah model yang mengelola saldo aplikasi.
- Variabel **_balance** menyimpan jumlah saldo yang dimiliki.
- **getter** `balance` digunakan untuk mengambil nilai saldo.
- **setter** `balance` digunakan untuk mengubah nilai saldo dan kemudian memanggil **`notifyListeners()`**, yang memberitahu widget yang mendengarkan perubahan ini.

### 3⃣ Class `Cart`
```dart
class Cart with ChangeNotifier{
  int _quantity = 0;
  int get quantity => _quantity;
  set quantity(int value) {
   _quantity = value;
   notifyListeners(); 
  }
}
```
- **`Cart`** adalah model yang mengelola jumlah item di keranjang belanja.
- Variabel **_quantity** menyimpan jumlah item yang ada di keranjang.
- **getter** `quantity` digunakan untuk mengambil nilai jumlah item.
- **setter** `quantity` digunakan untuk mengubah jumlah item dan memanggil **`notifyListeners()`**.

### 4⃣ Widget `MyApp` dengan MultiProvider
```dart
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MultiProvider(
        providers: [
          ChangeNotifierProvider<Money>(
            create: (context) => Money(),
          ),
          ChangeNotifierProvider<Cart>(
            create: (context) => Cart(),
          ),
        ],
        child: Scaffold(
          floatingActionButton: Consumer<Money>(
            builder: (context, money, _) => Consumer<Cart>(
              builder: (context, cart, _) => FloatingActionButton(
                onPressed: () {
                  if (money.balance >= 500) {
                    cart.quantity += 1;
                    money.balance -= 500;
                  }
                },
                child: Icon(Icons.add_shopping_cart),
                backgroundColor: Colors.purple,
              ),
            ),
          ),
          body: Column(
            children: [
              SafeArea(
                child: Container(
                  color: Colors.purple, 
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        "Multi Provider",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Icon(
                        Icons.menu,
                        color: Colors.white,
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          const Text("Balance"),
                          Container(
                            child: Align(
                              alignment: Alignment.centerRight,
                              child: Consumer<Money>(
                                builder: (context, money, _) => Text(
                                  money.balance.toString(),
                                  style: const TextStyle(
                                    color: Colors.purple,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              ),
                            ),
                            height: 30,
                            width: 150,
                            margin: const EdgeInsets.all(5),
                            padding: const EdgeInsets.all(5),
                            decoration: BoxDecoration(
                              color: Colors.purple[100],
                              border:
                                  Border.all(color: Colors.purple, width: 2),
                            ),
                          ),
                        ],
                      ),
                      Container(
                        child: Align(
                          alignment: Alignment.centerRight,
                          child: Consumer<Cart>(
                            builder: (context, cart, _) => Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text(
                                  "Apple (500) x " +
                                      cart.quantity.toString(),
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                Text(
                                  (500 * cart.quantity).toString(),
                                  style: TextStyle(
                                    color: Colors.purple,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        height: 30,
                        width: 150,
                        margin: EdgeInsets.all(5),
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          border: Border.all(color: Colors.black, width: 2),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
```
- **`MultiProvider`** digunakan untuk menyediakan lebih dari satu provider dalam aplikasi. Dalam kasus ini, **Money** dan **Cart** disediakan secara bersamaan.
- **`Consumer<Money>`** digunakan untuk mendengarkan perubahan di objek **Money** (saldo).
- **`Consumer<Cart>`** digunakan untuk mendengarkan perubahan di objek **Cart** (keranjang belanja).
- **`FloatingActionButton`** memungkinkan pengguna untuk menambahkan item ke keranjang jika saldo cukup. Setiap kali tombol ditekan, **quantity** di **Cart** bertambah dan **balance** di **Money** berkurang.

### 5⃣ Penjelasan Bagian-Bagian Utama
- **`MultiProvider`**: Menyediakan lebih dari satu state sekaligus ke seluruh widget di bawahnya.
- **`Consumer<Money>`** dan **`Consumer<Cart>`**: Memungkinkan widget untuk mendengarkan perubahan dalam **Money** dan **Cart** dan memperbarui UI.
- **`FloatingActionButton`**: Tombol untuk menambah jumlah item di keranjang dengan memeriksa saldo pengguna.
- **`Row`** dan **`Text`**: Menampilkan saldo dan jumlah item di keranjang beserta harga total.

---

## 🚀 Cara Kerja
1. **State Management dengan MultiProvider**: Menyediakan dua state berbeda (saldo dan keranjang) menggunakan **MultiProvider**.
2. **Consumer**: Widget yang bergantung pada perubahan di **Money** dan **Cart** akan diperbarui setiap kali ada perubahan.
3. **FloatingActionButton**: Tombol untuk menambahkan item ke keranjang jika saldo cukup, mempengaruhi **Cart** dan **Money** secara bersamaan.

---

## 🔄 Pratinjau Output
- **Saldo (Balance)** akan diperbarui setiap kali pengguna menambahkan item ke keranjang.
- **Keranjang** akan menampilkan jumlah item yang dibeli dan harga total.
- **FloatingActionButton** memungkinkan pengguna menambah item ke keranjang jika saldo cukup.

---

## 📚 Cobain Yuk!
1. Salin kode ini ke proyek Flutter kamu.
2. Jalankan aplikasi dengan `flutter run`.
3. Bereksperimen dengan menekan tombol **Add to Cart** dan lihat perubahan saldo dan jumlah item di keranjang.

---

Dibuat dengan ❤️ oleh [Kha](https://www.instagram.com/khalilaah.15/) | [LinkedIn](https://www.linkedin.com/in/khalilullah-nuraini-20246223b/). Selamat belajar dan bereksperimen dengan Flutter! 💻✨
