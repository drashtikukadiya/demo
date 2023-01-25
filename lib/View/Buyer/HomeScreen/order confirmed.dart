import 'package:flutter/material.dart';

import '../../../Constant/color_const.dart';
import '../../Widget/common_button.dart';

class OrderConfirmed extends StatefulWidget {
  const OrderConfirmed({Key? key}) : super(key: key);

  @override
  State<OrderConfirmed> createState() => _OrderConfirmedState();
}

class _OrderConfirmedState extends State<OrderConfirmed> {
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
                padding: const EdgeInsets.only(top: 70),
                child: Center(
                    child: Image.asset(
                  "assets/images/Group 22.png",
                  height: 270,
                  width: 270,
                )),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30),
                child: Column(
                  children: [
                    Center(
                      child: Text(
                        "Order Confirmed!",
                        style: TextStyle(
                          fontSize: height * 0.050,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Center(
                      child: Text(
                        "Your order has been confirmed, we will \n send you "
                        "confirmation email shortly.",
                        style: TextStyle(
                          fontSize: height * 0.026,
                          fontWeight: FontWeight.w400,
                          color: Colors.grey,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 100),
                child: MaterialButton(
                  onPressed: () {},
                  height: 55,
                  minWidth: 350,
                  color: kF1F5FE,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30)),
                  child: Text(
                    "Go To Orders",
                    style: TextStyle(
                      color: Colors.grey.shade700,
                      fontWeight: FontWeight.w700,
                      fontSize: 18,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30, bottom: 50),
                child: buildMaterialButton(height, width, "Login"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
