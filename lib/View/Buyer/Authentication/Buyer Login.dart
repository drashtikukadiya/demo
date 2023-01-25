import 'package:flutter/material.dart';

import '../../../Constant/color_const.dart';
import '../../Widget/common_button.dart';

class BuyerLogin extends StatefulWidget {
  const BuyerLogin({Key? key}) : super(key: key);

  @override
  State<BuyerLogin> createState() => _BuyerLoginState();
}

class _BuyerLoginState extends State<BuyerLogin> {
  final email = TextEditingController();
  final psw = TextEditingController();
  final formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 30, right: 30),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: buildInkResponse(),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 70),
                  child: Center(
                      child: Image.asset(
                    "assets/images/online shop.png",
                    height: 170,
                    width: 170,
                  )),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 70, bottom: 0),
                  child: Text(
                    "Email id or mobile number",
                    style: TextStyle(
                      fontSize: height * 0.0230,
                      fontWeight: FontWeight.w600,
                      color: kBlack,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Form(
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
                            prefixIcon: Icon(
                              Icons.person_outline,
                              size: height * 0.03,
                              color: kBlack,
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                              borderSide:
                                  const BorderSide(color: k8171CC, width: 2),
                            ),
                            errorBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                              borderSide:
                                  const BorderSide(color: kRed, width: 2),
                            ),
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
                        Padding(
                          padding: const EdgeInsets.only(top: 20),
                          child: TextFormField(
                            controller: psw,
                            validator: (value) {
                              if (value!.isEmpty) {
                                return "please enter the valid password";
                              }
                              return null;
                            },
                            decoration: InputDecoration(
                              hintText: "Password",
                              prefixIcon: Icon(
                                Icons.lock_outline,
                                size: height * 0.03,
                                color: kBlack,
                              ),
                              suffixIcon: Icon(
                                Icons.remove_red_eye_outlined,
                                size: height * 0.03,
                                color: kBlack,
                              ),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30),
                                borderSide:
                                    const BorderSide(color: k8171CC, width: 2),
                              ),
                              errorBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30),
                                borderSide:
                                    const BorderSide(color: kRed, width: 2),
                              ),
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
                      ],
                    ),
                  ),
                ),
                Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: TextButton(
                      onPressed: () {},
                      child: Text(
                        "Forgot your password? ",
                        style: TextStyle(
                          fontSize: height * 0.0230,
                          fontWeight: FontWeight.w700,
                          color: k8171CC,
                        ),
                      ),
                    )),
                Padding(
                  padding: const EdgeInsets.only(top: 20, left: 5, right: 5),
                  child: MaterialButton(
                    onPressed: () {
                      setState(() {
                        if (formkey.currentState!.validate()) {
                          return;
                        }
                      });
                    },
                    height: height * 0.06,
                    minWidth: width * 0.80,
                    color: k8171CC,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30)),
                    child: Center(
                      child: Text(
                        "Login",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: height * 0.0220,
                          color: kWhite,
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 30),
                  child: Center(
                    child: Text(
                      "----------- New to myshop ? -----------",
                      style: TextStyle(
                        fontSize: height * 0.0220,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 15),
                  child: Center(
                      child: TextButton(
                    onPressed: () {},
                    child: Text(
                      "Create New Account ",
                      style: TextStyle(
                        fontSize: height * 0.0230,
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
