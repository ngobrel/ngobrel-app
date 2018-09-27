library ngobrel_app.contact_list;
import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'db.dart';
import 'services.dart';
import 'utils.dart';
import 'chat-screen-page.dart';

class ContactListStaticItem extends StatefulWidget {
  ContactListStaticItem({String this.title, this.icon, this.list});

  final String title;
  final Uint8List icon;
  final Iterable<String> list;

  @override
  _ContactListStaticItemState createState() => new _ContactListStaticItemState();
}

class _ContactListStaticItemState extends State<ContactListStaticItem> {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Utils.getAvatar(null, widget.title),
      title: Text(widget.title)
    );
  }
}

class ContactListItem extends StatefulWidget {
  ContactListItem({String this.title, this.icon, this.onSelected, this.onRemoved});

  final String title;
  final Widget icon;
  final Function(String) onSelected;
  final Function(String) onRemoved;

  @override
  _ContactListItemState createState() => new _ContactListItemState();
}

class _ContactListItemState extends State<ContactListItem> {
  bool selected = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
        onTap: () {
        setState(() {
          if (selected) {
            selected = false;
            if (widget.onRemoved != null) {
              widget.onRemoved(widget.title);
            }
          } else {
            selected = true;
            if (widget.onSelected != null) {
              widget.onSelected(widget.title);
            }
          }
        });
      },

      child: Container(
          padding: const EdgeInsets.all(8.0),
          child: Row(
              children: [
                Expanded(
                    child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Utils.getAvatar(null, widget.title),
                          Container(
                            padding: const EdgeInsets.fromLTRB(20.0, 0.0, 0.0, 0.0),
                            child: Text(widget.title),
                          ),
                        ],
                      ),
                    ),
                Checkbox(value: selected, onChanged: null,)
              ]
          )
      )
    );
  }
}

class ContactList extends StatefulWidget {
  ContactList({Key key, bool multipleSelection, bool enableNewGroup, bool selectable, this.onSelected, this.onRemoved, this.list}) :
        _multipleSelection = multipleSelection,
        _enableNewGroup = enableNewGroup,
        _selectable = selectable,
        super(key: key);

  final bool _selectable;
  final bool _multipleSelection;
  final bool _enableNewGroup;
  final Function(String) onSelected;
  final Function(String) onRemoved;
  final Iterable<String> list;

  @override
  _ContactListState createState() => new _ContactListState();
}

class _ContactListState extends State<ContactList> {

  _ContactListState() {
    _init();
  }
  void _init() async {
    NgobrelService service = NgobrelService();
    await service.getContacts();
    setState(() {

    });
  }

  void _createNewGroup() {
    Navigator.pushNamed(context, '/group/new/step1');
  }

  /*
  Widget _buildContactPredefinedList() {
    print(widget.list.length);
    return ListView.builder(
        itemCount: widget.list.length * 2,
        itemBuilder: (context, i) {
          if (i.isOdd) return Divider();
          final index = i ~/ 2;
          return _buildRow(widget.list.elementAt(index));
        });
  }*/

  Widget _buildContactList()  {
    return
      DatabaseList(
        query: 'select * from contacts order by name desc',
        itemBuilder: (BuildContext context, Map entry, int i) {
          return _buildRow(context, entry, i);
        },
      );
  }

  Widget _buildTopRow(String text, Function f) {
    return ListTile(
      leading: Icon(Icons.add),
      title: Text(
          text
      ),
      onTap: f,
    );
  }


  Widget _buildRow(BuildContext context, Map entry, int i) {
    var img = Icon(Icons.add);

    print(entry);
    Widget item;
    if (!widget._selectable) {
      item = ContactListStaticItem(
          title: entry['name'],
          icon: null,);
    } else {
      item = ContactListItem(
        title: entry['name'],
        icon: null,
        onRemoved: widget.onRemoved,
        onSelected: widget.onSelected,
      );
    }
    return GestureDetector(
      child: Column(
        children: <Widget>[

          item,
          Divider()
          ]
      ),
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => ChatScreenPage(chatWith: entry)),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    //if (widget.list != null) {
    //  return _buildContactPredefinedList();
    //} else {
      return _buildContactList();
    //}
  }
}