import 'package:flutter/material.dart';
import 'package:nike/homepage.dart';
class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(padding: EdgeInsets.all(25),
          child: Image.asset('images/nike.jpg'),),
          SizedBox(height: 40,),
          Text('Just Do It',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20
          ),),
          Text('Brand New Sneakers and custom kicks shoe available at cheap price',
          textAlign: TextAlign.center,
          style: TextStyle(
            
            fontSize: 16
          ),),
          SizedBox(height: 40,),
          GestureDetector(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => Homepage(),));
            },
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(6)
                ),
                child: Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Center(
                    child: Text('Shop Now',
                    style: TextStyle(
                      color: Colors.white
                    ),),
                  ),
                ),
              ),
            ),
          )
        ],
        ),
      ),
    );
  }
}