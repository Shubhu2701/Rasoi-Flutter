
import 'package:flutter/cupertino.dart';
//import './Product.dart';
import './home_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import "package:flutter/material.dart";
//import './payment.dart';
//import './auth.dart';
//import './order123.dart';

void main(){
<<<<<<< HEAD
  auth.handleSignIn();
<<<<<<< HEAD
  runApp(HomeScreen("Shubhu" , "shubhankermehta27@gmail.com"));
=======
  runApp(HomeScreen("abhinav", "abhinav@gmail.com"));
>>>>>>> a9f13ecc9c5b26ce40b776c16ee5db5e97aa261b
=======
//  auth.handleSignIn();
  runApp(LandingPage());
>>>>>>> 89107075cd58efbf6e70733385fc76a3b8968abe
}

class LandingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder<FirebaseUser>(
      stream: FirebaseAuth.instance.onAuthStateChanged,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.active) {
          FirebaseUser user = snapshot.data;
          if (user == null) {
            return SignInPage();
          }
          return HomeScreen("name", "abhinav@gmail.com");
        } else {
          return Scaffold(
            body: Center(
              child: CircularProgressIndicator(),
            ),
          );
        }
      },
    );
  }
}

class SignInPage extends StatelessWidget {

  BuildContext _context;
  String email="abhinavmarwaha913@gmail.com";
  String pass="random123";

  void SignUP(){
    signUpWithEmail(email, pass);
  }

  void signUpWithEmail(String email, String pass) async {
    var user;
    try {
      user = await FirebaseAuth.instance.createUserWithEmailAndPassword(email: email, password: pass);
    } catch (e) {
      print(e); // TODO: show dialog with error
    } finally{
      if(user!=null){
        Navigator.of(_context).push(MaterialPageRoute(builder: (context)=>HomeScreen(email, pass)));
      }else{
        //TODO error
      }
    }
  }

  void SignIn(String email, String pass) async{

    var user;
    try{
      user = FirebaseAuth.instance.signInWithEmailAndPassword(email: email, password: pass);
    }catch(e){
      print(e);
    }finally{
      if(user!=null){
        Navigator.of(_context).push(MaterialPageRoute(builder: (context)=>HomeScreen(email, pass)));
      }else{
        // TODO error
      }
    }

  }

  @override
  Widget build(BuildContext context) {
    _context = context;
    return MaterialApp(
    home: Scaffold(
      appBar: AppBar(title: Text('Sign in')),
      body: Center(
        child: RaisedButton(
          child: Text('sign up'),
          onPressed: SignUP,
        ),
      ),
    )
    );
  }

  Future<void> _signOut() async {
    try {
      await FirebaseAuth.instance.signOut();
    } catch (e) {
      print(e); // TODO: show dialog with error
    }
  }
}