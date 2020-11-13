import 'package:amrit_app/chatmodel.dart';
import 'package:amrit_app/size_config.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ChatPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "Chat",
            style: TextStyle(color: jWhite),
          ),
          elevation: 0,
          bottom: TabBar(
            indicatorColor: jWhite,
            tabs: [
              Tab(
                child: Text(
                  "Chats",
                  style: TextStyle(fontSize: 15),
                ),
              ),
              Tab(
                child: Text(
                  "Groups",
                  style: TextStyle(fontSize: 15),
                ),
              ),
            ],
          ),
          leading: IconButton(
            icon: FaIcon(
              FontAwesomeIcons.chevronLeft,
              color: jWhite,
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
        body: TabBarView(
          children: [
            ChatScreen(),
            Stack(
              children: [
                Container(
                  height: sizeV * 100,
                  width: sizeH * 100,
                ),
                Positioned(
                  right: 15,
                  bottom: 15,
                  child: FloatingActionButton(
                    backgroundColor: jPrimaryColor,
                    onPressed: () {},
                    child: FaIcon(FontAwesomeIcons.users),
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

class ChatScreen extends StatelessWidget {
  const ChatScreen({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          child: ListView.builder(
            itemCount: ChatModel.dummyData.length,
            itemBuilder: (context, index) {
              ChatModel _model = ChatModel.dummyData[index];
              return Column(
                children: <Widget>[
                  Divider(
                    height: 12.0,
                  ),
                  ListTile(
                    leading: CircleAvatar(
                      radius: 24.0,
                      backgroundImage: NetworkImage(_model.avatarUrl),
                    ),
                    title: Row(
                      children: <Widget>[
                        Container(child: Text(_model.name)),
                        Spacer(),
                        Container(
                          child: Text(
                            _model.datetime,
                            style: TextStyle(fontSize: 12.0, color: jBlack),
                          ),
                        ),
                      ],
                    ),
                    subtitle: Text(_model.message),
                    trailing: Icon(
                      Icons.arrow_forward_ios,
                      size: 14.0,
                    ),
                  ),
                ],
              );
            },
          ),
        ),
        Positioned(
          right: 15,
          bottom: 15,
          child: FloatingActionButton(
            backgroundColor: jPrimaryColor,
            onPressed: () {Navigator.pop(context);},
            child: Center(child: FaIcon(FontAwesomeIcons.shoppingCart)),
          ),
        )
      ],
    );
  }
}
