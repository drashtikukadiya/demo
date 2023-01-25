import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:untitled5/Home%20screen.dart';

class VerifyOtp extends StatefulWidget {
  const VerifyOtp({Key? key, required this.id}) : super(key: key);

  final String id;

  @override
  State<VerifyOtp> createState() => _VerifyOtpState();
}

class _VerifyOtpState extends State<VerifyOtp> {
  final otp = TextEditingController();
  FirebaseAuth auth = FirebaseAuth.instance;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: TextField(
              controller: otp,
              decoration: const InputDecoration(hintText: 'OTP'),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          ElevatedButton(
            onPressed: () async {
              try {
                PhoneAuthCredential phoneAuthCredentials =
                    PhoneAuthProvider.credential(
                        verificationId: widget.id, smsCode: otp.text.trim());

                var user =
                    await auth.signInWithCredential(phoneAuthCredentials);

                if (user.user != null) {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const HomePage(),
                      ));
                }
              } catch (e) {
                print('ERROR ${e}');
              }
            },
            child: Text('Verify'),
          )
        ],
      ),
    );
  }
}
