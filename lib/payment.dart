import 'package:flutter/material.dart';


class Payment extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home: new Scaffold(
      body: new Container(
          child: new Column(
            children: <Widget>[ 
          new Container(
            margin: const EdgeInsets.all(10.0),
            alignment: Alignment.center,  
            child: new Text("Payment Method", textDirection: TextDirection.ltr,style: TextStyle(fontFamily: 'Manjari', fontWeight: FontWeight.w800,fontSize: 50.0)),

        ),
        
        new Divider(),
        new Container(
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