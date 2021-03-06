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
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 10.0,
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: AnimatedContainer(
              duration: const Duration(milliseconds: 400),
              width: _isFolded ? 40 : 186,
              height: 40,
              decoration: BoxDecoration(
                  color: CusColors.bgColor1,
                  boxShadow: kElevationToShadow[6],
                  borderRadius: BorderRadius.circular(100)),
              child: Row(
                children: [
                  Expanded(
                      child: Container(
                    padding: const EdgeInsets.only(left: 18, bottom: 4),
                    child: _isFolded
                        ? null
                        : TextField(
                            decoration: InputDecoration(
                                contentPadding: EdgeInsets.only(top: 1),
                                border: InputBorder.none,
                                hintText: "Search an Item",
                                hintStyle: TextStyle(color: Colors.white)),
                          ),
                  )),
                  AnimatedContainer(
                    duration: const Duration(milliseconds: 400),
                    child: InkWell(
                        onTap: () {
                          setState(() {
                            _isFolded = !_isFolded;
                          });
                        },
                        child: Padding(
                          padding: EdgeInsets.all(6),
                          child: Icon(
                            Icons.search,
                            color: Colors.white,
                          ),
                        )),
                  )
                ],
              ),
            ),
          )
        ],
        leading: Container(
          width: MediaQuery.of(context).size.width * 0.6,
          padding: const EdgeInsets.only(left: 4.0),
          child: Text(
            "CShop",
            style: TextStyle(color: CusColors.bgColor1, fontSize: 18),
          ),
        ),
      ),
      body: Stack(
        //Bottom navigation
        children: [
          Positioned(
              bottom: MediaQuery.of(context).size.height * 0.01,
              left: MediaQuery.of(context).size.width * 0.04,
              child: Container(
                width: MediaQuery.of(context).size.height * 0.28,
                height: MediaQuery.of(context).size.width * 0.1,
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [CusColors.bgColor1, CusColors.bgColor2],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                    ),
                    borderRadius: BorderRadius.circular(16),
                    boxShadow: kElevationToShadow[4]),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: Icon(
                          Icons.favorite,
                          size: 30,
                          color: Colors.white,
                        )),
                    Container(
                      width: 2,
                      height: 24,
                      color: Colors.white,
                    ),
                    IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.message,
                          color: Colors.white,
                          size: 30,
                        )),
                    Container(
                      width: 2,
                      height: 24,
                      color: Colors.white,
                    ),
                    IconButton(
                      icon: Icon(
                        Icons.shopping_cart,
                        color: Colors.white,
                        size: 30,
                      ),
                      onPressed: () {},
                    ),
                    Container(
                      width: 2,
                      height: 24,
                      color: Colors.white,
                    ),
                    IconButton(
                      icon: Icon(
                        Icons.account_circle,
                        color: Colors.white,
                        size: 30,
                      ),
                      onPressed: () {},
                    ),
                  ],
                ),
              )),
          Positioned(
            top: 40,
            left: 15,
            right: 15,
            child: ListView.builder(
                itemBuilder: (BuildContext context, int index) {
              return Container(
                width: 240,
                height: 60,
                color: Colors.cyan,
                // child: Text(_itemsList[index].name),
              );
            }),
          ),
        ],
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
  ItemsModel("Cookies", "assets/images/cookie.jpg"),
  ItemsModel("Cookies", "assets/images/cookie.jpg"),
];
