library ngobrel_app.chat_list;

import 'package:flutter/material.dart';
import 'chat-screen-page.dart';
import 'db.dart';
import 'utils.dart';

class ChatList extends StatefulWidget {
  ChatList({Key key}) : super(key: key);

  @override
  _ChatListState createState() => new _ChatListState();
}

class _ChatListState extends State<ChatList> {

  Widget _buildChatList() {
    return
      DatabaseList(
        query: 'select * from chat_list order by updated_at desc',
        itemBuilder: (BuildContext context, Map entry, int i) {
          return _buildRow(context, entry, i);
        },
      );
  }

  Widget _buildRow(BuildContext context, Map entry, int index) {
    return GestureDetector(
      child: Column(
        children: [
          ListTile(
            title: Text(entry['title'], style: TextStyle(fontWeight: FontWeight.bold),),
            trailing:
              entry['has_notification'] == 1 ?
                Text(Utils.dateFormat(entry['updated_at'])) :
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: <Widget>[
                  Text(Utils.dateFormat(entry['updated_at'])),
                  Icon(Icons.volume_off)
                ],),
            subtitle: Text(entry['excerpt'], overflow: TextOverflow.ellipsis,),
            leading: Image.memory(entry['avatar']),
          ),

        Divider()]
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
     return _buildChatList();
  }
}