import 'package:flutter/material.dart';
import './historycards.dart';

class PastOrders extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      theme: new ThemeData(primaryColor: Colors.white),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "Order History",
            style: TextStyle(
              fontFamily: 'Manjari',
              fontWeight: FontWeight.w400,
              fontSize: 30.0,
            ),
          ),
        ),
        body: Container(
            padding: EdgeInsets.only(top: 20.0),
            child: ListView(
              children: <Widget>[
                HistoryCard(),
                HistoryCard(),
                HistoryCard(),
                HistoryCard(),
                HistoryCard(),
                HistoryCard(),
                HistoryCard(),
                HistoryCard(),
                HistoryCard(),
                HistoryCard(),
                HistoryCard(),
                HistoryCard(),
                HistoryCard(),
                HistoryCard(),
                HistoryCard(),

              ],
            )
        ),
      ),
    );
  }
}
