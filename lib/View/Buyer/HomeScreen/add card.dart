import 'package:flutter/material.dart';

import '../../../Constant/color_const.dart';
import '../../../Constant/textstyle.dart';
import '../../Widget/common_button.dart';
import '../../Widget/common_textfield.dart';

class AddCard extends StatefulWidget {
  const AddCard({Key? key}) : super(key: key);

  @override
  State<AddCard> createState() => _AddCardState();
}

class _AddCardState extends State<AddCard> {
  List image = [
    "assets/images/image 9 (1).png",
    "assets/images/image 10.png",
    "assets/images/Vector.png",
  ];
  int selected = 0;

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
                        padding: EdgeInsets.only(left: 90),
                        child: Text(
                          "Add New Card",
                          style: k16w700,
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: List.generate(
                      3,
                      (index) => GestureDetector(
                        onTap: () {
                          setState(() {
                            selected = index;
                          });
                        },
                        child: Container(
                          height: height * 0.06,
                          width: width * 0.27,
                          decoration: BoxDecoration(
                              color: selected == index ? kFFEEE3 : kF5F6FA,
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(
                                  color: selected == index ? kFF5F00 : kF5F6FA,
                                  width: 2)),
                          child: Center(
                            child: Image.asset(
                              image[index],
                              height: height * 0.03,
                              width: width * 0.08,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                buildSizedBox(height * 0.4),
                const Text(
                  "Card Owner",
                  style: k16w700,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 7),
                  child: textField1(),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 20),
                  child: Text(
                    "Card Number",
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
                            "EXP",
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
                            "CVV",
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
                Padding(
                    padding: const EdgeInsets.only(top: 280),
                    child: buildMaterialButton(height, width, "Login")),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
