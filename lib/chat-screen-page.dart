library ngobrel_app.chat_screen_page;

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'db.dart';
import 'utils.dart';
import 'settings.dart';

class ChatScreenPage extends StatefulWidget {
  ChatScreenPage({Key key, this.chatWith}) : super(key: key) {
    SystemChrome.setEnabledSystemUIOverlays([SystemUiOverlay.top, SystemUiOverlay.bottom]);
  }

  final Map chatWith;

  @override
  _ChatScreenPageState createState() => new _ChatScreenPageState();
}

class _ChatScreenPageState extends State<ChatScreenPage> {
  Map<String, BuildContext> posMap = Map();

  Widget _getThumbnail(Map entry) {
    if (entry['thumbnail'] == null) {
      return Container();
    }

    return Padding(
      padding: EdgeInsets.all(8.0),
      child: Container(
        padding: EdgeInsets.all(8.0),
        child: Image.memory(entry['thumbnail']),
      ),
    );
  }

  Widget _getQuoteText(Map entry) {
    if (entry['quote_text'] == null) {
      return Container();
    }

    return Padding(
      padding: EdgeInsets.fromLTRB(16.0, 8.0, 0.0, 0.0),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.black12
        ),
        padding: EdgeInsets.all(8.0),
        child: Text(entry['quote_text'], overflow: TextOverflow.ellipsis,),
      ),
    );
  }

  Widget _buildRow(BuildContext context, Map entry, int i) {
    var settings = Settings();
    var anchor = entry['anchor'];
    anchor = '$i';
    if (anchor != null) {
      posMap[anchor] = context;
    }

    return GestureDetector(
        onTap: () {
          print(context
              .findRenderObject()
              .paintBounds
              .size
              .height);
        },
        child: Container(
            decoration: BoxDecoration(
              color: entry['sender_id'] == settings.myId ? Colors.white : Color
                  .fromRGBO(200, 250, 250, 1.0),
              border: Border.all(color: Colors.black54),
              borderRadius: BorderRadius.all(Radius.circular(8.0)),
            ),
            margin: entry['sender_id'] == settings.myId ? EdgeInsets.fromLTRB(
                8.0, 0.0, 32.0, 8.0) : EdgeInsets.fromLTRB(32.0, 0.0, 8.0, 8.0),
            padding: EdgeInsets.all(16.0),
            child:
            Stack(
                children: <Widget>[
                  Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(entry['sender_id'].toString(),
                          style: TextStyle(fontWeight: FontWeight.bold),),
                        _getQuoteText(entry),
                        _getThumbnail(entry),
                        Text(entry['text'] + '\n')
                      ]),
                  Positioned(
                    right: 0.0,
                    bottom: 0.0,
                    child: Text(Utils.dateFormat(entry['timestamp']),
                        style: TextStyle(fontSize: 10.0)),
                  )

                ])
        )
    );
  }

  @override
  Widget build(BuildContext context) {
    var chatWithId = widget.chatWith['chat_id'];
    print(chatWithId);
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.chatWith['title']),
          actions: <Widget>[
            Icon(Icons.search),
            Icon(Icons.menu)
          ],
        ),

        body:
        Column(
            children: <Widget>[
              Expanded(child:
              Container(
                decoration: BoxDecoration(color: Colors.black12),
                child: DatabaseList(
                  reverse: true,
                  query: 'select * from conversations where chat_id=$chatWithId order by timestamp desc',
                  itemBuilder: (BuildContext context, Map entry, int i) {
                    return _buildRow(context, entry, i);
                  },
                ),
              )),
              Container(
                constraints: BoxConstraints.loose(Size.fromHeight(100.0)),
                padding: EdgeInsets.all(8.0),
                child: TextField(
                  decoration: InputDecoration(
                    prefixIcon: GestureDetector(
                        child: Padding(
                          padding: EdgeInsets.fromLTRB(0.0, 0.0, 18.0, 0.0),
                          child: Icon(Icons.insert_emoticon),
                        ),
                      onTap:() {
                          print('olala');
                      },
  
                    ),
                    suffixIcon: Icon(Icons.camera),
                    hintText: 'Type a message',
  
                    contentPadding: EdgeInsets.all(8.0),
                  ),
                  maxLines: null,
                ),
              ),
            ])
    );
  }
}
