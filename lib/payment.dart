import 'package:flutter/material.dart';


class Payment extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home: new Scaffold(
          appBar: AppBar(
            elevation: 0.0,
            title: new Text("Payment Methods",style: TextStyle(fontFamily: 'Manjari', fontWeight: FontWeight.w400, fontSize: 30.0,color: Colors.black),),
            backgroundColor: Colors.white,
        ),
      body: new Container(
          child: new Column(
            children: <Widget>[ 
        new Container(
          padding: EdgeInsets.only(top: 35.0),
          child: MaterialButton(
            shape: StadiumBorder(),
            onPressed: (){},
            child:  new Text("Google Pay", style: TextStyle(fontFamily: 'Manjari', fontSize: 22.0),),
          ),
        ),
        new Divider(),
        new Container(
          child: MaterialButton(
            shape: StadiumBorder(),
            onPressed: (){},
            child:  new Text("Paytm", style: TextStyle(fontFamily: 'Manjari', fontSize: 22.0),),
          ),
        ),
        new Divider(),
        new Container(
          child: MaterialButton(
            shape: StadiumBorder(),
            onPressed: (){},
            child:  new Text("Bhim UPI", style: TextStyle(fontFamily: 'Manjari', fontSize: 22.0),),
          ),
        )
            ]
            )
      ),
     
     ),
    );
  }
}