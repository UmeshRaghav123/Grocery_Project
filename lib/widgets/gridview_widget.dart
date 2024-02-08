import 'package:flutter/material.dart';

import '../addcartPage.dart';

class GridViewWidget extends StatelessWidget {
  final String imgIconPath;
  final String name;
  final String cal;
  final String price;
  // int quantity;
   GridViewWidget({
    super.key,
    required this.imgIconPath,
    required this.cal,
    required this.name,
    required this.price,
    // required this.quantity,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.15),
            blurRadius: 5,
            offset: Offset(0, 3),
            spreadRadius: 1,
          ),
        ],
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              alignment: Alignment.center,
              child: Image.asset(
                imgIconPath,
                height: 75,
              ),
            ),
            Text(
              name,
              style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
            ),
            Text(
              cal,
              style: TextStyle(fontSize: 14, color: Colors.grey),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  flex:28,
                  child: Text.rich(
                      TextSpan(
                          text: price,
                          style: TextStyle(fontSize: 18, color: Colors.green, fontWeight: FontWeight.bold),
                          children: <InlineSpan>[
                            TextSpan(text: '/kg',style: TextStyle(fontSize: 15, color: Colors.grey), )
                          ]
                      )),
                ),
                Expanded(
                  flex: 9,
                  child: Container(
                    decoration:  BoxDecoration(
                        color: Colors.grey.withOpacity(0.5),
                        shape: BoxShape.circle),
                    child: Center(
                      child: IconButton(
                        highlightColor: Colors.green,
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => CartPage(quantity: 1,)));
                        },
                        icon: Icon(
                          Icons.add,
                          color: Colors.white,
                        ),
                        hoverColor: Colors.blue,
                      ),
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
