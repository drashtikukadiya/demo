import 'package:flutter/material.dart';

import '../../Constant/color_const.dart';
import '../../Constant/textstyle.dart';

MaterialButton buildMaterialButton(double height, double width, String title) {
  return MaterialButton(
    onPressed: () {},
    height: height * 0.06,
    minWidth: width * 0.90,
    color: k8171CC,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
    child: Text(
      title,
      style: k20w700,
    ),
  );
}

SizedBox buildSizedBox(double height) {
  return SizedBox(
    height: height * 0.1,
  );
}

SizedBox builSizedBox(double width) {
  return SizedBox(
    height: width * 0.1,
  );
}

InkResponse buildInkResponse() {
  return InkResponse(
    onTap: () {},
    child: const CircleAvatar(
      backgroundColor: kF1F4FE,
      radius: 20,
      child: Icon(
        Icons.arrow_back,
        color: kBlack,
        size: 24,
      ),
    ),
  );
}

Container buildContainer(double height, double width) {
  return Container(
    height: height * 0.06,
    width: width * 0.68,
    decoration: BoxDecoration(
      color: kF5F6FA,
      borderRadius: BorderRadius.circular(10),
    ),
    child: TextField(
      decoration: InputDecoration(
        hintText: "search...",
        hintStyle: TextStyle(color: Colors.grey, fontSize: height * 0.0250),
        prefixIcon: Icon(
          Icons.search,
          size: height * 0.04,
          color: Colors.grey,
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
          borderSide: BorderSide.none,
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
          borderSide: BorderSide.none,
        ),
      ),
    ),
  );
}

MaterialButton buildMaterialButton2(double height, double width) {
  return MaterialButton(
    onPressed: () {},
    child: Container(
      height: height * 0.06,
      width: width * 0.13,
      decoration: BoxDecoration(
        color: k8171CC,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Icon(
        Icons.keyboard_voice_outlined,
        color: Colors.white,
        size: height * 0.03,
      ),
    ),
  );
}

TextButton buildTextButton(double height) {
  return TextButton(
    onPressed: () {},
    child: Text(
      "View All",
      style: CommanTextStyle(height),
    ),
  );
}
