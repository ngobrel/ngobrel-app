library ngobrel_app.chat_list_page;

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'chat-list.dart';
import 'contact-list.dart';

class ChatListPage extends StatefulWidget {
  ChatListPage({Key key, this.title}) : super(key: key) {
    SystemChrome.setEnabledSystemUIOverlays([SystemUiOverlay.top, SystemUiOverlay.bottom]);
  }

  final String title;

  @override
  _ChatListPageState createState() => new _ChatListPageState();
}

class _ChatListPageState extends State<ChatListPage> {


  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.chat),
          title: Text('Ngobrel'),
          actions: <Widget>[
            Icon(Icons.search),
            Icon(Icons.menu)
          ],
          bottom: TabBar(
            tabs: [
              Tab(text: "Chats",),
              Tab(text: "Contacts"),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
            child: Icon(Icons.add),
            onPressed: (){
              Navigator.pushNamed(context, "/contactList/selection");
            }
            ),
        body: TabBarView(
          children: [
            ChatList(),
            ContactList(enableNewGroup: false, selectable: false,),
          ],
        ),
      ),
    );
  }
}