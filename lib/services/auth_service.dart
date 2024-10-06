import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

class AuthService  {

  signInWithGoogle() async {
    try {
    //begin interactive sign in process
    final GoogleSignInAccount? gUser = await GoogleSignIn().signIn();

    //obtain auth details from request 
    final GoogleSignInAuthentication gAuth = await gUser!.authentication;

    //create a new credentials for user
    final credential = GoogleAuthProvider.credential(
      accessToken: gAuth.accessToken,
      idToken: gAuth.idToken
    );

    //successfully signed in
    return await FirebaseAuth.instance.signInWithCredential(credential);
    }
    //return if the user cancel the google sign in
    catch (e) {
      return;
    }
  }
}