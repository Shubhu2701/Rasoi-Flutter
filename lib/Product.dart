import 'package:flutter/material.dart';
import './payment.dart';
import 'package:cloud_firestore/cloud_firestore.dart';


class Product extends StatelessWidget {

  String documentId;


  Product(String id) {
    documentId = id;
  }

//  class sample extends StatelessWidget{
//  @override
//  Widget build(BuildContext context){
//  return StreamBuilder<QuerySnapshot>(
//  stream: Firestore.instance.collection('dishes').snapshots(),
//  builder: (context, snapshot){
//  if (!snapshot.hasData) return LinearProgressIndicator();
//  price = snapshot.data.
//  return ListView.builder(
//  itemCount: snapshot.data.documents.length,
//  itemBuilder: (context, index) {
//  return null;
//  },
//  );
//  }
//  }


//  Future<QuerySnapshot> getInfo(String id) async {
//  var sum = 0;
//  await for (var value in stream) {
//  sum += value;
//  }
//  return sum;
//  }

  @override
  Widget build(BuildContext context) {
  return new MaterialApp(
  home: new Scaffold(
  body: StreamBuilder<DocumentSnapshot>(
    stream: Firestore.instance.collection('dishes').document(documentId).get().asStream(),
    builder: (context, snapshot){
      if (!snapshot.hasData) return LinearProgressIndicator();

      String price = snapshot.data.data["price"];
      String descriptionBox = snapshot.data.data["Desc"];
      String sellerInfo = snapshot.data.data["sellerID"];
      String productName = snapshot.data.data["name"];
      String buyButton;
      String imageSource;


      String category = snapshot.data.data["category"];

      return new Container(
          margin: const EdgeInsets.all(2.0),
          child: new Column(
            children: <Widget>[
              new Divider(),
              new Container(
                  width: 250,
                  height: 250,
                  child: new Picture()
              ),
              new Divider(),
              new Container(
                  child: new Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      new Text("$productName", textDirection: TextDirection.ltr,
                          style: new TextStyle(fontFamily: 'Manjari', fontWeight: FontWeight.w500,fontSize: 40.0)),
                      new Text("Rating: 4.5"),
                      new Icon(Icons.star)
                    ],
                  )
              ),
              new Divider(),
              new Container(
                child: new Text("Price : $price", textDirection: TextDirection.ltr,
                    style: new TextStyle(fontFamily: 'Manjari',fontWeight: FontWeight.w300,fontSize: 25.0)),
              ),
              new Divider(),
              new Container(
                margin: const EdgeInsets.all(10.0),
                child: new Column(
                  children: <Widget>[
                    new Text("Description: ", textDirection: TextDirection.ltr, style: TextStyle(fontFamily: 'Manjiri', fontWeight: FontWeight.w300,fontSize: 22.0)),
                    new Text("$descriptionBox", textDirection: TextDirection.ltr, style: TextStyle(fontFamily: 'Manjiri', fontSize: 16.0))
                  ],
                ),
              ),
              new Divider(),
              new Container(
                  margin: const EdgeInsets.all(10.0),
                  child: new Column(
                    children: <Widget>[
                      new Text("Seller info: ", textDirection: TextDirection.ltr, style: TextStyle(fontFamily: 'Manjiri', fontWeight: FontWeight.w300,fontSize: 22.0)),
                      new Text("$sellerInfo", textDirection: TextDirection.ltr, style: TextStyle(fontFamily: 'Manjiri', fontSize: 16.0))
                    ],
                  )
              ),
              new Divider(),
              new Container(
                  margin: const EdgeInsets.all(10.0),
                  child: new Column(
                    children: <Widget>[
                      new Text("Review: ", textDirection: TextDirection.ltr, style: TextStyle(fontFamily: 'Manjiri', fontWeight: FontWeight.w700,fontSize: 22.0)),

                    ],
                  )
              ),


            ],
          )

      );
    },
  ),
  floatingActionButton: FloatingActionButton.extended(
  icon: Icon(Icons.add_shopping_cart),
  label: Text("Buy now"),
  onPressed: () {
  Navigator.push(context, MaterialPageRoute(builder: (context) {
  return Payment();
  }));
  }
  )
  )
  );
  }
}


class Picture extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Image.network(
        "https://cafedelites.com/wp-content/uploads/2019/01/Butter-Chicken-IMAGE-27.jpg");
  }
}



