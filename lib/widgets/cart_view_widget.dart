import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../constants/icon_constants.dart';

class CartViewWidget extends StatefulWidget {
  final String imagePath;
  double price;
  final String fruitName;
  final String cal;
  int quantity;

  CartViewWidget(
      {super.key,
      required this.imagePath,
      required this.price,
      required this.cal,
      required this.fruitName,
      required this.quantity});

  @override
  State<CartViewWidget> createState() => _CartViewWidgetState();
}

class _CartViewWidgetState extends State<CartViewWidget> {
  double? temPrice;
  onTapIncreamentBtn() {
    widget.quantity = widget.quantity + 1;
    widget.price = widget.price + temPrice!;
    setState(() {});
  }

  onTapDecreamentBtn() {
    if (widget.quantity >= 2) {
      widget.quantity = widget.quantity - 1;
      widget.price = widget.price - temPrice!;
      setState(() {});
    }
  }

  @override
  void initState() {
    temPrice = widget.price;
    // super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 17, vertical: 5),
            child: Container(
                padding: EdgeInsets.symmetric(vertical: 20),
                height: 140,
                width: double.maxFinite,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey.withOpacity(0.15),
                        blurRadius: 5,
                        offset: Offset(0, 3),
                        spreadRadius: 3)
                  ],
                ),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 8, vertical: 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      //First Column
                      Expanded(
                        flex: 1,
                        child: Column(
                          children: [
                            Image.asset(
                              widget.imagePath,
                              width: 100,
                            ),
                          ],
                        ),
                      ),

                      //Second Column
                      Expanded(
                        flex: 3,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              // crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      widget.fruitName,
                                      style: TextStyle(
                                          fontSize: 21,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(widget.cal)
                                  ],
                                ),
                                Column(
                                  children: [
                                    Icon(Icons.check_box, color: Colors.grey),
                                  ],
                                )
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "\$${widget.price.toStringAsFixed(1)}",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.green,
                                          fontSize: 20),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    InkWell(
                                        onTap: () {
                                          onTapDecreamentBtn();
                                        },
                                        child: Container(
                                          padding: EdgeInsets.all(1),
                                          decoration: BoxDecoration(
                                            borderRadius: 
                                              BorderRadius.circular(8)
                                          ),
                                          child: Image.asset(IconConstants.minus1,height: 24,color: Colors.green,),

                                        )
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 7),
                                      child: Text("${widget.quantity}kg"),
                                    ),
                                    InkWell(
                                      onTap: () {
                                        onTapIncreamentBtn();
                                      },
                                      child: Image.asset(IconConstants.plus1, color: Colors.green,height: 27,),
                                      // SvgPicture.asset(
                                      //   IconConstants.plus,
                                      //   height: 17,
                                      //   color: Colors.green,
                                      // ),
                                    )
                                  ],
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                )),
          ),
        ),
      ],
    );
  }
}
