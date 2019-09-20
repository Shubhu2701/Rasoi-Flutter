import "package:flutter/material.dart";

var username = 'Username' , mail = 'username@gmail.com';

class HomeScreen extends StatelessWidget {
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
                  size: 45.0,
                  color: Colors.black,
                ),
                title: Text(
                  "Order History",
                  style: TextStyle(
                    fontFamily: 'Manjari',
                    fontWeight: FontWeight.w400,
                    fontSize: 30.0,
                    color: Colors.black,
                  ),
                ),
              ),
              new Divider(),
              ListTile(
                leading: Icon(
                  Icons.info_outline,
                  size: 45.0,
                  color: Colors.black,
                ),
                title: Text(
                  "About Us",
                  style: TextStyle(
                    fontFamily: 'Manjari',
                    fontWeight: FontWeight.w400,
                    fontSize: 30.0,
                    color: Colors.black,
                  ),
                ),
              ),

              new Divider(),

              ListTile(

              )

            ],
          ),
        ),
        appBar: AppBar(
          elevation: 0.0,
          title: Text(
            "Rasoi",

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
        ),
      ),
    );
  }
}
