library ngobrel_app.contact_list_selection_page;

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'contact-list.dart';

class ContactListSelectionPage extends StatefulWidget {
  ContactListSelectionPage({Key key, this.title}) : super(key: key) {
    SystemChrome.setEnabledSystemUIOverlays([SystemUiOverlay.top, SystemUiOverlay.bottom]);
  }

  final String title;

  @override
  _ContactListSelectionPageState createState() => new _ContactListSelectionPageState();
}

class _ContactListSelectionPageState extends State<ContactListSelectionPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Select a contact'),
        actions: <Widget>[
          Icon(Icons.search),
          Icon(Icons.menu)
        ],
      ),
      body: ContactList(enableNewGroup: true, selectable: false,)
    );
  }
}