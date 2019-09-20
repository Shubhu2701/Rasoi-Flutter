import "package:flutter/material.dart";

var username = "Username";

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Rasoi",
      home: Scaffold(
        drawer: Drawer(
          child: Container(
            color: Colors.blueGrey.shade800,
            margin: EdgeInsets.only(bottom: 650.0),
            child: ListView(
              children: <Widget>[
                Container(margin: const EdgeInsets.all(18.0)),
                ListTile(
                  leading: Icon(
                    Icons.account_circle,
                    size: 60.0,
                  ),
                  title: Text("$username",
                      style: TextStyle(
                        fontFamily: 'Manjari',
                        fontWeight: FontWeight.w400,
                        fontSize: 33.0,
                        color: Colors.white,
                      )),
                ),
                Container(margin: const EdgeInsets.all(20.0)),
                ListTile(
                  leading: Icon(
                    Icons.history,
                    size: 45.0,
                  ),
                  title: Text(
                    "Order History",
                    style: TextStyle(
                      fontFamily: 'Manjari',
                      fontWeight: FontWeight.w400,
                      fontSize: 30.0,
                      color: Colors.blueGrey.shade800,
                    ),
                  ),
                )
              ],
            ),
          ),
          /*  child: ListView(
             children: <Widget>[
               ListTile(
                 leading: Icon(
                   Icons.history,
                   size: 45.0,
                 ),
                 title: Text(
                   "Order History",
                   style: TextStyle(
                     fontFamily: 'Manjari',
                     fontWeight: FontWeight.w400,
                     fontSize: 30.0,
                     color: Colors.blueGrey.shade800,
                   ),
                 ),
               ),
             ],
           )*/
        ),
        appBar: AppBar(
          title: Text(
            "Rasoi",
            style: TextStyle(
              fontFamily: 'Manjari',
              fontWeight: FontWeight.w400,
              fontSize: 28.0,
              color: Colors.white,
            ),
          ),
          backgroundColor: Colors.blueGrey.shade800,
        ),
        body: Material(
          color: Colors.white,
        ),
      ),
    );
  }
}
