import 'package:flutter/material.dart';
import 'package:flutter_getx_practice/controller/cart_controller.dart';
import 'package:flutter_getx_practice/controller/shopping_controller.dart';
import 'package:get/get.dart';

class ShoppingPage extends StatelessWidget {
  final shoppingController = Get.put(ShoppingController());
  final cartController = Get.put(CartController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Container(
        child: Column(
          children: [
            Expanded(
              child: GetX<ShoppingController>(builder: (controller) {
                return ListView.builder(
                    itemCount: controller.product.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              '${controller.product[index].productName}',
                              style: TextStyle(fontSize: 20),
                            ),
                            Text(
                              '${controller.product[index].productDescription}',
                            ),
                            Text('${controller.product[index].price}'),
                            RaisedButton(
                              onPressed: () {
                                cartController
                                    .addToCard(controller.product[index]);
                              },
                              child: Text("Add to cart"),
                            )
                          ],
                        ),
                      );
                    });
              }),
            ),
            GetX<CartController>(builder: (controller) {
              return Text(
                'Total amount: \$ ${controller.totalPrice}',
                style: TextStyle(fontSize: 32, color: Colors.white),
              );
            }),
            SizedBox(
              height: 100,
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
          label:GetX<CartController>(
            builder: (controller) {
              return Text("${controller.count}");
            }
          ),
        onPressed: (){
        },
        icon: Icon(Icons.shopping_cart),

      ),
    );
  }
}
