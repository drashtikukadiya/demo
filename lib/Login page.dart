import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';
import 'package:untitled5/Home%20screen.dart';

import 'Constant/color_const.dart';
import 'Register page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  FirebaseAuth firebaseAuth = FirebaseAuth.instance;
  final email = TextEditingController();
  final psw = TextEditingController();
  final formkey = GlobalKey<FormState>();
  final box = GetStorage();
  String errorMessage = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Center(
                  child: Text(
                    " Log in ",
                    style: TextStyle(
                      fontSize: 50,
                      fontWeight: FontWeight.w900,
                      color: kGrey,
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
                      TextFormField(
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
                ElevatedButton(
                  onPressed: () async {
                    await box.write('name', 'id');
                    if (formkey.currentState!.validate()) {
                      try {
                        var user =
                            await firebaseAuth.signInWithEmailAndPassword(
                                email: email.text, password: psw.text);
                        print('${user.user!.displayName}');
                        // ignore: use_build_context_synchronously

                        ScaffoldMessenger.of(context)
                            .showSnackBar(const SnackBar(
                          content: Text('Registration Successful'),
                        ));
                        // ignore: use_build_context_synchronously
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const HomePage(),
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
                      }
                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text('$errorMessage'),
                        ),
                      );
                    }
                  },
                  child: const Text('Login'),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 15),
                  child: Center(
                      child: TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Registerpage(),
                        ),
                      );
                    },
                    child: const Text(
                      "Create New Account",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        color: k8171CC,
                      ),
                    ),
                  )),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
