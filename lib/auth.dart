import 'package:google_sign_in/google_sign_in.dart';
import 'package:firebase_auth/firebase_auth.dart';


class auth {
  static final GoogleSignIn googleSignIn = GoogleSignIn();
  static final FirebaseAuth Auth = FirebaseAuth.instance;

  static Future<FirebaseUser> handleSignIn() async {
    final GoogleSignInAccount googleUser = await googleSignIn.signIn();
    final GoogleSignInAuthentication googleAuth = await googleUser
        .authentication;

    final AuthCredential credential = GoogleAuthProvider.getCredential(
      accessToken: googleAuth.accessToken,
      idToken: googleAuth.idToken,
    );

    final FirebaseUser user = (await Auth.signInWithCredential(credential))
        .user;
    print("signed in " + user.displayName);
    return user;
  }

  static Future<FirebaseUser> signin(String email, String pass) async {
    final FirebaseUser user = (await Auth.createUserWithEmailAndPassword(
      email: email,
      password: pass,
    ))
        .user;
    return user;
  }
}