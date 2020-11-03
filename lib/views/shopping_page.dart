import 'package:flutter/material.dart';

class ShoppingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(itemBuilder: (context, index){
                return Card();
              }),
            ),

            Text('Total Amount'),
          ],
        ),
      ),
    );
  }
}
