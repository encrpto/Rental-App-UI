import 'package:amrit_app/components/models.dart';
import 'package:amrit_app/size_config.dart';
import 'package:cached_network_image/cached_network_image.dart';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class WishList extends StatelessWidget {
  ItemModel _model = ItemModel.dummyData[0];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          leading: IconButton(
              icon: FaIcon(
                FontAwesomeIcons.chevronLeft,
                color: jWhite,
              ),
              onPressed: () {
                Navigator.pop(context);
              }),
          title: Text(
            "WishList",
            style: TextStyle(color: jWhite),
          ),
        ),
        body: Container(
          height: sizeV * 100,
          width: sizeH * 100,
          color: jScreen,
          child: ListView.builder(itemCount: 2,
            itemBuilder: (context, index) {
            ItemModel _model =ItemModel.dummyData[index];
              return WishCard(
                prodUrl: _model.prodUrl,
                prodName: _model.prodName,
              );
            },
          ),
        ),
      ),
    );
  }
}

class WishCard extends StatelessWidget {
  const WishCard({
    Key key,
    this.prodName,
    this.prodUrl,
  }) : super(key: key);
  final String prodName, prodUrl;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: jWhite,
        boxShadow: [
          BoxShadow(
            color: Colors.black87,
            offset: Offset(0.1, 0),
          )
        ],
      ),
      height: sizeV * 12,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            height: sizeV * 10,
            width: sizeV * 10,
            margin: EdgeInsets.all(10),
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
                padding: EdgeInsets.only(top: 11),
                child: Text(
                  prodName,
                  style: TextStyle(color: jBlack, fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15.0),
                child: Container(
                  child: Text(
                    "Available for Rent!",
                    style: TextStyle(
                        color: Colors.black87, fontWeight: FontWeight.w700),
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: FlatButton(
                color: jPrimaryColor,
                onPressed: () {},
                child: Text(
                  "Borrow",
                  style: TextStyle(fontWeight: FontWeight.bold, color: jWhite),
                )),
          )
        ],
      ),
    );
  }
}
