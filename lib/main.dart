import 'package:flutter/material.dart';
import 'package:grocery/addcartPage.dart';
import 'package:grocery/constants/icon_constants.dart';
import 'package:grocery/widgets/gridview_widget.dart';

void main() {
  runApp(MaterialApp(debugShowCheckedModeBanner: false, home: MyApp()));
}

class MyApp extends StatefulWidget {
   MyApp({super.key});
// int amount = 2;
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> with SingleTickerProviderStateMixin {
  late final TabController _tabController =
      TabController(length: 4, vsync: this);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          "Grocery",
          style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 31, color: Colors.green),
        ),
        backgroundColor: Colors.white54,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: CircleAvatar(
              radius: 20,
              child: Image.asset(
                'assets/images/pho.jpeg',
                width: 20,
              ),
            ),
          )
        ],
      ),
      body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
          child: Column(children: [
            TextField(
              readOnly: true,
              decoration: InputDecoration(
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                  hintText: 'What would you like buy?',
                  hintStyle: TextStyle(fontSize: 14, color: Colors.grey),
                  prefixIcon: Icon(Icons.search),
                  suffixIcon: Icon(Icons.pan_tool_alt),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.blueGrey, width: 2),
                      borderRadius: BorderRadius.circular(15)),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide())),
            ),
            SizedBox(
              height: 20,
            ),
            ClipRRect(  borderRadius: const BorderRadius.all(Radius.circular(20)),
                child: Image.asset('assets/images/grocbest.jpg',fit: BoxFit.cover,height: 200,)),
            SizedBox(
              height: 20,
            ),
            Container(
              width: double.maxFinite,
              alignment: Alignment.topLeft,
              // width: MediaQuery.of(context).size.width * 1,
              // height: size.height * 0.05,
              // width: size.width,
              child: Align(
                alignment: Alignment.centerLeft,
                child: TabBar(
                  tabAlignment: TabAlignment.start,
                  labelPadding: EdgeInsets.only(left: 10, right: 10),
                  isScrollable: true,
                  // tabAlignment: T,
                  indicatorWeight: 5.0,
                  controller: _tabController,
                  labelColor: Colors.green,
                  labelStyle: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                  unselectedLabelColor: Colors.grey,
                  indicatorColor: Colors.green,
                  tabs: [
                    Tab(
                      text: 'Fruits',
                      height: 25,
                    ),
                    Tab(
                      text: 'Vegetable',
                      height: 25,
                    ),
                    Tab(
                      text: 'Eggs & Meat',
                      height: 25,
                    ),
                    Tab(
                      text: 'Rice & Oils',
                      height: 25,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Expanded(
              child: TabBarView(
                  controller: _tabController,
                  children: [
                GridView(
                  // shrinkWrap: true,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 15,
                      mainAxisSpacing: 20,
                      childAspectRatio: 0.95),
                  scrollDirection: Axis.vertical,
                  children:  [
                    GridViewWidget(
                      cal: '53 Cal',
                      name: 'Strawberry',
                      price: '\$9.87',
                      imgIconPath: IconConstants.strawberry,
                    ),
                    GridViewWidget(
                      cal: '60 Cal',
                      name: 'Mango',
                      price: '\$6.45',
                      imgIconPath: IconConstants.Mango,
                    ), GridViewWidget(
                      cal: '69 Cal',
                      name: 'Grapes',
                      price: '\$7.87',
                      imgIconPath: IconConstants.grape,
                    ),
                    GridViewWidget(
                      cal: '91 Cal',
                      name: 'WaterMelon',
                      price: '\$4.07',
                      imgIconPath: IconConstants.watermelon,
                    ),
                    GridViewWidget(
                      cal: '53 Cal',
                      name: 'WaterMelon',
                      price: '\$4.07',
                      imgIconPath: IconConstants.watermelon,
                    ),
                    GridViewWidget(
                      cal: '53 Cal',
                      name: 'WaterMelon',
                      price: '\$4.07',
                      imgIconPath: IconConstants.watermelon,
                    ),
                    GridViewWidget(
                      cal: '53 Cal',
                      name: 'WaterMelon',
                      price: '\$4.07',
                      imgIconPath: IconConstants.watermelon,
                    ),
                    GridViewWidget(
                      cal: '53 Cal',
                      name: 'WaterMelon',
                      price: '\$4.07',
                      imgIconPath: IconConstants.watermelon,
                    ),
                  ],
                ),
              
                Text("Vegetables is here"),
                Text("Eggs  is here"),
                Text("Rice and Oil is here"),
              ]),
            )
          ])),
    );
  }
}


