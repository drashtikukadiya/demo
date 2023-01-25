import 'package:flutter/material.dart';

import '../../../Constant/color_const.dart';
import '../../../Constant/textstyle.dart';
import '../../Widget/common_button.dart';

class CreateAccount extends StatefulWidget {
  const CreateAccount({Key? key}) : super(key: key);

  @override
  State<CreateAccount> createState() => _CreateAccountState();
}

class _CreateAccountState extends State<CreateAccount> {
  int selected = 0;
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: buildInkResponse(),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 130),
                child: Center(
                    child: Image.asset(
                  "assets/images/online shop.png",
                  height: 170,
                  width: 170,
                )),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 100),
                child: Text(
                  "Welcome to Myshop",
                  style: k16w700,
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 20),
                child: Text(
                  "Create your account to start selling",
                  style: k18w600,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 60),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Enter Mobile Number",
                    hintStyle: k18w600,
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: const BorderSide(color: k8171CC, width: 3),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: const BorderSide(color: k8171CC, width: 3),
                    ),
                  ),
                ),
              ),
              Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(
                    3,
                    (index) => Padding(
                      padding:
                          const EdgeInsets.only(top: 40, left: 10, right: 10),
                      child: CircleAvatar(
                        radius: 4,
                        backgroundColor: selected == index ? k8171CC : kGrey,
                      ),
                    ),
                  )),
              Padding(
                padding: const EdgeInsets.only(top: 40, bottom: 50),
                child: buildMaterialButton(height, width, "Login"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
