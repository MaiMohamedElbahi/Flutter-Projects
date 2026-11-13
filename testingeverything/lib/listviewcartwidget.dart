import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:testingeverything/productnotifier.dart';
import 'package:testingeverything/productsmodel.dart';

class CartWidget extends StatefulWidget {
final ProductModel product;
   const CartWidget({super.key,
  required this.product
  });

  @override
  State<CartWidget> createState() => _CartWidgetState();
}

class _CartWidgetState extends State<CartWidget> {
  @override
  Widget build(BuildContext context) {
    
    return ListTile(
      tileColor:const Color.fromARGB(255, 228, 212, 160) ,
      leading: Icon(widget.product.Icon, size: 30, color:const Color.fromARGB(255, 56, 43, 2) ,),
      title: Text(widget.product.Name, style: TextStyle(
        fontSize: 25,
        fontWeight: FontWeight.bold,
        color:const Color.fromARGB(255, 56, 43, 2)
      ),),
      subtitle: Text('\$${widget.product.Price.toString()}.0', style: TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.w100,
        color:const Color.fromARGB(255, 56, 43, 2)
      ),),
      trailing: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          TextButton(onPressed: (){
            setState(() {
              context.read<ProductNotifiler>().SubQuantity(widget.product);
            });
          }, child: Icon(Icons.remove, size: 25,color: const Color.fromARGB(255, 56, 43, 2),)),
          Text(widget.product.Quantity.toString(),style: TextStyle( fontSize: 25,color:const Color.fromARGB(255, 56, 43, 2),),),
          TextButton(onPressed: (){
            setState(() {
              context.read<ProductNotifiler>().AddQuantity(widget.product);
            });
          }, child: Icon(Icons.add, size: 25,color: const Color.fromARGB(255, 56, 43, 2),)),
        ],
      ),
    );
  }
}