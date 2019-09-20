import 'package:cloud_firestore/cloud_firestore.dart';
import "package:flutter/material.dart";
import 'package:flutter/widgets.dart';
import 'package:rasoi/Dish.dart';
import './dishcard.dart';

class HomeScreen extends StatelessWidget {
  var username, mail;
  List<Dish> dishes;

  HomeScreen(username, mail) {
    this.username = username;
    this.mail = mail;
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
          child: StreamBuilder<QuerySnapshot>(
            stream: Firestore.instance.collection('dishes').snapshots(),
            builder: (context, snapshot){
              if (!snapshot.hasData) return LinearProgressIndicator();

              return ListView.builder(
                itemCount: snapshot.data.documents.length,
                itemBuilder: (context, index) {
                return DishCard(
                  snapshot.data.documents[index].data["pic"],
                    snapshot.data.documents[index].data["name"],
                    snapshot.data.documents[index].data["price"],
                    snapshot.data.documents[index].data["rating"],
                    snapshot.data.documents[index].documentID
                );
              },);
            },
          ),
        ),
      ),
    );
  }

}
