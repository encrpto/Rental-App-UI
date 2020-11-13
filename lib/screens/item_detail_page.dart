import 'package:amrit_app/screens/chat_page.dart';
import 'package:amrit_app/screens/wish_list.dart';
import 'package:amrit_app/size_config.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ItemDetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: jWhite,
          child: Column(
            children: [
              Stack(
                children: [
                  Container(
                    color: jScreen,
                  ),
                  Container(
                    height: sizeV * 40,
                    width: sizeH * 100,
                    child: CachedNetworkImage(
                      imageUrl:
                          "https://i.pinimg.com/564x/9d/4f/58/9d4f58b195cf9f1ac4ec5d231c019588.jpg",
                      imageBuilder: (context, imageProvider) => Container(
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                                color: jBlack,
                                offset: Offset(1, 0),
                                blurRadius: 10)
                          ],
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
                  IconButton(
                      icon: FaIcon(
                        FontAwesomeIcons.chevronLeft,
                        color: jBlack,
                      ),
                      onPressed: () {
                        Navigator.pop(context);
                      }),
                ],
              ),
              Container(
                padding: EdgeInsets.only(top: 10),
                child: Text(
                  "BoAt Airdopes 441 TWS \nEar-Buds\n",
                  style: TextStyle(
                      color: jBlack, fontSize: 30, fontWeight: FontWeight.bold),
                ),
              ),
              Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (BuildContext context) => WishList(),
                        ),
                      );
                    },
                    child: Container(
                      width: 150,
                      height: 50,
                      decoration: BoxDecoration(
                        color: jPrimaryColor,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Center(
                        child: Text(
                          "Add to Wishlist",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              color: jWhite),
                        ),
                      ),
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
                      width: 90,
                      height: 50,
                      decoration: BoxDecoration(
                        color: jPrimaryColor,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Center(
                        child: Text(
                          "Borrow",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              color: jWhite),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
