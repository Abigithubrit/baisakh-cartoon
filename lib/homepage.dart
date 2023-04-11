import 'package:flutter/material.dart';
import 'package:nike/bottomnavbar.dart';
import 'package:nike/cartpage.dart';
import 'package:nike/shoppage.dart';
class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  int selected = 0 ;
 // this method will update
 void navigateBottomBar (int index){
  setState(() {
    selected = index;
  });
 }
 //pages to display
 //shop page
 final List pages =[
  ShopPage(),

  CartPage()
 ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Builder(builder: (context) => IconButton(
          onPressed: (){
            Scaffold.of(context).openDrawer();
          },
         icon: Icon(Icons.menu,color: Colors.black,)),
         ),
      ),
      drawer: Drawer(
        backgroundColor: Colors.grey.shade900,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                DrawerHeader(
              child: Image.asset('images/1.png'),
            ),
            //other pages
            Padding(padding: EdgeInsets.only(left: 20),
            child: ListTile(
              leading: Icon(Icons.home,color: Colors.white,),
              title: Text('Home',style: TextStyle(
                color: Colors.white
              ),),
            ),),
            Padding(padding: EdgeInsets.only(left: 20),
            child: ListTile(
              leading: Icon(Icons.info,color: Colors.white,),
              title: Text('About',style: TextStyle(
                color: Colors.white
              ),),
            ),),
              ],
            ),
            Padding(padding: EdgeInsets.only(left: 20),
            child: ListTile(
              leading: Icon(Icons.logout,color: Colors.white,),
              title: Text('Logout',style: TextStyle(
                color: Colors.white
              ),),
            ),),
          ],
        ),
      ),
      backgroundColor: Colors.grey.shade300,
      body: pages[selected],
      bottomNavigationBar: MyBottomNavBar(onTapChange: (index)=>navigateBottomBar(index)),
    );
  }
}