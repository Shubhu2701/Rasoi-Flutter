import 'package:flutter/material.dart';
import './Product.dart';

class DishCard extends StatelessWidget {
  var url, dish, price, rating;

  DishCard(url, dish, price, rating) {
    this.url = url;
    this.dish = dish;
    this.price = price;
    this.rating = rating;
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GestureDetector(
      onTap: (){
        print("Tapped");
        Navigator.of(context).push(MaterialPageRoute(builder: (context)=> Product(),));
      },);
      
        child: Card(
      elevation: 0.0,

      child: Row(
        children: <Widget>[
           Container(
            width: 200,
            height: 200,
            child: Align(
              alignment: Alignment.centerLeft,
              child: AspectRatio(
                aspectRatio: 1,
                child: Image.network(
                  "$url",
                  alignment: Alignment.centerLeft,
                ),
              ),
            ),
          ),
          Column(children: <Widget>[
            Text(
              "$dish",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: 'Manjari',
                fontWeight: FontWeight.w700,
                fontSize: 33.0,
                color: Colors.black,
              ),
            ),
            new Divider(),
            new Divider(),
            Text("Price : $price",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: 'Manjari',
                  fontWeight: FontWeight.w100,
                  fontSize: 30.0,
                  color: Colors.black,
                )),
            new Divider(),
            new Divider(),
            Text(
              "Rating : $rating",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: 'Manjari',
                fontWeight: FontWeight.w400,
                fontSize: 30.0,
                color: Colors.black,
              ),
            ),
            Row(
              children: <Widget>[
                Star(),
                Star(),
                Star(),
                Star(),
                Star(),

                ],
            )
          ]),
        ],
      ),

    );

  }

}

class Star extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return  Icon(
      Icons.star,
      size: 20.0,
      color: Colors.black,
    );
  }

}
