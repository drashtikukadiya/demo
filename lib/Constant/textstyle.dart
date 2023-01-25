import 'package:flutter/cupertino.dart';

import 'color_const.dart';

const TextStyle k16w700 = TextStyle(
  fontWeight: FontWeight.w700,
  fontSize: 23,
);

const TextStyle k20w700 = TextStyle(
  fontWeight: FontWeight.w700,
  fontSize: 20,
  color: kWhite,
);

const TextStyle k22w600 = TextStyle(
  fontWeight: FontWeight.w600,
  fontSize: 20,
  color: kBlack,
);
const TextStyle k18w600 = TextStyle(
  fontWeight: FontWeight.w600,
  fontSize: 18,
  color: kGrey,
);

const TextStyle k26w600 = TextStyle(
  fontWeight: FontWeight.w600,
  fontSize: 26,
  color: kBlack,
);

TextStyle CommanTextStyle(double height) {
  return TextStyle(
    fontSize: height * 0.02,
    fontWeight: FontWeight.w700,
    color: kGrey,
  );
}
