
import 'package:flutter/material.dart';
import 'registration.dart';
import 'chat-list-page.dart';
import 'contact-list-selection-page.dart';
import 'group-create-new-page.dart';
import 'db.dart';

void main() async {
  Db db = Db();
  db.init();
  runApp(new NgobrelApp());
}

class NgobrelApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Ngobrel',
      home: Scaffold(

        body: RegistrationPage(),
      ),
      routes: <String, WidgetBuilder> {
        '/chatList': (BuildContext context) => new ChatListPage(),
        '/registration' : (BuildContext context) => new RegistrationPage(),
        '/contactList/selection': (BuildContext context) => new ContactListSelectionPage(),
        '/group/new/step1': (BuildContext context) => new GroupCreateNewStep1Page(),
        '/group/new/step2': (BuildContext context) => new GroupCreateNewStep2Page(),

      }
    );
  }
}

