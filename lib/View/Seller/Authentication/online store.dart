// import 'package:flutter/material.dart';
//
// import 'package:flutter/widgets.dart';
//
// import '../../../Constant/textstyle.dart';
// import '../../Widget/common_button.dart';
// import '../../Widget/common_textfield.dart';
//
// class OnlineStore extends StatefulWidget {
//   const OnlineStore({Key? key}) : super(key: key);
//
//   @override
//   State<OnlineStore> createState() => _OnlineStoreState();
// }
//
// class _OnlineStoreState extends State<OnlineStore> {
//   List name = [
//     "Enter Your Name",
//     "Mobile Number",
//     "E-mail Address",
//     "Address",
//     "City",
//     "State",
//   ];
//   @override
//   Widget build(BuildContext context) {
//     final height = MediaQuery.of(context).size.height;
//     final width = MediaQuery.of(context).size.width;
//     return Scaffold(
//       appBar: AppBar(
//         bottom: PreferredSize(
//           preferredSize: ,
//           child: Container(
//             height: 50,
//             width: 400,
//           ),
//         ),
//       ),
//       body: SafeArea(
//         child: Stack(
//           children: [
//             Padding(
//               padding: const EdgeInsets.only(
//                   bottom: 120, left: 20, right: 20, top: 10),
//               child: Column(
//                 children: [
//                   Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Padding(
//                         padding: const EdgeInsets.only(top: 10),
//                         child: buildInkResponse(),
//                       ),
//                       const Padding(
//                         padding: EdgeInsets.only(top: 60),
//                         child: Text(
//                           "Setup your online store.",
//                           style: k26w600,
//                         ),
//                       ),
//                       const Padding(
//                         padding: EdgeInsets.only(top: 20),
//                         child: Text(
//                           "This will take your shop online.",
//                           style: k18w600,
//                         ),
//                       ),
//                     ],
//                   ),
//                   SingleChildScrollView(
//                     scrollDirection: Axis.vertical,
//                     child: Column(
//                         children: List.generate(
//                       6,
//                       (index) => Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           Padding(
//                             padding: const EdgeInsets.only(top: 12),
//                             child: Text(
//                               name[index],
//                               style: k22w600,
//                             ),
//                           ),
//                           Padding(
//                             padding: const EdgeInsets.only(top: 10),
//                             child: textField(),
//                           ),
//                         ],
//                       ),
//                     )),
//                   ),
//                 ],
//               ),
//             ),
//             Positioned(
//                 bottom: 0,
//                 child: Container(
//                   height: 100,
//                   width: 460,
//                   color: Colors.indigo,
//                 ))
//           ],
//         ),
//       ),
//     );
//   }
// }
