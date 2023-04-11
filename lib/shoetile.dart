import 'package:flutter/material.dart';
import 'package:nike/models/shoe.dart';
class ShoeTile extends StatelessWidget {
  Shoe shoe;
  void Function()? onTap;
 ShoeTile({super.key,required this.shoe,
 required this.onTap});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 25),
      width: 200,
      decoration: BoxDecoration(
        color: Colors.grey.shade100,
        borderRadius: BorderRadius.circular(12)
      ),
      child: Column(mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          //pic
         ClipRRect(
          borderRadius: BorderRadius.circular(12),
          child: Image.asset(shoe.imagepath)),
         //shoe description
         Text(shoe.description,
         style: TextStyle(color: Colors.grey.shade600),),
         //price and details
         Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //shoe name
                  Text(shoe.name),
                  Text('Rs '+shoe.price)
                ],
              ),
            ),
            GestureDetector(
              onTap: onTap,
              child: Container(
                padding: EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(12),
                    topLeft: Radius.circular(12)
                  )
            
                ),
                child: Icon(Icons.add,color: Colors.white,),
              ),
            )
          ],
         )
        ],
      ),
    );
  }
}