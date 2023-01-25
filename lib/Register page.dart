import 'package:firebase_auth/firebase_auth.dart';

import 'package:flutter/material.dart';

import 'Constant/color_const.dart';
import 'Home screen.dart';

class Registerpage extends StatefulWidget {
  const Registerpage({Key? key}) : super(key: key);

  @override
  State<Registerpage> createState() => _RegisterpageState();
}

class _RegisterpageState extends State<Registerpage> {
  FirebaseAuth firebaseAuth = FirebaseAuth.instance;
  final email = TextEditingController();
  final psw = TextEditingController();
  final formkey = GlobalKey<FormState>();
  String errorMessage = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                InkResponse(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: const CircleAvatar(
                    backgroundColor: kF1F4FE,
                    radius: 20,
                    child: Icon(
                      Icons.arrow_back,
                      color: kBlack,
                      size: 24,
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 200),
                  child: Center(
                    child: Text(
                      " Register  ",
                      style: TextStyle(
                        fontSize: 50,
                        fontWeight: FontWeight.w900,
                        color: kGrey,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                Form(
                  key: formkey,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 20),
                        child: TextFormField(
                          controller: email,
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "please enter the valid email";
                            }
                            return null;
                          },
                          decoration: InputDecoration(
                            hintText: "E-mail",
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                              borderSide:
                                  const BorderSide(color: k8171CC, width: 2),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                              borderSide:
                                  const BorderSide(color: k8171CC, width: 2),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      TextFormField(
                        controller: psw,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "please enter the valid password";
                          }
                          return null;
                        },
                        decoration: InputDecoration(
                          hintText: "Password",
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide:
                                const BorderSide(color: k8171CC, width: 2),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide:
                                const BorderSide(color: k8171CC, width: 2),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Center(
                  child: ElevatedButton(
                    onPressed: () async {
                      if (formkey.currentState!.validate()) {
                        try {
                          var user =
                              await firebaseAuth.createUserWithEmailAndPassword(
                                  email: email.text, password: psw.text);
                          print('${user.user!.displayName}');

                          ScaffoldMessenger.of(context)
                              .showSnackBar(const SnackBar(
                            content: Text('Registration Successful'),
                          ));
                        } on FirebaseAuthException catch (e) {
                          switch (e.code) {
                            case "invalid-email":
                              errorMessage =
                                  "Your email address to be malformed.";
                              break;
                            case "email-already-in-use":
                              errorMessage = "Email already in use";
                              break;
                            case "weak-password":
                              errorMessage = "Your password is week";
                              break;
                            default:
                              errorMessage = "An undefined Error happened.";
                          }
                          print('ERROR CODE ${e.code}');

                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Text('$errorMessage'),
                            ),
                          );
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const HomePage(),
                              ));
                        }
                      }
                    },
                    child: const Text('Register'),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
