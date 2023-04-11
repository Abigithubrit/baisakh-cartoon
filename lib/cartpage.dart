import 'package:flutter/material.dart';
import 'package:nike/components/cartitem.dart';
import 'package:nike/models/cart.dart';
import 'package:nike/models/shoe.dart';
import 'package:provider/provider.dart';
class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(builder: (context, value, child) => Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Text('My Cart',style: TextStyle(
              fontWeight: FontWeight.bold,fontSize: 29
            ),),
          ),
          SizedBox(height: 10,),
          Expanded(child: ListView.builder(
            itemCount: value.getUserCart().length,
            itemBuilder: (context, index) {
            Shoe individualShoe = value.getUserCart()[index];
            return CartItem(shoe: individualShoe,);
          },))
        ],
      ),
    ),);
  }
}