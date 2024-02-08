import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:grocery/constants/icon_constants.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

import 'finalpage.dart';


class CartPage extends StatefulWidget {
    int quantity =2 ;
    CartPage(
       {super.key,
         // required this.imagePath,
         // required this.price,
         // required this.cal,
         // required this.fruitName,
         required this.quantity});

   @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  onTapIncreamentBtn() {
    widget.quantity = widget.quantity + 1;
    // widget.price = widget.price + temPrice!;
    setState(() {});
  }

  onTapDecreamentBtn() {
    if (widget.quantity >= 2) {
      widget.quantity = widget.quantity - 1;
      // widget.price = widget.price - temPrice!;
      setState(() {});
    }
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.white,
    body:
    SingleChildScrollView(
    scrollDirection: Axis.vertical,
      child: Container(
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(topRight: Radius.circular(10), topLeft: Radius.circular(10))
        ),
        child: Column(

          // crossAxisAlignment: CrossAxisAlignment.end,
          children: [

            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                InkWell(
                  onTap: (){
                    Navigator.pop(context);
                  },
                    child: Icon(Icons.arrow_back_ios, size: 20,)),
                          Icon(Icons.more_vert_outlined)
              ],),
            ),
            Stack(
              children:[
                Container(
                  alignment: Alignment.topCenter,
                width:double.infinity,
                  child: Image.asset(IconConstants.strawberry, fit: BoxFit.cover,height: 230,),
              ),
                Positioned(
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        // padding: EdgeInsets.all(5),
                        alignment: Alignment.center,
                        height: 7,
                        width: 13,
                        // color: Colors.grey,
                        decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(5),
                          border: Border.all(width: 1, color: Colors.grey),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          padding: EdgeInsets.symmetric(vertical: 10),
                          alignment: Alignment.center,
                          height: 7,
                          width: 7,
                          // color: Colors.grey,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            border: Border.all(width: 1, color: Colors.grey),
                          ),
                        ),
                      ),
                      Container(
                        alignment: Alignment.center,
                        height: 7,
                        width: 7,
                        // color: Colors.grey,
                        decoration: BoxDecoration(
                          // color: Colors.grey.withOpacity(0.4),
                          borderRadius: BorderRadius.circular(5),
                          border: Border.all(width: 1, color: Colors.grey),
                        ),
                      ),

                    ],
                  ),
                )
            ],
      ),

            SizedBox(
              height: 5,
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(0.1),
                  borderRadius: BorderRadius.only(topLeft:Radius.circular(50),topRight:Radius.circular(50)),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Center(
                    //   child: Container(
                    //     width: 60,
                    //     height: 2,
                    //     decoration: BoxDecoration(
                    //         color: Colors.grey,
                    //         shape: BoxShape.rectangle
                    //     ),
                    //   ),
                    // ),
                    Divider(
                      thickness: 4,
                      // height: 3,
                      indent: 150,
                      endIndent: 150,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          // padding: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(40),
                            color: Colors.green.withOpacity(0.2),
                          ),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5,),
                              child: Text("\$9.84", style: TextStyle(fontSize: 20, color: Colors.green, fontWeight: FontWeight.bold),),
                            )),

                        CircleAvatar(
                          backgroundColor: Colors.redAccent.withOpacity(0.2),
                          child: SvgPicture.asset(IconConstants.heart,color: Colors.red,height: 25,)
                        )
                      ],
                    ),
                    SizedBox(height: 25,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Strawberry", style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),textAlign: TextAlign.left,),
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 15, vertical: 4),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(width: 1, color: Colors.black)
                          ),
                          child: Row(
                            children: [
                              InkWell(
                                  onTap: (){
                                    onTapDecreamentBtn();
                                  },
                                  child: Icon(Icons.remove)),
                              Text(widget.quantity.toString(),
                                style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),),
                              InkWell(
                                  onTap: (){
                                    onTapIncreamentBtn();
                                  },
                                  child: Icon(Icons.add, size: 22,)),

                            ],
                          ),
                        )
                      ],
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(Icons.star, color: Colors.orange,size: 35,),
                        Text(' 4.2 ',style: TextStyle(fontSize: 18)),
                        Text('[lbs]', style: TextStyle(fontSize: 10, color: Colors.grey)),
                      ],
                    ),

                    Text("Strawberries are rich in vitamin C and other antioxidasts, which help reduce the of series"
                        " health conditions like cancer,diabetes,stroke, and heart disease. it's also an excellent source of:",
                      style: TextStyle(fontSize: 15),),
                  const Text.rich(
                      TextSpan(
                    text: 'Magnesium, Phosphorou...',
                    style: TextStyle(fontSize: 15),
                        children: <InlineSpan>[
                        TextSpan(text: 'Read More',style: TextStyle(fontSize: 16, color: Colors.green), )
                        ]
                  )),
                    SizedBox(height: 10,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CircularPercentIndicator(
                          radius: 40.0,
                          lineWidth: 6.0,
                          animation: true,
                          percent: 0.7,
                          center: Text(
                            "1.6g",
                            style:
                            TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
                          ),
                          footer: Text('Protien',style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w400, color: Colors.grey),),
                          circularStrokeCap: CircularStrokeCap.round,
                          progressColor: Colors.green,
                        ),
                        CircularPercentIndicator(
                          radius: 40.0,
                          lineWidth: 6.0,
                          animation: true,
                          percent: 0.6,
                          center: Text(
                            "11.7g",
                            style:
                            TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
                          ),
                          footer: Text('Carbohydrates',style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w400, color: Colors.grey),),

                          circularStrokeCap: CircularStrokeCap.round,
                          progressColor: Colors.red,
                        ),
                        CircularPercentIndicator(
                          radius: 40.0,
                          lineWidth: 6.0,
                          animation: true,
                          percent: 0.8,
                          center: Text(
                            "53g",
                            style:
                            TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
                          ),
                          footer: Text('Calories',style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w400, color: Colors.grey),),

                          circularStrokeCap: CircularStrokeCap.round,
                          progressColor: Colors.yellow,
                        ),
                      ],
                    ),
                    SizedBox(height: 15,),
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          backgroundColor: Colors.green,
                          foregroundColor: Colors.white
                        ),
                          onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=> const FinalPage()));
                          },
                          child: Padding(
                              padding: EdgeInsets.symmetric(vertical: 15),
                              child: Text("Add to Cart", style: TextStyle(fontSize: 24),))),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    ),
    );
  }
}
