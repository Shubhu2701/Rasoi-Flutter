import 'package:flutter/material.dart';

var price;
var descriptionBox;
var sellerInfo;
var review;
var productName;

class Product extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new Scaffold(
        body: new Container(
          margin: const EdgeInsets.all(2.0),
          alignment: Alignment.center,
          child: new Column(
            children: <Widget>[
              new Container(
                width: 250,
                height: 250,
                child: new Picture()
              ),
              new Container(
                child: new Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  new Text("$productName", textDirection: TextDirection.ltr,
                            style: new TextStyle(fontFamily: 'Manjari', fontWeight: FontWeight.w700,fontSize: 50.0)),
                  new Text("Rating: 4.5"),
                  new Icon(Icons.star)
                ],
                )
              ),
              new Container(
                child: new Text("Price : $price", textDirection: TextDirection.ltr,
                        style: new TextStyle(fontFamily: 'Manjari',fontWeight: FontWeight.w700,fontSize: 37.5)),
              ),
              new Container(
                margin: const EdgeInsets.all(10.0),
                child: new Column(
                  children: <Widget>[
                    new Text("Description: ", textDirection: TextDirection.ltr, style: TextStyle(fontFamily: 'Manjiri', fontWeight: FontWeight.w700,fontSize: 35.0)),
                    new Text("$descriptionBox", textDirection: TextDirection.ltr, style: TextStyle(fontFamily: 'Manjiri', fontSize: 18.0))
                  ],
                ),
              ),
              new Container(
                margin: const EdgeInsets.all(10.0),
                 child: new Column(
                  children: <Widget>[
                    new Text("Seller info: ", textDirection: TextDirection.ltr, style: TextStyle(fontFamily: 'Manjiri', fontWeight: FontWeight.w700,fontSize: 35.0)),
                    new Text("$sellerInfo", textDirection: TextDirection.ltr, style: TextStyle(fontFamily: 'Manjiri', fontSize: 18.0))
                  ],
                )
              ),
              new Container(
                margin: const EdgeInsets.all(10.0),
                 child: new Column(
                  children: <Widget>[
                    new Text("Review: ", textDirection: TextDirection.ltr, style: TextStyle(fontFamily: 'Manjiri', fontWeight: FontWeight.w700,fontSize: 35.0)),
                    new Text("$review", textDirection: TextDirection.ltr, style: TextStyle(fontFamily: 'Manjiri', fontSize: 18.0))
                  ],
                )
              ),


            ],
          )

        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _selectedPage,
          onTap: (int index){
            setState((){
              _selectedPage = cu
            },),
          },
          items: <BottomNavigationBarItem>[

          ],
          
        ),
          
        ),
       )
      );
}
}
 
class Picture extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return new Image.network('src');
  }
}