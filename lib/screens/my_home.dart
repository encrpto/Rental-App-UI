import 'package:amrit_app/components/custom_drawer.dart';
import 'package:amrit_app/components/models.dart';
import 'package:amrit_app/screens/chat_page.dart';
import 'package:amrit_app/screens/item_detail_page.dart';
import 'package:amrit_app/screens/select_item_page.dart';
import 'package:amrit_app/screens/wish_list.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../size_config.dart';

class MyHome extends StatelessWidget {
  final GlobalKey<ScaffoldState> scaffoldKey = new GlobalKey<ScaffoldState>();
  ItemModel _model = ItemModel.dummyData[0];
  ItemModel _model1 = ItemModel.dummyData[1];
  ItemModel _model2 = ItemModel.dummyData[2];
  ItemModel _model3 = ItemModel.dummyData[3];
  ItemModel _model4 = ItemModel.dummyData[4];
  ItemModel _model5 = ItemModel.dummyData[5];
  ItemModel _model6 = ItemModel.dummyData[6];
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return SafeArea(
      child: Scaffold(
        key: scaffoldKey,
        appBar: AppBar(
          title: Center(
              child: SvgPicture.asset(
            "assets/Icons/logo.svg",
            color: jWhite,
            width: sizeH * 50,
          )),
          elevation: 0,
          leading: IconButton(
            icon: FaIcon(
              FontAwesomeIcons.userCircle,
              color: jWhite,
            ),
            onPressed: () {
              scaffoldKey.currentState.openDrawer();
            },
          ),
          actions: [
            IconButton(
              icon: Icon(
                Icons.favorite,
                color: Colors.white,
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) => WishList(),
                  ),
                );
              },
            ),
          ],
        ),
        drawer: CustomDrawer(),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          backgroundColor: jPrimaryColor,
          child: Icon(
            Icons.camera_alt,
            color: jWhite,
          ),
        ),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Container(
                width: sizeH * 100,
                padding: EdgeInsets.all(15),
                child: Text(
                  "Nearby Items",
                  style: TextStyle(fontWeight: FontWeight.w700),
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    HistoryCard(
                      prodName: _model.prodName,
                      prodUrl: _model.prodUrl,
                      ownName: _model.ownName,
                      ownLoc: _model.ownLoc,
                    ),
                    HistoryCard(
                      prodName: _model1.prodName,
                      prodUrl: _model1.prodUrl,
                      ownName: _model1.ownName,
                      ownLoc: _model1.ownLoc,
                    ),
                    HistoryCard(
                      prodName: _model2.prodName,
                      prodUrl: _model2.prodUrl,
                      ownName: _model2.ownName,
                      ownLoc: _model2.ownLoc,
                    ),HistoryCard(
                      prodName: _model6.prodName,
                      prodUrl: _model6.prodUrl,
                      ownName: _model6.ownName,
                      ownLoc: _model6.ownLoc,
                    ),
                    HistoryCard(
                      prodName: _model3.prodName,
                      prodUrl: _model3.prodUrl,
                      ownName: _model3.ownName,
                      ownLoc: _model3.ownLoc,
                    ),
                  ],
                ),
              ),
              Container(
                width: sizeH * 100,
                padding: EdgeInsets.all(15),
                child: Text(
                  "Featured Items",
                  style: TextStyle(fontWeight: FontWeight.w700),
                ),
              ),
              ItemCard(
                prodName: _model4.prodName,
                prodUrl: _model4.prodUrl,
                ownName: _model4.ownName,
                ownLoc: _model4.ownLoc,
              ),
              ItemCard(
                prodName: _model.prodName,
                prodUrl: _model.prodUrl,
                ownName: _model.ownName,
                ownLoc: _model.ownLoc,
              ),
              ItemCard(
                prodName: _model1.prodName,
                prodUrl: _model1.prodUrl,
                ownName: _model1.ownName,
                ownLoc: _model1.ownLoc,
              ),
              ItemCard(
                prodName: _model2.prodName,
                prodUrl: _model2.prodUrl,
                ownName: _model2.ownName,
                ownLoc: _model2.ownLoc,
              ),
              ItemCard(
                prodName: _model5.prodName,
                prodUrl: _model5.prodUrl,
                ownName: _model5.ownName,
                ownLoc: _model5.ownLoc,
              )
            ],
          ),
        ),
      ),
    );
  }
}

class HistoryCard extends StatelessWidget {
  const HistoryCard({
    Key key,
    this.prodUrl,
    this.prodName,
    this.ownName,
    this.ownLoc,
  }) : super(key: key);
  final prodUrl, prodName, ownName, ownLoc;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0),
      child: Container(
        decoration: BoxDecoration(
          boxShadow: [BoxShadow(color: Colors.grey, blurRadius: 2)],
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
        child: Column(
          children: [
            Container(
              height: sizeV * 14,
              width: sizeH * 35,
              child: CachedNetworkImage(
                imageUrl: prodUrl,
                imageBuilder: (context, imageProvider) => Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10),
                    ),
                    image: DecorationImage(
                      image: imageProvider,
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                placeholder: (context, url) => Center(
                  child: CircularProgressIndicator(),
                ),
                errorWidget: (context, url, error) => Icon(Icons.error),
              ),
            ),
            Container(
              height: sizeV * 12,
              width: sizeH * 35,
              decoration: BoxDecoration(
                color: jWhite,
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(10),
                  bottomLeft: Radius.circular(10),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.only(bottom: 6, left: 4, right: 4),
                    child: Container(
                      height: 30.1,
                      child: Center(
                        child: Text(
                          prodName,
                          style: TextStyle(
                              fontSize: 12, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 4.0, top: 4, bottom: 5),
                    child: Row(
                      children: [
                        FaIcon(
                          FontAwesomeIcons.mapMarkerAlt,
                          size: 13,
                        ),
                        Text(
                          ownLoc,
                          style: TextStyle(fontSize: 12),
                        )
                      ],
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (BuildContext context) => ChatPage(),
                        ),
                      );
                    },
                    child: Container(
                      height: sizeH * 8,
                      decoration: BoxDecoration(
                        color: jPrimaryColor,
                        borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(10),
                          bottomLeft: Radius.circular(10),
                        ),
                      ),
                      child: Center(
                        child: Text(
                          "Borrow",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: jWhite),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class ItemCard extends StatelessWidget {
  const ItemCard({
    Key key,
    this.prodName,
    this.ownName,
    this.prodUrl,
    this.ownLoc,
  }) : super(key: key);
  final prodName, ownName, prodUrl, ownLoc;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0, top: 8, right: 8),
      child: Container(
        decoration: BoxDecoration(
          boxShadow: [BoxShadow(color: Colors.grey, blurRadius: 5)],
          color: jWhite,
          borderRadius: BorderRadius.all(
            Radius.circular(6),
          ),
        ),
        height: sizeV * 16,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              height: sizeV * 12,
              width: sizeV * 12,
              margin: EdgeInsets.only(left: 10, right: 10),
              child: CachedNetworkImage(
                imageUrl: prodUrl,
                imageBuilder: (context, imageProvider) => Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: imageProvider,
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                placeholder: (context, url) => Center(
                  child: CircularProgressIndicator(),
                ),
                errorWidget: (context, url, error) => Icon(Icons.error),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 160,
                  height: 40,
                  padding: EdgeInsets.only(top: 10),
                  child: Text(
                    prodName,
                    style:
                        TextStyle(color: jBlack, fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  height: 30,
                  child: Padding(
                    padding: EdgeInsets.only(top: 10),
                    child: Text(
                      "Available for Rent!",
                      style: TextStyle(
                          color: Colors.black87,
                          fontWeight: FontWeight.w500,
                          fontSize: 14),
                    ),
                  ),
                ),
                Row(
                  children: [
                    FaIcon(
                      FontAwesomeIcons.mapMarkerAlt,
                      size: 13,
                    ),
                    Text(
                      ownLoc,
                      style: TextStyle(fontSize: 12),
                    )
                  ],
                ),
                Container(
                  child: Row(
                    children: [
                      Text(
                        "Owner-",
                        style: TextStyle(
                            fontWeight: FontWeight.w800,
                            color: Colors.grey,
                            fontSize: 12),
                      ),
                      Text(
                        ownName,
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            color: jBlack,
                            fontSize: 12),
                      )
                    ],
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 5),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (BuildContext context) => ChatPage(),
                    ),
                  );
                },
                child: Container(
                  width: 90,
                  height: 35,
                  decoration: BoxDecoration(
                    color: jPrimaryColor,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Center(
                    child: Text(
                      "Borrow",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: jWhite),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
