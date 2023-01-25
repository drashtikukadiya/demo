import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:untitled5/verify_otp_screen.dart';

class LoginWithotp extends StatefulWidget {
  const LoginWithotp({Key? key}) : super(key: key);

  @override
  State<LoginWithotp> createState() => _LoginWithotpState();
}

class _LoginWithotpState extends State<LoginWithotp> {
  FirebaseAuth auth = FirebaseAuth.instance;
  bool loading = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: loading
          ? const Center(
              child: CircularProgressIndicator(),
            )
          : Center(
              child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    loading = true;
                  });
                  auth.verifyPhoneNumber(
                      phoneNumber: '+918160212536',
                      verificationCompleted: (phoneAuthCredential) {
                        setState(() {
                          loading = false;
                        });
                      },
                      verificationFailed: (error) {
                        setState(() {
                          loading = true;
                        });
                        print('ERROR ${error}');
                      },
                      codeSent: (verificationId, forceResendingToken) {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => VerifyOtp(id: verificationId),
                          ),
                        );
                      },
                      codeAutoRetrievalTimeout: (verificationId) {});
                },
                child: const Text('send otp'),
              ),
            ),
    );
  }
}
