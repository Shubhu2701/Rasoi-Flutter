
import 'package:flutter/cupertino.dart';
import './Product.dart';
import './home_screen.dart';
import './auth.dart';

void main(){
  auth.handleSignIn();
  runApp(HomeScreen());
}
