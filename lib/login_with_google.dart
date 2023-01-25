import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';

class LoginWithGoogle extends StatefulWidget {
  const LoginWithGoogle({Key? key}) : super(key: key);

  @override
  State<LoginWithGoogle> createState() => _LoginWithGoogleState();
}

class _LoginWithGoogleState extends State<LoginWithGoogle> {
  FirebaseAuth auth = FirebaseAuth.instance;
  GoogleSignIn googleSignIn = GoogleSignIn();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () async {
            try {
              GoogleSignInAccount? googleSignInAccount =
                  await googleSignIn.signIn();

              GoogleSignInAuthentication authentication =
                  await googleSignInAccount!.authentication;

              var credentials = GoogleAuthProvider.credential(
                  accessToken: authentication.accessToken,
                  idToken: authentication.idToken);

              var userCredentials =
                  await auth.signInWithCredential(credentials);

              print('userCred ${userCredentials.user!.displayName}');
            } on FirebaseAuthException catch (e) {
              print('ERROR $e');
            }
          },
          child: Text('Google'),
        ),
      ),
    );
  }
}
