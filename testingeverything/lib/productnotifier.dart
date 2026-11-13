import 'package:flutter/material.dart';
import 'productsmodel.dart';
class ProductNotifiler extends ChangeNotifier{

 List<ProductModel> Products = [
  ProductModel(Name: "Cookie", Icon: Icons.cookie, Price: 10.0, index: 0),
  ProductModel(Name: "Smart watch", Icon: Icons.watch, Price: 120.0, index: 1),
  ProductModel(Name: "Smart Phone", Icon: Icons.smartphone_sharp, Price: 550.0, index: 2),
  ProductModel(Name: "Camera", Icon: Icons.camera_alt_outlined, Price: 400.0, index: 3),
  ProductModel(Name: "Laptop", Icon: Icons.laptop, Price: 1200.0, index: 4),
  ProductModel(Name: "Headphones", Icon: Icons.headphones, Price: 80.0, index: 5),
  ProductModel(Name: "Tablet", Icon: Icons.tablet, Price: 450.0, index: 6),
  ProductModel(Name: "Cable", Icon: Icons.cable, Price: 40.0, index: 7),
  ProductModel(Name: "Bag", Icon: Icons.shopping_bag_rounded, Price: 90.0, index: 8)
];
 List<ProductModel> Cart = [];

void AddQuantity(ProductModel product){
 if(product.Quantity==0){
  product.Quantity += 1;
  Cart.add(product);
  }else{
  product.Quantity += 1;
  }
   notifyListeners();
}
void SubQuantity(ProductModel product){
  if(product.Quantity == 1){
    product.Quantity -= 1;
    Cart.remove(product);
  }else{
    product.Quantity -=1;
  }
   notifyListeners();
}
void Cancel(ProductModel product){
   product.Quantity=0;
   Cart.remove(product);
   notifyListeners();
}
double total(){
  double totalprice = 0;
  for (var product in Cart) {
    totalprice += product.Price * product.Quantity;
  }
  notifyListeners();
  return totalprice;
}
}