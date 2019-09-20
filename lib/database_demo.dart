import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import "package:flutter/material.dart";
import "./profile.dart";
import 'package:file_picker/file_picker.dart';
import 'package:firebase_storage/firebase_storage.dart';
import './auth.dart';
import 'dart:io';
import 'package:image_picker/image_picker.dart';



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
 void putImage(String dishname) async{

   final StorageReference storageRef =
   FirebaseStorage.instance.ref().child(auth.USER.name+"/"+ dishname);

   String filePath = (await ImagePicker.pickImage(source: ImageSource.gallery)).path;

   final StorageUploadTask uploadTask = storageRef.putFile(
     File(filePath),
     StorageMetadata(
       contentType: "image" + '/' + ".jpg", // TODO image format
     ),
   );


   final StorageTaskSnapshot downloadUrl =
   (await uploadTask.onComplete);
   final String url = (await downloadUrl.ref.getDownloadURL());
   print('URL Is $url');

   Firestore.instance
       .collection('dishes')
       .where("name", isEqualTo: auth.USER.name)
       .snapshots()
       .listen((data) =>
       data.documents.forEach(
               (doc){
                 Firestore.instance.collection('dishes').document(doc.documentID).updateData({"pic" : url});
           }
       ));



 }

 Future<String> getImage (String image) async{
   final StorageReference storageRef =
   FirebaseStorage.instance.ref().child(auth.USER.name + "/" + image);
   String httpPath = storageRef.path;
   String uri = Uri.decodeFull(httpPath);
   final RegExp regex = RegExp('([^?/]*\.(jpg))');
   final String fileName = regex.stringMatch(uri);

   final Directory tempDir = Directory.systemTemp;
   final File file = File('${tempDir.path}/$fileName');

   final StorageReference ref = FirebaseStorage.instance.ref().child(fileName);
   final StorageFileDownloadTask downloadTask = ref.writeToFile(file);

   final int byteNumber = (await downloadTask.future).totalByteCount;
   print(byteNumber);
   return "${tempDir.path}/$fileName";

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

