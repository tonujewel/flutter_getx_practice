import 'package:flutter/material.dart';
import 'package:flutter_getx_practice/controller/shopping_controller.dart';
import 'package:get/get.dart';

class ShoppingPage extends StatelessWidget {
  final shoppingController = Get.put(ShoppingController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                  itemCount: 5,
                  itemBuilder: (context, index) {
                return Card(
                  child: Column(
                    children: [
                      Text('First Product', style: TextStyle(fontSize: 22)),
                      Text('First Product'),
                      RaisedButton(
                        onPressed: () {},
                        child: new Text(
                          "Add to cart",
                        ),
                      )
                    ],
                  ),
                );
              }),
            ),
            Text('Total Amount'),
            SizedBox(height: 100,)
          ],
        ),
      ),
    );
  }
}
