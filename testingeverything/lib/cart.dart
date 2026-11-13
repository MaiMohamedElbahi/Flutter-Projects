import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'listviewcartwidget.dart';
import 'productnotifier.dart';

class Cart extends StatefulWidget {
  const Cart({super.key});

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    final Products = context.watch<ProductNotifiler>().Cart;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 56, 43, 2),
        leading: TextButton(onPressed: (){Navigator.pop(context);}, child: Icon(Icons.arrow_back,size: 25, color:  const Color.fromARGB(255, 228, 212, 160),)),
        title: Center(
          child: Text("Mood Shop", style: TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.w900,
                color: const Color.fromARGB(255, 228, 212, 160),
              ),),
        ),
        actions: [
          Icon(Icons.shopping_cart, size: 100, color: const Color.fromARGB(255, 56, 43, 2) ,)
        ],
      ),
      body: Container(
        color: const Color.fromARGB(255, 244, 242, 227),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 20),
            child: Column(
              children: [
                SizedBox(
                  width: 1000, height: 630,
                  child: Column(
                    children: [
                      Expanded(
                        child: ListView.builder(
                          itemCount: Products.length,
                          itemBuilder: (context, index) {
                            return CartWidget(product: Products[index]);
                          }
                          ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: 1000,height: 50,
                  child: Expanded(
                    child: Container(
                        color: const Color.fromARGB(255, 56, 43, 2),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text("Total: \$${context.read<ProductNotifiler>().total()}.0", style: TextStyle(
                              color: const Color.fromARGB(255, 228, 212, 160),
                              fontWeight: FontWeight.bold,
                              fontSize: 25
                            ),)
                          ],
                        ),
                          ),
                  ),
                )
              ],
            ),
          ),
        ),
      )
    );
  }
}