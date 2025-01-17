import 'package:flutter/material.dart';
import 'package:product_card/product_card.dart';

void main() {
  runApp(const MyApp());
}

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
