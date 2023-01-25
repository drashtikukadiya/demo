import 'package:flutter/material.dart';

import '../../../Constant/color_const.dart';
import '../../../Constant/textstyle.dart';
import '../../Widget/common_button.dart';

class BuyerHomeScreen extends StatefulWidget {
  const BuyerHomeScreen({Key? key}) : super(key: key);

  @override
  State<BuyerHomeScreen> createState() => _BuyerHomeScreenState();
}

class _BuyerHomeScreenState extends State<BuyerHomeScreen> {
  List icon = [
    Icons.dashboard,
    Icons.shopping_cart_sharp,
    Icons.local_shipping_outlined,
    Icons.production_quantity_limits,
  ];
  List sel = [
    "Vietnam Round Basket",
    "Gujarati woven Shawl",
    "Handmade pearl earrings",
    "handmade soaps",
  ];
  List number = [
    "\$99",
    "\$80",
    "\$99",
    "\$80",
  ];
  List images = [
    "assets/images/Rectangle 1819 (1).png",
    "assets/images/Rectangle 1821 (3).png",
    "assets/images/Rectangle 569 (2).png",
    "assets/images/Rectangle 1822 (2).png",
  ];

  List image = [
    "assets/images/addidas-removebg-preview.png",
    "assets/images/nike_1-removebg-preview.png",
    "assets/images/fila-removebg-preview.png",
    "assets/images/puma-removebg-preview.png",
  ];
  List names = ["Addidas", "Nike", "Fila", "Puma"];

  List name = ["Home", "Wishlist", "Shipping", "Products"];
  int select = 0;
  int selected = 0;
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      bottomNavigationBar: Container(
        height: height * 0.09,
        width: double.infinity,
        decoration: const BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              spreadRadius: 3,
              blurRadius: 7,
              color: Colors.grey,
              offset: Offset(1, 4),
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.only(top: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: List.generate(
              4,
              (index) => GestureDetector(
                onTap: () {
                  setState(() {
                    select = index;
                  });
                },
                child: Column(
                  children: [
                    select == index
                        ? const SizedBox()
                        : Padding(
                            padding: const EdgeInsets.symmetric(vertical: 16),
                            child: Icon(
                              icon[index],
                              color: select == index
                                  ? Colors.indigo.shade400
                                  : Colors.grey,
                            ),
                          ),
                    select == index
                        ? Padding(
                            padding: const EdgeInsets.symmetric(vertical: 16),
                            child: Text(
                              name[index],
                              style: TextStyle(
                                  color: Colors.deepPurple.shade400,
                                  fontWeight: FontWeight.bold),
                            ),
                          )
                        : const SizedBox()
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                buildSizedBox(height * 0.0700),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkResponse(
                      onTap: () {},
                      child: const CircleAvatar(
                        backgroundColor: kF1F4FE,
                        radius: 20,
                        child: Icon(
                          Icons.tune,
                          color: kBlack,
                          size: 24,
                        ),
                      ),
                    ),
                    InkResponse(
                      onTap: () {},
                      child: const CircleAvatar(
                        backgroundColor: kF1F4FE,
                        radius: 20,
                        child: Icon(
                          Icons.shopping_bag_outlined,
                          color: kBlack,
                          size: 24,
                        ),
                      ),
                    ),
                  ],
                ),
                buildSizedBox(height * 0.0999),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Hemendra",
                        style: TextStyle(
                          fontSize: height * 0.04,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Text(
                        "Welcome to Laza.",
                        style: TextStyle(
                          fontSize: height * 0.02,
                          fontWeight: FontWeight.w500,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ),
                buildSizedBox(height * 0.0999),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    buildContainer(height, width),
                    builSizedBox(width * 0.005),
                    buildMaterialButton2(height, width)
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Choose Brand",
                      style: TextStyle(
                        fontSize: height * 0.0270,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    buildTextButton(height)
                  ],
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                      children: List.generate(
                    4,
                    (index) => GestureDetector(
                      onTap: () {
                        setState(() {
                          selected = index;
                        });
                      },
                      child: Container(
                        margin:
                            const EdgeInsets.only(left: 10, top: 5, right: 6),
                        decoration: BoxDecoration(
                          color: Colors.indigo.shade50,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                height: height * 0.0540,
                                width: width * 0.12,
                                decoration: BoxDecoration(
                                  color: kWhite,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Center(
                                  child: Image.asset(
                                    image[index],
                                    height: height * 0.03,
                                  ),
                                ),
                              ),
                              builSizedBox(width * 0.03),
                              Text(
                                names[index],
                                style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: height * 0.0253,
                                  color: kBlack,
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  )),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "New Arraival",
                      style: TextStyle(
                        fontSize: height * 0.0270,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    buildTextButton(height)
                  ],
                ),
                SizedBox(
                  height: 426,
                  width: 390,
                  child: GridView.builder(
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      mainAxisSpacing: 13,
                      crossAxisCount: 2,
                      childAspectRatio: 2 / 2.5,
                      mainAxisExtent: 256,
                      crossAxisSpacing: 10,
                    ),
                    itemCount: 4,
                    itemBuilder: (BuildContext context, int index) {
                      return Stack(
                        clipBehavior: Clip.none,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                height: 220,
                                width: 390,
                                decoration: BoxDecoration(
                                  color: Colors.grey,
                                  borderRadius: BorderRadius.circular(20),
                                  image: DecorationImage(
                                      image: AssetImage(images[index]),
                                      fit: BoxFit.fill),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 5),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      sel[index],
                                      style: const TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w500),
                                    ),
                                    Text(
                                      number[index],
                                      style: const TextStyle(
                                          fontSize: 17,
                                          fontWeight: FontWeight.w700),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          const Positioned(
                            left: 130,
                            top: 0,
                            child: FavoriteItem(),
                          ),
                        ],
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class FavoriteItem extends StatefulWidget {
  const FavoriteItem({Key? key}) : super(key: key);

  @override
  State<FavoriteItem> createState() => _FavoriteItemState();
}

class _FavoriteItemState extends State<FavoriteItem> {
  bool favorite = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        IconButton(
          onPressed: () {
            setState(() {
              favorite = !favorite;
            });
          },
          icon: Icon(
            favorite == true ? Icons.favorite : Icons.favorite_border_rounded,
            color: favorite == true ? Colors.red : Colors.white,
          ),
        ),
      ],
    );
  }
}
