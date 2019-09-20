import 'package:flutter/material.dart';
import './dishcard.dart';

class HistoryCard extends StatelessWidget {
  HistoryCard();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GestureDetector(
      onTap: (){

      },
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Card(
                child: Container(
                  width: 150,
                  height: 150,
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: AspectRatio(
                      aspectRatio: 1,
                      child: Image.network(
                        "${DishCard.url}",
                        alignment: Alignment.centerLeft,
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ),
              ),
              new Divider(),
              Column(
                children: <Widget>[
                  Text(
                    "${DishCard.dish}",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontFamily: 'Manjari',
                      fontWeight: FontWeight.w400,
                      fontSize: 30.0,
                      color: Colors.black,
                    ),
                  ),
                  new Divider(),
                  new Divider(),
                  Text(
                    "${DishCard.price}",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontFamily: 'Manjari',
                      fontWeight: FontWeight.w100,
                      fontSize: 28.0,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
              new VerticalDivider(),
              new VerticalDivider(),
              new VerticalDivider(),
              new VerticalDivider(),
              Column(
                children: <Widget>[
//                new Divider(),
                  new Divider(),
                  Text(
                    "${DishCard.rating}",
                    style: TextStyle(
                      fontFamily: 'Manjari',
                      fontWeight: FontWeight.w100,
                      fontSize: 28.0,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
              Icon(
                Icons.star,
                size: 33.0,
                color: Colors.yellow,
              )
            ],
          ),
        ],
      ),
    );
  }
}
