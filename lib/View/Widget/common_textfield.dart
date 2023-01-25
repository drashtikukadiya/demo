import 'package:flutter/material.dart';

import '../../Constant/color_const.dart';
import '../../Constant/textstyle.dart';

TextField buildTextField() {
  return text();
}

TextField text() {
  return TextField(
    decoration: InputDecoration(
      hintText: 'Password',
      hintStyle: k16w700,
      border: OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
    ),
  );
}

TextField textField() {
  return TextField(
    decoration: InputDecoration(
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(30),
        borderSide: const BorderSide(color: k8171CC, width: 3),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(30),
        borderSide: const BorderSide(color: k8171CC, width: 3),
      ),
    ),
  );
}

TextField textField1() {
  return TextField(
    decoration: InputDecoration(
      fillColor: kF5F6FA,
      filled: true,
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: BorderSide.none,
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: BorderSide.none,
      ),
    ),
  );
}
