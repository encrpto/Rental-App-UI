import 'package:amrit_app/screens/wish_list.dart';
import 'package:amrit_app/size_config.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


class CustomDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: sizeV * 96.8,
              color: jPrimaryColor,
              child: Column(
                children: [
                  Stack(
                    children: [
                      Container(
                        height: sizeV * 21,
                        child: CachedNetworkImage(
                          imageUrl:
                              "https://static.vecteezy.com/system/resources/previews/000/639/029/original/abstract-colorful-pattern-shape-design-background-you-can-use-for-ad-poster-artwork-modern-design-vector.jpg",
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
                          errorWidget: (context, url, error) =>
                              Icon(Icons.error),
                        ),
                      ),
                      Container(
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 80, left: 12),
                              child: Container(
                                width: 90,
                                height: 90,
                                child: CachedNetworkImage(
                                  imageUrl:
                                      "https://instagram.fdel7-1.fna.fbcdn.net/v/t51.2885-15/sh0.08/e35/p750x750/123244401_3326133904170461_6945353329650837165_n.jpg?_nc_ht=instagram.fdel7-1.fna.fbcdn.net&_nc_cat=105&_nc_ohc=cXKRIVZbN9oAX8-YyMc&_nc_tp=24&oh=6229c852c71b39b84be87f79d613ca80&oe=5FD80943",
                                  imageBuilder: (context, imageProvider) =>
                                      Container(
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      image: DecorationImage(
                                        image: imageProvider,
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                  ),
                                  placeholder: (context, url) => Center(
                                    child: CircularProgressIndicator(),
                                  ),
                                  errorWidget: (context, url, error) =>
                                      Icon(Icons.error),
                                ),
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(top: 80.0, left: 5),
                              child: Container(
                                width: sizeH * 39,
                                height: sizeV * 5,
                                padding: EdgeInsets.only(left: 4, top: 2),
                                decoration: BoxDecoration(
                                  color: jBlack,
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                child: Row(
                                  children: [
                                    Column(
                                      children: [
                                        Container(
                                          child: Text(
                                            "Amritpreet Singh",
                                            style: TextStyle(
                                                fontSize: 16,
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(top: 2.0),
                                          child: Container(
                                            child: Text(
                                              "amritpreetsukh@gmail.com",
                                              style: TextStyle(
                                                  fontSize: 10,
                                                  color: Colors.white),
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          top: 20.0, left: 4),
                                      child: Icon(
                                        Icons.arrow_drop_down,
                                        color: jWhite,
                                        size: 16,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Options(
                    icon: FontAwesomeIcons.home,
                    text: "Home",
                  ),
                  Options(
                    icon: FontAwesomeIcons.heart,
                    text: "WishList",
                  ),
                  Options(
                    icon: FontAwesomeIcons.solidQuestionCircle,
                    text: "Help",


                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Options extends StatefulWidget {
  const Options({
    Key key,
    this.text,
    this.icon,

  }) : super(key: key);
  final String text;
  final IconData icon;


  @override
  _OptionsState createState() => _OptionsState();
}

class _OptionsState extends State<Options> {
  Color tabColor = jBlack.withOpacity(0);
  Color inColor = jBlack;
  int number = 2;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          print(number);
          if (number % 2 == 0) {
            number++;
            print(number);
            tabColor = jBlack.withOpacity(0.2);
            inColor = jWhite;

          } else {
            number--;
            tabColor = jBlack.withOpacity(0);
            inColor = jBlack;
          }
        });
      },
      child: Container(
        color: tabColor,
        height: sizeV * 7,
        child: Center(
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 12.0),
                child: Container(
                  width: sizeH * 7,
                  child: FaIcon(
                    widget.icon,
                    size: 24,
                    color: inColor,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: Text(widget.text,
                    style:
                        TextStyle(color: inColor, fontWeight: FontWeight.bold)),
              )
            ],
          ),
        ),
      ),
    );
  }
}
