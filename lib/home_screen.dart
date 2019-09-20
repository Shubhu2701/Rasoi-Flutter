import "package:flutter/material.dart";
import 'package:flutter/widgets.dart';
import 'package:rasoi/Dish.dart';
import './dishcard.dart';
import 'database_demo.dart';
import 'package:ansicolor/ansicolor.dart';

class HomeScreen extends StatelessWidget {
  var username, mail;
  List<Dish> dishes;

  HomeScreen(username, mail) {
    this.username = username;
    this.mail = mail;
    List<String> strings ;
    strings.add("aka");
    print12(strings);

    database_demo db = database_demo();
    dishes = database_demo.getDishes();
    strings.add(dishes[0].name);
    print12(strings);

    print('\x1B[94m' + dishes[0].name + '\x1B[0m');
    debugPrint(dishes[0].name);

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
<<<<<<< HEAD
              Card(
                child: Container(
                  width: 200,
                  height: 200,
                  child: DishCard(
                      "https://cafedelites.com/wp-content/uploads/2019/01/Butter-Chicken-IMAGE-27.jpg",
                      "Butter Chicken",
                      "₹69",
                      5),
                  
                ),
              ),
=======

              DishCard(
                  "https://cafedelites.com/wp-content/uploads/2019/01/Butter-Chicken-IMAGE-27.jpg",
                  "Butter Chicken",
                  "₹69",
                  5),
>>>>>>> a9f13ecc9c5b26ce40b776c16ee5db5e97aa261b
            ],
          ),
        ),
      ),
    );
  }

  void print12(List<String> arguments) {
    AnsiPen greenPen = AnsiPen()..green();
    AnsiPen greenBackGroundPen = AnsiPen()..green(bg: true);

    AnsiPen redTextBlueBackgroundPen = AnsiPen()..blue(bg: true)..red();

    AnsiPen boldPen = AnsiPen()..white(bold: true);

    AnsiPen someColorPen = AnsiPen()..rgb(r: .5, g: .2, b: .4);

    print(greenPen("Hulk") + " " + greenBackGroundPen("SMASH!!!"));
    print(redTextBlueBackgroundPen("Spider-Man!!!") + " " + boldPen("Far From Home!!!"));

    print(someColorPen("Chameleon"));
  }
}
