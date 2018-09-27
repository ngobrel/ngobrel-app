library ngobrel_app.chat_list_page;

import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'chat-list.dart';
import 'contact-list.dart';
import 'package:contact_picker/contact_picker.dart';
import 'services.dart';
import 'generated/ngobrel.pb.dart';
import 'generated/ngobrel.pbgrpc.dart';


class ChatListPage extends StatefulWidget {
  ChatListPage({Key key, this.title}) : super(key: key) {
    SystemChrome.setEnabledSystemUIOverlays([SystemUiOverlay.top, SystemUiOverlay.bottom]);
  }

  final String title;

  @override
  _ChatListPageState createState() => new _ChatListPageState();
}

class _ChatListPageState extends State<ChatListPage> {
  final ContactPicker _contactPicker = new ContactPicker();
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  Contact contact;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        key: _scaffoldKey,
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
            onPressed: () async {
              contact = await _contactPicker.selectContact();
              print(contact.fullName);
              print(contact.phoneNumber.number);
              var service = NgobrelService();
              service.putContact(contact.phoneNumber.number, contact.fullName).then((value) {
                print(value.status);
                if (value.status == PutContactStatus.ContactIsNotInTheSystem) {
                  _scaffoldKey.currentState.showSnackBar(
                      SnackBar(
                          content: Text("${contact.fullName} is not in Ngobrel yet"),
                          duration: Duration(seconds: 5),
                      )
                  );
                } else {
                  setState(() {

                  });
                }
              }, onError: (e) {
                print(e.toString());
              });

              //Navigator.pushNamed(context, "/contactList/selection");
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