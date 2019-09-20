import "package:flutter/material.dart";
import 'package:flutter/widgets.dart';
import './dishcard.dart';

class HomeScreen extends StatelessWidget {
  var username, mail;
  HomeScreen(username, mail){
    this.username= username;
    this.mail=mail;
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: new ThemeData(primaryColor: Colors.white),
      debugShowCheckedModeBanner: false,
      title: "Rasoi",
      home: Scaffold(
        drawer: Drawer(
          child: ListView(
            children: <Widget>[
              new UserAccountsDrawerHeader(
                accountName: Text(
                  "$username",
                  style: TextStyle(
                    fontFamily: 'Manjari',
                    fontWeight: FontWeight.w700,
                    fontSize: 25.0,
                    color: Colors.black,
                  ),
                ),
                accountEmail: Text(
                  "$mail",
                  style: TextStyle(
                    fontFamily: 'Manjari',
                    fontWeight: FontWeight.w400,
                    fontSize: 20.0,
                    color: Colors.black,
                  ),
                ),
                currentAccountPicture: Icon(
                  Icons.account_circle,
                  size: 60.0,
                  color: Colors.black,
                ),
              ),
              ListTile(
                leading: Icon(
                  Icons.history,
                  size: 30.0,
                  color: Colors.black,
                ),
                title: Text(
                  "Order History",
                  style: TextStyle(
                    fontFamily: 'Manjari',
                    fontWeight: FontWeight.w400,
                    fontSize: 25.0,
                    color: Colors.black,
                  ),
                ),
                onTap: () {},
              ),
              new Divider(),
              ListTile(
                leading: Icon(
                  Icons.library_books,
                  size: 30.0,
                  color: Colors.black,
                ),
                title: Text(
                  "Blog",
                  style: TextStyle(
                    fontFamily: 'Manjari',
                    fontWeight: FontWeight.w400,
                    fontSize: 25.0,
                    color: Colors.black,
                  ),
                ),
                onTap: () {},
              ),
              new Divider(),
              ListTile(
                leading: Icon(
                  Icons.insert_drive_file,
                  size: 30.0,
                  color: Colors.black,
                ),
                title: Text(
                  "Recipies",
                  style: TextStyle(
                    fontFamily: 'Manjari',
                    fontWeight: FontWeight.w400,
                    fontSize: 25.0,
                    color: Colors.black,
                  ),
                ),
                onTap: () {},
              ),
              new Divider(),
              ListTile(
                leading: Icon(
                  Icons.shopping_cart,
                  size: 30.0,
                  color: Colors.black,
                ),
                title: Text(
                  "Want to Sell?",
                  style: TextStyle(
                    fontFamily: 'Manjari',
                    fontWeight: FontWeight.w400,
                    fontSize: 25.0,
                    color: Colors.black,
                  ),
                ),
                onTap: () {},
              ),
              new Divider(),
              ListTile(
                leading: Icon(
                  Icons.info_outline,
                  size: 30.0,
                  color: Colors.black,
                ),
                title: Text(
                  "About Us",
                  style: TextStyle(
                    fontFamily: 'Manjari',
                    fontWeight: FontWeight.w400,
                    fontSize: 25.0,
                    color: Colors.black,
                  ),
                ),
                onTap: () {},
              ),
              new Divider(),
              ListTile(
                leading: Icon(
                  Icons.star,
                  size: 30.0,
                  color: Colors.yellow,
                ),
                title: Text(
                  "Rate Us",
                  style: TextStyle(
                    fontFamily: 'Manjari',
                    fontWeight: FontWeight.w400,
                    fontSize: 25.0,
                    color: Colors.black,
                  ),
                ),
                onTap: () {},
              ),
              new Divider(),
              ListTile(
                leading: Icon(
                  Icons.share,
                  size: 30.0,
                  color: Colors.black,
                ),
                title: Text(
                  "Share",
                  style: TextStyle(
                    fontFamily: 'Manjari',
                    fontWeight: FontWeight.w400,
                    fontSize: 25.0,
                    color: Colors.black,
                  ),
                ),
                onTap: () {},
              ),
            ],
          ),
        ),
        appBar: AppBar(
          elevation: 0.0,
          title: Text(
            "Rasoi",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontFamily: 'Manjari',
              fontWeight: FontWeight.w400,
              fontSize: 30.0,
              color: Colors.black,
            ),
          ),
          backgroundColor: Colors.white,
          iconTheme: IconThemeData(color: Colors.black),
        ),
        body: Material(
          color: Colors.white,
          child: ListView(
            children: <Widget>[
              Container(
                padding: EdgeInsets.only(top: 30.0),
              ),
              Card(
                child: Container(
                  width: 200,
                  height: 200,
                  child: DishCard("https://cafedelites.com/wp-content/uploads/2019/01/Butter-Chicken-IMAGE-27.jpg", "Butter Chicken", "₹69", 5),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

