library ngobrel_app.group_create_new_page;
import 'dart:async';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'contact-list.dart';
import 'chat-screen-page.dart';

class NewGroup {

  Image avatar;
  String groupName;

  Map<String, int> _list;

  static final NewGroup _singleton = new NewGroup._internal();

  factory NewGroup() {
    return _singleton;
  }

  void reset() {
    _list.clear();
    groupName = '';
    avatar = null;
  }

  NewGroup._internal() {
    _list = Map();
  }

  void add(String s) {
    print('L $list.length');

    _list.putIfAbsent(s, () => 1);
  }

  void remove(String s) {
    _list.remove(s);
  }

  Iterable<String> list() {
    return _list.keys;
  }

  Future save() async {

  }
}

class GroupCreateNewStep1Page extends StatefulWidget {
  NewGroup members;

  GroupCreateNewStep1Page({Key key}) : members = new NewGroup(), super(key: key) {
  }

  @override
  _GroupCreateNewStep1PageState createState() => new _GroupCreateNewStep1PageState();
}

class _GroupCreateNewStep1PageState extends State<GroupCreateNewStep1Page> {

  final _formKey = GlobalKey<FormState>();

  FloatingActionButton doneButton;

  void onSelected(String selection) {
    print('on selected');
    widget.members.add(selection);
  }

  void onRemoved(String selection) {
    print('on removed');
    widget.members.remove(selection);
  }

  Widget _buildPage() {
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          new Padding(
            padding: new EdgeInsets.all(18.0),
            child: Text('Select new members'),
          ),

          Expanded(
              child: ContactList(
                enableNewGroup: false,
                selectable: true,
                multipleSelection: true,
                onSelected: onSelected,
                onRemoved: onRemoved,
              )
          ),
        ],
      )
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Create New Group'),
        ),
        floatingActionButton:  FloatingActionButton(
          onPressed: () {
            Navigator.of(context).pushNamed("/group/new/step2");
          },
          child: Icon(Icons.navigate_next),
        ),
        body: _buildPage(),
    );
  }
}

class GroupCreateNewStep2Page extends StatefulWidget {
  GroupCreateNewStep2Page({Key key}) : super(key: key);

  var members = NewGroup();
  @override
  _GroupCreateNewStep2PageState createState() => new _GroupCreateNewStep2PageState();
}

class _GroupCreateNewStep2PageState extends State<GroupCreateNewStep2Page> {

  final _formKey = GlobalKey<FormState>();

  Future _getImage() async {
    var image = await ImagePicker.pickImage(source: ImageSource.gallery);

    print("olala");
    setState(() {
      widget.members.avatar = Image.file(image);
    });
  }

  String _validateGroupName(String input) {
    if (input.isEmpty) {
      return "Group name can't be empty";
    }
    setState(() {
      widget.members.groupName = input;
    });
    return null;
  }
  
  Widget _buildPage() {
    return Form(
        key: _formKey,
        child: Container(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,

              children: <Widget>[
                new Padding(
                  padding: new EdgeInsets.all(18.0),
                  child:
                    GestureDetector(
                      child: widget.members.avatar == null ? Icon(Icons.photo_library) : widget.members.avatar,
                      onTap: _getImage,
                    ),
                ),

                Expanded(
                  child: TextFormField(
                    decoration: const InputDecoration(
                        border: UnderlineInputBorder(),
                        filled: true,
                        hintText: 'Group Name'
                    ),
                    validator: _validateGroupName,
                    initialValue: widget.members.groupName,
                  ),
                ),
              ],
            ),
            Text('Selected new members'),
            Expanded(
                child: ContactList(
                  enableNewGroup: false,
                  selectable: false,
                  multipleSelection: false,
                  list: widget.members.list(),
                )
            ),
          ],
        )
    ));
  }

  @override
  Widget build(BuildContext context) {
    final key = new GlobalKey<ScaffoldState>();
    return Scaffold(
      key: key,
      appBar: AppBar(
        title: Text('Create New Group'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          if (widget.members.list().length == 0) {
            key.currentState.showSnackBar(
              new SnackBar(
                content: new Text("Please add more members"),
                action: new SnackBarAction(
                  label: "OK",
                  onPressed: () => key.currentState.hideCurrentSnackBar(),
                ),
              ),
            );
          } else if (_formKey.currentState.validate()) {
            Map groupDescription = await widget.members.save();
            Navigator.pushNamedAndRemoveUntil(context, "/chatList", (Route<dynamic> route) => false);
            Navigator.push(context, MaterialPageRoute(builder: (context) => ChatScreenPage(chatWith: groupDescription)));
          }
        },
        child: Icon(Icons.navigate_next),
      ),
      body: _buildPage(),
    );
  }
}