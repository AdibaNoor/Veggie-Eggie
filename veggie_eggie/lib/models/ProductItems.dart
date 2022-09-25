import 'Product.dart';

class ProductItems{
  int quantity;
  final Product? product;
  ProductItems({required this.product,this.quantity=1});

  void increment() {
    quantity++;
}
 void add(){}

 void subtract(){}
  
}