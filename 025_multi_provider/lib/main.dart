import 'package:flutter/material.dart';
import 'package:multi_provider/cart.dart';
import 'package:multi_provider/money.dart';
import 'package:provider/provider.dart';

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
