import 'package:flutter/material.dart';

const Color firstColor = Color(0xffF44336);
const Color secondColor = Color(0xff4CAF50);

class ProductCard extends StatelessWidget {
  final String imageURL;
  final String name;
  final String price;
  final VoidCallback onAddCartTap; // Correctly using VoidCallback
  final TextStyle textStyle = TextStyle(
      fontFamily: "Lato",
      fontSize: 14,
      fontWeight: FontWeight.bold,
      color: Colors.grey[800]);

  ProductCard(
      {this.imageURL = "", this.name = "", this.price = "", required this.onAddCartTap});

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
                    offset: const Offset(1, 1))
              ]),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      width: 150,
                      height: 100,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(16),
                              topRight: Radius.circular(16)),
                          image: DecorationImage(
                              image: NetworkImage(imageURL),
                              fit: BoxFit.cover)),
                    ),
                    Container(
                      margin: EdgeInsets.all(5),
                      child: Text(
                        name,
                        style: textStyle,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 5, right: 5),
                      child: Text(
                        price,
                        style:
                            textStyle.copyWith(fontSize: 12, color: firstColor),
                      ),
                    )
                  ],
                ),
                Column(
                  children: <Widget>[
                    // Add to Cart button
                    SizedBox(
                      width: 140,
                      child: ElevatedButton(
                        onPressed: onAddCartTap,
                        style: ElevatedButton.styleFrom(
                          backgroundColor: firstColor, // Use 'backgroundColor' instead of 'primary'
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(16),
                                bottomRight: Radius.circular(16)),
                          ),
                        ),
                        child: Icon(Icons.add_shopping_cart),
                      ),
                    )
                  ],
                )
              ]),
        )
      ],
    );
  }
}
