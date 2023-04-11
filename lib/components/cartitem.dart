import 'package:flutter/material.dart';
import 'package:nike/models/cart.dart';
import 'package:nike/models/shoe.dart';
import 'package:provider/provider.dart';
class CartItem extends StatefulWidget {
  Shoe shoe;
   CartItem({super.key,
  required this.shoe});

  @override
  State<CartItem> createState() => _CartItemState();
}

class _CartItemState extends State<CartItem> {

  //remove item from cart
  void removeItemFromCart(){
    Provider.of<Cart>(context,listen: false).removeItemFromCart(widget.shoe);
    Navigator.pop(context);
  }
  
    @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12,vertical: 8),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12)
        ),
        child: ListTile(
          leading: Image.asset(widget.shoe.imagepath),
          title: Text(widget.shoe.name),
          subtitle: Text(widget.shoe.price),
          trailing: IconButton(onPressed: () => showDialog(context: context,
           builder: (context) => AlertDialog(
            title: Text('Are you sure you wanna delete? '),
            actions: [
              MaterialButton(onPressed: () =>removeItemFromCart() ,
              child: Text('Yes'),),
              MaterialButton(onPressed: () {
                Navigator.pop(context);
              },
              child: Text('No'),)
            ],
           ),),
           icon: Icon(Icons.delete,color: Colors.red,)),),

      ),
    );
  }
}