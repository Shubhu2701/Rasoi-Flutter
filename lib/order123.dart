import 'package:flutter/material.dart';
import './Product.dart';
import './payment.dart';

class Order123 extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home: new Scaffold(
        appBar: AppBar(
            elevation: 0.0,
            title: new Text("Product Info",style: TextStyle(fontFamily: 'Manjari', fontWeight: FontWeight.w400, fontSize: 30.0,color: Colors.black),),
            backgroundColor: Colors.white,
          ),
        body: new Container(
          child: new Column(
            children: <Widget>[
              new Container(
                width: 250,
                height: 300,
                //Abhinav's Code here
              ),
              new Divider(),
              new Container(
                padding: EdgeInsets.only(top: 30.0),
                child: new Text("Order Summary", style: TextStyle(fontFamily: 'Manjari', fontWeight: FontWeight.w600,fontSize: 45.0)),
              ),
                new Column(
                  children: <Widget>[
                    new Text("Product Name:", style: TextStyle(fontFamily: 'Manjari',fontWeight: FontWeight.w300,fontSize: 25.0)),
                    new Text("$productName:", style: TextStyle(fontFamily: 'Manjari',fontSize: 16.0)),
                    new Text("ETA:", style: TextStyle(fontFamily: 'Manjari',fontWeight: FontWeight.w300,fontSize: 25.0)),
                    new Text("Price:", style: TextStyle(fontFamily: 'Manjari',fontWeight: FontWeight.w300,fontSize: 25.0)),
                    new Text("$price", style: TextStyle(fontFamily: 'Manjari',fontSize: 16.0)),
                    new Text("Driver Name:", style: TextStyle(fontFamily: 'Manjari',fontWeight: FontWeight.w300,fontSize: 25.0)),
                  ],
                )
            ],
          ),
        ),
      )
    );
  }
}