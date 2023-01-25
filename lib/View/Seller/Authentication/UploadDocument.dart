import 'package:flutter/material.dart';

import '../../../Constant/color_const.dart';
import '../../../Constant/textstyle.dart';
import '../../Widget/common_button.dart';

class UploadDocument extends StatefulWidget {
  const UploadDocument({Key? key}) : super(key: key);

  @override
  State<UploadDocument> createState() => _UploadDocumentState();
}

class _UploadDocumentState extends State<UploadDocument> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 25, top: 60),
            child: buildInkResponse(),
          ),
          Center(
              child: Image.asset(
            "assets/images/image 11 (1).png",
            height: 300,
            width: 300,
          )),
          Padding(
            padding: const EdgeInsets.only(top: 30, left: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  "Welcome to Myshop",
                  style: k22w600,
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Upload your handicaped document.",
                  style: k18w600,
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 40, left: 30),
            child: Card(
              elevation: 30,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
              child: Container(
                height: height * 0.20,
                width: width * 0.83,
                decoration: BoxDecoration(
                  color: kF1F4FE,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 25, right: 25),
                      child: MaterialButton(
                        onPressed: () {
                          setState(() {});
                        },
                        height: height * 0.06,
                        minWidth: width * 0.80,
                        color: k8171CC,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Icon(
                              Icons.upload_file,
                              color: kWhite,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              "Upload",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                                color: kWhite,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
              padding: const EdgeInsets.only(top: 50, left: 30, right: 30),
              child: buildMaterialButton(height, width, "Login")),
        ],
      ),
    );
  }
}
