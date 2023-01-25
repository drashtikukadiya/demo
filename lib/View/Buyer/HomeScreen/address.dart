import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../Constant/textstyle.dart';
import '../../Widget/common_button.dart';
import '../../Widget/common_textfield.dart';

class Adderess extends StatefulWidget {
  const Adderess({Key? key}) : super(key: key);

  @override
  State<Adderess> createState() => _AdderessState();
}

class _AdderessState extends State<Adderess> {
  bool isswitch = false;

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Row(
                    children: [
                      buildInkResponse(),
                      const Padding(
                        padding: EdgeInsets.only(left: 120),
                        child: Text(
                          "Address",
                          style: k16w700,
                        ),
                      )
                    ],
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 40),
                  child: Text(
                    "Name",
                    style: k16w700,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 7),
                  child: textField1(),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 13),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "Country",
                            style: k16w700,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 7),
                            child: Container(
                              height: 55,
                              width: 175,
                              decoration: BoxDecoration(
                                color: Colors.grey.shade300,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: textField1(),
                            ),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 13),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "City",
                            style: k16w700,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 7),
                            child: Container(
                              height: 55,
                              width: 175,
                              decoration: BoxDecoration(
                                color: Colors.grey.shade300,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: textField1(),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 20),
                  child: Text(
                    "Phone Number",
                    style: k16w700,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 7),
                  child: textField1(),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 20),
                  child: Text(
                    "Address",
                    style: k16w700,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 7),
                  child: textField1(),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(top: 20),
                        child: Text(
                          "Save as primary address",
                          style: k16w700,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: CupertinoSwitch(
                          value: isswitch,
                          activeColor: Colors.green,
                          onChanged: (value) {
                            setState(() {
                              isswitch = value;
                            });
                          },
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 200),
                  child: buildMaterialButton(height, width, "Login"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
