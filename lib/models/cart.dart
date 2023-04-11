import 'package:flutter/cupertino.dart';
import 'package:nike/models/shoe.dart';

class Cart extends ChangeNotifier{

  //list of shoes
  List<Shoe> shoeShop=[
    Shoe(
      name: 'Nike Freak', 
      price: '12300', 
      imagepath: 'images/a.jpg', 
      description: 'Cool to wear'),
      Shoe(
      name: 'Nike Freak', 
      price: '123', 
      imagepath: 'images/b.jpg', 
      description: 'Cool to wear'),
      Shoe(
      name: 'Nike Freak', 
      price: '12300', 
      imagepath: 'images/c.jpg', 
      description: 'Cool to wear'),
  ];

  //list of items in user cart
  List <Shoe> userCart = [];

  // get list of shoes for sale
  List <Shoe> getShoeList(){
    return shoeShop;
  }

  //get cart
  List<Shoe> getUserCart(){
    return userCart;
  }

  //add items to cart
  void addItemToCart(Shoe shoe){
    userCart.add(shoe);
    notifyListeners();
  }

  //remove items from usercart
  void removeItemFromCart(Shoe shoe){
    userCart.remove(shoe);
    notifyListeners();
  }

}