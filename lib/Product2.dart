import 'package:flutter/material.dart';
import './payment.dart';
import './order123.dart';

var price = "₹69";
var descriptionBox = "Handmade delicious Butter Chicken at low price";
var sellerInfo = "Akshit Garg";
var review = "Very tasty";
var productName = "Butter Chicken";
var buyButton;
var imageSource;

class Product2 extends StatelessWidget{
  BuildContext get context => context;


  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
        home: new Scaffold(
          appBar: AppBar(
            elevation: 0.0,
            title: new Text("Product Info",style: TextStyle(fontFamily: 'Manjari', fontWeight: FontWeight.w400, fontSize: 30.0,color: Colors.black),),
            backgroundColor: Colors.white,
          ),
            body: new Container(
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
                            new Text("$review", textDirection: TextDirection.ltr, style: TextStyle(fontFamily: 'Manjiri', fontSize: 16.0))
                          ],
                        )
                    ),


                  ],
                )

            ),
            floatingActionButton: FloatingActionButton.extended(
                icon: Icon(Icons.add_shopping_cart),
                label: Text("Buy now"),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context){
                    return Payment();
                  }));
                }
            )
        )
    );
  }

}

class aButton extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return NavButton();
          }
}

class NavButton extends State<aButton>{
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Notes"),
      ),

      body: new Container(
          child: new Column(
            children: <Widget>[ 
        new Container(
          padding: EdgeInsets.only(top: 35.0),
          child: MaterialButton(
            shape: StadiumBorder(),
            onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context){
                    return Order123(); 
                  }));

            },
            child:  new Text("Google Pay", style: TextStyle(fontFamily: 'Manjari', fontSize: 22.0),),
          ),
        ),
        new Divider(),
        new Container(
          child: MaterialButton(
            shape: StadiumBorder(),
             onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context){
                    return Order123();
                  }));

            },
            child:  new Text("Paytm", style: TextStyle(fontFamily: 'Manjari', fontSize: 22.0),),
          ),
        ),
        new Divider(),
        new Container(
          child: MaterialButton(
            shape: StadiumBorder(),
             onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context){
                    return Order123();
                  }));
            },
            child:  new Text("Bhim UPI", style: TextStyle(fontFamily: 'Manjari', fontSize: 22.0),),
          ),
        )
            ]
            )
      ),
    );
  }
  void goToPayment() {
    {
       Navigator.push(context, MaterialPageRoute(builder: (context){
        return Payment();
                  }));
  }
}
}



class Picture extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return new Image.network("https://cafedelites.com/wp-content/uploads/2019/01/Butter-Chicken-IMAGE-27.jpg");
  }
}



