import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'productnotifier.dart';
import 'cart.dart';

class Homepage extends StatefulWidget {
  const new({super.key});

  @override
  State<Homepage> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    final Products = context.watch<ProductNotifiler>().Products;
    return Scaffold(
      floatingActionButton: SizedBox(width: 80, height: 80,
        child: FilledButton(onPressed: (){ Navigator.push(context, MaterialPageRoute(builder: (context) => Cart()));},style: FilledButton.styleFrom(
          backgroundColor: const Color.fromARGB(255, 56, 43, 2) ,
          shape: RoundedRectangleBorder(borderRadius: BorderRadiusGeometry.circular(50))
        ) , child: 
        Center(child: Icon(Icons.shopping_cart, color: const Color.fromARGB(255, 228, 212, 160),size: 35,))
        ),
      ),
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
            child: SizedBox(
              width: 1000,
              child: GridView.builder(itemCount: Products.length, gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 10,
                crossAxisSpacing: 10,
                childAspectRatio: 1
                ), 
                itemBuilder: (context, index){
                  return Container(
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 56, 43, 2) ,
                      borderRadius: BorderRadius.circular(15)
                    ),
                    child: Center(
                      child: Column(
                        children: [
                          SizedBox(height: 30,),
                          Icon(Products[index].Icon, color: const Color.fromARGB(255,  228, 212, 160),size: 250,),
                          SizedBox(height: 15,),
                          Text(Products[index].Name, style: TextStyle( color: const Color.fromARGB(255, 228, 212, 160), fontWeight: FontWeight.bold, fontSize: 28),),
                          Text(Products[index].Price.toString(), style: TextStyle( color: const Color.fromARGB(255, 228, 212, 160), fontWeight: FontWeight.w100, fontSize: 18),),
                          SizedBox(height: 20,),
                          SizedBox(
                            width: 250, height: 45,
                            child: FilledButton(onPressed: (){
                              setState(() {
                               Products[index].Quantity==0? context.read<ProductNotifiler>().AddQuantity(Products[index]) : context.read<ProductNotifiler>().Cancel(Products[index]);
                              });
                            }, 
                            style: FilledButton.styleFrom(
                              backgroundColor: Products[index].Quantity==0? const Color.fromARGB(255, 228, 212, 160): const Color.fromARGB(255, 54, 4, 0),
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15))
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(Products[index].Quantity==0? "Add to cart" : "Added", style: TextStyle(
                                  color: Products[index].Quantity==0? const Color.fromARGB(255, 56, 43, 2) : const Color.fromARGB(255, 228, 212, 160),
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20
                                ),),
                                SizedBox(width: 10,),
                                Icon(Products[index].Quantity==0? Icons.shopping_cart : Icons.done, color: Products[index].Quantity==0? const Color.fromARGB(255, 56, 43, 2) : const Color.fromARGB(255, 228, 212, 160) ,size: 22,)
                              ],
                            )
                            ),
                          )
                        ],
                      ),
                    ),
                  );
                }
                ),
            ),
          ),
        ),
      ),
    );
  }
}