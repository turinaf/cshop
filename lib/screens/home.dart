import 'package:cshop/classes/items.dart';
import 'package:cshop/custom/colors.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool _isFolded = true;
  List<ItemsModel> itemsList = [];
  @override
  void initState() {
    super.initState();
    itemsList = List.from(_itemsList);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
                width: MediaQuery.of(context).size.width,
                height: 60,
                decoration: BoxDecoration(
                    color: Colors.white, boxShadow: kElevationToShadow[6]),
                child: Padding(
                  padding: EdgeInsets.only(left: 8.0, right: 8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "CShop",
                        style:
                            TextStyle(color: CusColors.bgColor1, fontSize: 20),
                      ),
                      Container(
                        width: 50,
                        height: 50,
                        child: Icon(
                          Icons.search,
                          color: CusColors.bgColor1,
                        ),
                        decoration: BoxDecoration(
                            color: CusColors.bgColor1.withOpacity(0.2),
                            borderRadius:
                                BorderRadius.all(Radius.circular(100))),
                      ),
                    ],
                  ),
                )),
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.1,
              child: Stack(
                // ignore: deprecated_member_use
                overflow: Overflow.visible,

                children: [
                  Positioned(
                    top: 10,
                    left: 10,
                    child: Row(
                      children: [
                        Text(
                          "Categories",
                          style: TextStyle(fontSize: 16),
                        ),
                        InkWell(
                          onTap: () {},
                          child: Icon(Icons.keyboard_arrow_down),
                        )
                      ],
                    ),
                  ),
                  Positioned(
                      top: 40,
                      left: 10,
                      child: Container(
                        width: 368,
                        height: MediaQuery.of(context).size.height,
                        child: ListView.builder(
                            scrollDirection: Axis.vertical,
                            itemCount: _itemsList.length,
                            itemBuilder: (BuildContext context, int index) {
                              return Container(
                                margin: EdgeInsets.only(top: 8),
                                width: 240,
                                height: 165,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage(
                                            _itemsList[index].imagePath),
                                        fit: BoxFit.cover),
                                    borderRadius: BorderRadius.circular(12),
                                    boxShadow: kElevationToShadow[6]),
                                child: Stack(
                                  children: [
                                    Positioned(
                                      top: 10,
                                      left: 10,
                                      child: Text(
                                        _itemsList[index].name,
                                        style: TextStyle(fontSize: 16),
                                      ),
                                    ),
                                    Positioned(
                                      bottom: 10,
                                      right: 10,
                                      child: Container(
                                        width: 50,
                                        height: 50,
                                        child: IconButton(
                                          icon: Icon(Icons.add_shopping_cart),
                                          onPressed: () {},
                                          iconSize: 30,
                                        ),
                                        decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius:
                                                BorderRadius.circular(100)),
                                      ),
                                    )
                                  ],
                                ),
                              );
                            }),
                      )),
                  Positioned(
                    top: 614,
                    left: 15,
                    child: Container(
                      width: 200,
                      height: 48,
                      decoration: BoxDecoration(
                          gradient: LinearGradient(
                              colors: [CusColors.bgColor1, Colors.black],
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter),
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: kElevationToShadow[6]),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.favorite),
                            color: Colors.white,
                            iconSize: 30,
                          ),
                          Container(
                            width: 2,
                            height: 25,
                            color: Colors.white,
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.message),
                            color: Colors.white,
                            iconSize: 30,
                          ),
                          Container(
                            width: 2,
                            height: 25,
                            color: Colors.white,
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.shopping_cart),
                            color: Colors.white,
                            iconSize: 30,
                          ),
                          Container(
                            width: 2,
                            height: 25,
                            color: Colors.white,
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.account_circle),
                            color: Colors.white,
                            iconSize: 30,
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ItemsModel {
  String name;
  String imagePath;
  ItemsModel(this.name, this.imagePath);
}

List _itemsList = [
  ItemsModel("Cookie one", "assets/images/cookie.jpg"),
  ItemsModel("Cookie two", "assets/images/cookie.jpg"),
  ItemsModel("Cookie three", "assets/images/cookie.jpg"),
  ItemsModel("Cookie three", "assets/images/cookie.jpg"),
];
