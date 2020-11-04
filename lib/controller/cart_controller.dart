import 'package:flutter_getx_practice/model/product.dart';
import 'package:get/get.dart';

class CartController extends GetxController{

  var cartProduct = List<Product>().obs;
  double get totalPrice => cartProduct.fold(0, (sum, item) => sum + item.price);
  int get count => cartProduct.length;

  addToCard(Product product){
    cartProduct.add(product);
  }
}