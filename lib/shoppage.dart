

import 'package:flutter/material.dart';
import 'package:nike/models/cart.dart';
import 'package:nike/models/shoe.dart';
import 'package:nike/shoetile.dart';
import 'package:provider/provider.dart';
class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  //add shoe to cart
  void addShoeToCart(Shoe shoe){
    Provider.of<Cart>(context,listen: false).addItemToCart(shoe);

    //alert te user know something happened
    showDialog(context: context, 
    builder: (context) => AlertDialog(
      title: Text('Successfully added'),
      content: Text('Check your Cart'),
      actions: [
        MaterialButton(onPressed: () {
          Navigator.pop(context);
        },
        child: Text('Close'),)
      ],
    ),);
  }
  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(builder: (context, value, child) => Column(
      children: [
        Container(
          margin: EdgeInsets.symmetric(horizontal: 25),
          padding: EdgeInsets.symmetric(horizontal: 25,vertical: 15),
          decoration: BoxDecoration(
            color: Colors.grey.shade200,
            borderRadius: BorderRadius.circular(12),
            
          ),
          child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Search'),
              Icon(Icons.search)
            ],
          ),
        ),
        Padding(padding: EdgeInsets.all(8),
        child: Text(
      
          'everyone flies, some flies higher some lower',
          textAlign: TextAlign.center,),),
          //hot
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Hot Picks 🔥',style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold),),
                Text('See all',style: TextStyle(color: Colors.blue,fontSize: 18),),
                SizedBox(height: 10,),
                
              ],
            ),
          ),
          SizedBox(height: 5,),
          Expanded(child: ListView.builder(
            scrollDirection: Axis.horizontal,
                  itemCount: 3,
                  itemBuilder: (context, index) {
                    //get a shoe
                    Shoe shoe = value.getShoeList()[index];
                  return ShoeTile(
                    shoe: shoe,
                    onTap:() => addShoeToCart(shoe));
                },)),
                Padding(padding: EdgeInsets.only(left: 25,top: 20),
                child: Divider(),)

      ],
    ),);
  }
}