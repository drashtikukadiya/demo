import 'package:flutter/material.dart';

import '../../../Constant/textstyle.dart';
import '../../Widget/common_button.dart';

class SellAndBuy extends StatefulWidget {
  const SellAndBuy({Key? key}) : super(key: key);

  @override
  State<SellAndBuy> createState() => _SellAndBuyState();
}

class _SellAndBuyState extends State<SellAndBuy> {
  int selected = 0;
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 200),
            child: Center(
                child: Image.asset(
              "assets/images/online shop.png",
              height: 170,
              width: 170,
            )),
          ),
          const Text(
            "I want to...",
            style: k16w700,
          ),
          buildSizedBox(height * 0.700),
          buildMaterialButton(height, width, "Sell"),
          buildSizedBox(height * 0.400),
          buildMaterialButton(height, width, "Buy"),
          buildSizedBox(height * 0.990),
        ],
      ),
    );
  }
}
