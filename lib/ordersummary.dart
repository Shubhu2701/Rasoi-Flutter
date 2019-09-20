<<<<<<< HEAD
import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MapSample();
  }
}

class MapSample extends StatefulWidget {
  @override
  State<MapSample> createState() => MapSampleState();
}

class MapSampleState extends State<MapSample> {
  Completer<GoogleMapController> _controller = Completer();

  static final CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(37.42796133580664, -122.085749655962),
    zoom: 14.4746,
  );

  static final CameraPosition _kLake = CameraPosition(
      bearing: 192.8334901395799,
      target: LatLng(37.43296265331129, -122.08832357078792),
      tilt: 59.440717697143555,
      zoom: 19.151926040649414);

  @override
  Widget build(BuildContext context) {
    return new GoogleMap(
        mapType: MapType.hybrid,
        initialCameraPosition: _kGooglePlex,
        onMapCreated: (GoogleMapController controller) {
          _controller.complete(controller);
        },
      );
  }

  Future<void> _goToTheLake() async {
    final GoogleMapController controller = await _controller.future;
    controller.animateCamera(CameraUpdate.newCameraPosition(_kLake));
=======
import 'package:flutter/material.dart';
import './Product.dart';


class Map extends StatelessWidget{
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
>>>>>>> 44dee0304914bb86f4c7dba4d10b68d61e034755
  }
}