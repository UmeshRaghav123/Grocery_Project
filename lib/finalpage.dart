import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:grocery/constants/icon_constants.dart';
import 'package:grocery/widgets/cart_view_widget.dart';

class FinalPage extends StatefulWidget {
  const FinalPage({super.key});

  @override
  State<FinalPage> createState() => _FinalPageState();
}

class _FinalPageState extends State<FinalPage> {
  @override
  Widget build(BuildContext context) {
    List l1 = [
      {
        'iconPath': IconConstants.strawberry,
        'price': 12.2,
        'quantity': 1,
        'name': 'Strawberry',
        'Cal': '53 Cal'
      },{
        'iconPath': IconConstants.Mango,
        'price': 4.2,
        'quantity': 1,
        'name': 'Mango',
        'Cal': '60 Cal'
      },
      {
        'iconPath': IconConstants.grape,
        'price': 6.2,
        'quantity': 1,
        'name': 'Grapes',
        'Cal': '69 Cal'
      },
      {
        'iconPath': IconConstants.watermelon,
        'price': 3.5,
        'quantity': 1,
        'name': 'Mango',
        'Cal': '91 Cal'
      },


    ];

    return Scaffold(
        backgroundColor: Colors.white.withOpacity(0.9),
        appBar: AppBar(
          title: Text("My Cart" ,style: TextStyle(fontWeight: FontWeight.bold),),
          centerTitle: true,
          backgroundColor: Colors.white.withOpacity(0.9),
          leading: InkWell(
              onTap: (){
                Navigator.pop(context);
              },
              child: Icon(Icons.arrow_back_ios)),
          actions: [Icon(Icons.more_vert_outlined)],
        ),

        body: ListView.builder(
          itemCount: l1.length,
          itemBuilder: (BuildContext context, int index) {
            return CartViewWidget(
              imagePath: l1[index]['iconPath'],
              price: l1[index]['price'],
              fruitName: l1[index]['name'],
              cal: l1[index]['Cal'],
              quantity: l1[index]['quantity'],
            );
          },
        ),
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: MediaQuery.of(context).size.height*0.09,
            padding: EdgeInsets.only(left: 130, top: 19),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.green,

              ),
              child: Text("Checkout", style: TextStyle(fontSize: 27, color: Colors.white, fontWeight: FontWeight.w500),)),
        ),
        );
  }
}
