
import 'package:flutter/cupertino.dart';
import './Product.dart';
import './home_screen.dart';
import './payment.dart';
import './auth.dart';
import './order123.dart';
import './Product2.dart';

void main(){
  auth.handleSignIn();
  runApp(HomeScreen("abhinav", "abhinav@gmail.com"));
}
