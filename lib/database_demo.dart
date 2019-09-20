import 'package:cloud_firestore/cloud_firestore.dart';
import "package:flutter/material.dart";
import "./profile.dart";

class BookList extends StatelessWidget {

 profile getProfile(String name) {
   profile prof = profile();
   Firestore.instance
       .collection('profile')
       .where("name", isEqualTo: name)
       .snapshots()
       .listen((data) =>
       data.documents.forEach(
       (doc){
         prof.address = doc["address"];
         prof.name = name;
         prof.joinedSince = doc["Joined_since"];
         prof.rating = doc["rating"];
       }
       ));
   return prof;
 }


  @override
  Widget build(BuildContext context) {
    return StreamBuilder<QuerySnapshot>(
      stream: Firestore.instance.collection('dishes').snapshots(),
      builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
        if (snapshot.hasError)
          return new Text('Error: ${snapshot.error}');
        switch (snapshot.connectionState) {
          case ConnectionState.waiting: return new Text('Loading...');
          default:
            return new ListView(
              children: snapshot.data.documents.map((DocumentSnapshot document) {
                return new ListTile(
                  title: new Text(document['name']),
                  subtitle: new Text(document['price']),
                  // rating: new Text(document['rating'];
                  // pic : new Text(document['pic'];
                );
              }).toList(),
            );
        }
      },
    );
  }

  int transaction(){
    final DocumentReference postRef = Firestore.instance.document('profile/123');
    Firestore.instance.runTransaction((Transaction tx) async {
      DocumentSnapshot postSnapshot = await tx.get(postRef);
      if (postSnapshot.exists) {
        await tx.update(postRef, <String, dynamic>{'likesCount': postSnapshot.data['likesCount'] + 1});
      }
    });
  }
}

