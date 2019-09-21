
import 'package:flutter/cupertino.dart';
//import './Product.dart';
import './home_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import "package:flutter/material.dart";
//import './payment.dart';
//import './auth.dart';
//import './order123.dart';



String email="abhinavmarwaha913@gmail.com";
String pass="random123";
BuildContext _context;

void main(){
  runApp(LandingPage());
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

class SignInPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    _context = context;
    return MaterialApp(
    home: Scaffold(
      appBar: AppBar(title: Text('Sign in')),
      body: CustomLoginForm(),
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


class CustomLoginForm extends StatefulWidget {
  @override
  _CustomLoginFormState createState() => _CustomLoginFormState();
}

class _CustomLoginFormState extends State<CustomLoginForm> {

  final myController = TextEditingController();
  final myController1 = TextEditingController();

  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    myController.dispose();
    myController1.dispose();
    super.dispose();
  }


  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: new Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Center(
            child: new Icon(Icons.account_circle) ,
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: TextFormField(
              controller: myController,
              decoration: InputDecoration(
                  labelText: "Email-id",
                  border: OutlineInputBorder(
                    gapPadding: 3.3,
                    borderRadius: BorderRadius.circular(4),
                  )
              ),
            ),
          ),
          Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextFormField(
                controller: myController1,
                obscureText: true,
                decoration: InputDecoration(
                    labelText: "Password",
                    border: OutlineInputBorder(
                      gapPadding: 3.3,
                      borderRadius: BorderRadius.circular(4),
                    )
                ),
              )
          ),
          new Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Padding(
                      padding: const EdgeInsets.all(10),
                      child: RaisedButton(
                        onPressed: (){
                          signUpWithEmail(myController.text , myController1.text);
                        },
                        child: new Text("Sign up"),
                      )
                  ),
                  new RaisedButton(
                    onPressed: (){
                      SignIn(myController.text , myController1.text);
                    },
                    child: new Text("Sign in"),
                  ),
                ],
              )
          ),

        ],
      ),
    );
  }
}