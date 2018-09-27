library ngobrel_app.db;

import 'dart:async';
import 'package:path/path.dart';
import 'package:flutter/material.dart';
import 'package:sqflite/sqflite.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'generated/ngobrel.pb.dart';
import 'generated/ngobrel.pbgrpc.dart';
import 'settings.dart';

class Db {

  static final Db _singleton = new Db._internal();
  Database database;

  factory Db() {
    return _singleton;
  }

  Db._internal() {
  }

  void init() async {
    var databasesPath = await getDatabasesPath();
    String path = join(databasesPath, "demo.db");

    await deleteDatabase(path);

    database = await openDatabase(path, version: 1,
        onCreate: (Database db, int version) async {
          await db.execute(
              "CREATE TABLE chat_list (chat_id TEXT PRIMARY KEY, updated_at INTEGER, excerpt TEXT, title TEXT, avatar BLOB, notification INTEGER)");

          await db.execute(
              "CREATE TABLE conversations (chat_id TEXT, message_id INTEGER, sender_id TEXT, sender_device_id TEXT, timestamp INTEGER, text TEXT, thumbnail BLOB, quote_text TEXT, quote_thumbnail BLOB, message_type INTEGER, state INTEGER, reception_state INTEGER)");

          await db.execute(
              """CREATE TABLE contacts (
              user_id TEXT not null,
              chat_id TEXT not null,
              chat_type SMALLINT not null,
              name TEXT,
              updated_at TIMESTAMP not null,
              notification INT not null,
              PRIMARY KEY (user_id, chat_id)
          );""");
          await db.execute("create index conversations_chat_id on conversations(chat_id)");
          await db.execute("create unique index conversations_chat_id_message_id on conversations(chat_id, message_id)");
        });
  }

  void populateData(String id) async {
    await database.execute("insert into chat_list (chat_id, updated_at, excerpt, title, notification) values ('10000000-0000-0000-0000-000000000001', 1, 'Omama olala okaka orama osama obama okama olama', 'Omama', 1)");
    await database.execute("insert into chat_list (chat_id, updated_at, excerpt, title, notification) values ('10000000-0000-1000-0000-000000000002', 1535293181413, 'Orama Okaka Olala Osasa Oraya', 'Urara Uta Usalala', 0)");
    await database.execute("insert into chat_list (chat_id, updated_at, excerpt, title, notification) values ('10000000-0000-0000-0000-000000000002', 1535093181413, '📷 Photo', 'Popa Piopola', 1)");

    var img = await rootBundle.load("assets/picsum1.jpg");
    await database.update("chat_list", {"avatar": img.buffer.asUint8List()}, where: "chat_id = '10000000-0000-0000-0000-000000000001'");
    img = await rootBundle.load("assets/picsum2.jpg");
    await database.update("chat_list", {"avatar": img.buffer.asUint8List()}, where: "chat_id = '10000000-0000-1000-0000-000000000002'");
    img = await rootBundle.load("assets/picsum3.jpg");
    //await database.update("chat_list", {"avatar": img.buffer.asUint8List()}, where: "chat_id = '10000000-0000-0000-0000-000000000002'");

    await database.execute("insert into conversations (chat_id, message_id, sender_id, sender_device_id, timestamp, text, message_type, state, reception_state) values ('10000000-0000-0000-0000-000000000002', 1, $id, '10000000-1000-0000-0000-000000000001', 1535293181413, 'Hoi', 0, 0, 1)");
    await database.execute("insert into conversations (chat_id, message_id, sender_id, sender_device_id, timestamp, text, message_type, state, reception_state) values ('10000000-0000-0000-0000-000000000002', 2, $id, '10000000-1000-0000-0000-000000000001', 1535293281413, 'Hoi ya benar', 0, 0, 1)");
    await database.execute("insert into conversations (chat_id, message_id, sender_id, sender_device_id, timestamp, text, message_type, state, reception_state) values ('10000000-0000-0000-0000-000000000002', 3, '10000000-0000-0000-0000-000000000002', '10000000-1000-0000-0000-000000000002', 1535293381413, 'One of the most prominent changes in the Lollipop release is a redesigned user interface built around a design language known as Material Design, which was made to retain a paper-like feel to the interface. Other changes include improvements to the notifications, which can be accessed from the lockscreen and displayed within applications as top-of-the-screen banners. Google also made internal changes to the platform, with the Android Runtime (ART) officially replacing Dalvik for improved application performance, and with changes intended to improve and optimize battery usage.', 0, 0, 1)");
    await database.execute("insert into conversations (chat_id, message_id, sender_id, sender_device_id, timestamp, text, message_type, state, reception_state) values ('10000000-0000-0000-0000-000000000002', 4, $id, '10000000-0000-0000-0000-000000000001', 1535293481413, 'Android 5.0 introduces a refreshed notification system. Individual notifications are now displayed on cards to adhere to the material design language, and batches of notifications can be grouped by the app that produced them. Notifications are now displayed on the lock screen as cards, and heads up notifications can also be displayed as large banners across the top of the screen, along with their respective action buttons', 0, 0, 1)");
    await database.execute("insert into conversations (chat_id, message_id, sender_id, sender_device_id, timestamp, text, message_type, state, reception_state) values ('10000000-0000-0000-0000-000000000002', 5, '10000000-0000-0000-0000-000000000002', '10000000-1000-0000-0000-000000000002', 1535293501413, 'The release was internally codenamed Lemon Meringue Pie', 0, 0, 1)");
    await database.execute("insert into conversations (chat_id, message_id, sender_id, sender_device_id, timestamp, text, message_type, state, reception_state) values ('10000000-0000-0000-0000-000000000002', 6, '10000000-0000-0000-0000-000000000002', '10000000-1000-0000-0000-000000000002', 1535293511413, 'OK', 0, 0, 1)");
    await database.execute("insert into conversations (chat_id, message_id, sender_id, sender_device_id, timestamp, text, message_type, state, reception_state) values ('10000000-0000-0000-0000-000000000002', 7, $id, '10000000-0000-0000-0000-000000000001', 1535293681413, 'The material design language will not only be used on Android, but across Google s suite of web software as well, providing a consistent experience across all platforms', 0, 0, 1)");
    await database.execute("insert into conversations (chat_id, message_id, sender_id, sender_device_id, timestamp, text, quote_text, message_type, state, reception_state) values ('10000000-0000-0000-0000-000000000002', 8, $id, '10000000-0000-0000-0000-000000000001', 1535293681413, 'A developer preview of Android L, build LPV79', 'Android 5.0 introduces a refreshed notification system. Individual notifications are now displayed on cards to adhere to the material design language, and batches of notifications can be grouped by the app that produced them. Notifications are now displayed on the lock screen as cards, and heads up notifications can also be displayed as large banners across the top of the screen, along with their respective action buttons', 0, 0, 1)");
    await database.execute("insert into conversations (chat_id, message_id, sender_id, sender_device_id, timestamp, text, message_type, state, reception_state) values ('10000000-0000-0000-0000-000000000002', 9, '10000000-0000-0000-0000-000000000002', '10000000-1000-0000-0000-000000000002', 1535293691413, 'OK', 0, 0, 1)");

    img = await rootBundle.load("assets/500x400.jpeg");
    await database.update("conversations", {"thumbnail": img.buffer.asUint8List()}, where: "chat_id = '10000000-0000-0000-0000-000000000002' and message_id=2");

  }

  Future<List<Map>> query(String q) async {
    print('db query' + q);
    return database.rawQuery(q);
  }

  Future<void> insert(String q, List<dynamic> values) => database.rawInsert(q, values);
  Future<int> update(String q, List<dynamic> values) => database.rawUpdate(q, values);

  Batch batch() => database.batch();

  Future<void> saveChatList(List<Conversations> items) {
    Batch batch = database.batch();
    for (var item in items) {
      var notification = 0;
      try {
        if (item.hasNotification()) {
          notification = item.notification.toInt();
        }
      } catch (e) {
        // empty
      }
      int timestamp = item.timestamp.toInt();

      batch.rawQuery("""
          replace into chat_list (chat_id, updated_at, title, notification, excerpt) 
          values (?, ?, ?, ?, ?)
          """,
          [item.chatID,
           timestamp,
           item.chatName,
           notification,
           item.excerpt]);
    }
    return batch.commit();
  }

  Future<void> saveContacts(List<Contacts> items) {
    Settings settings = Settings();
    Batch batch = database.batch();
    for (var item in items) {
      var notification = 0;
      try {
        if (item.hasNotification()) {
          notification = item.notification.toInt();
        }
      } catch (e) {
        // empty
      }


      batch.rawQuery("""
          replace into contacts (user_id, chat_id, chat_type, updated_at, name, notification) 
          values (?, ?, 0, date('now'), ?, ?)
          """,
          [settings.myId, item.peerID, item.name, notification]);
    }
    return batch.commit();
  }
}


class DatabaseList extends StatefulWidget {

  DatabaseList({this.key, this.append: false, this.reverse: false, this.query, this.itemBuilder}) : super(key: key);

  final bool append;
  final bool reverse;
  final Key key;
  final String query;
  final Function itemBuilder;

  @override
  _DatabaseListState createState() => _DatabaseListState();
}

class _DatabaseListState extends State<DatabaseList> {
  List<Map> data = new List<Map>();

  Widget _createList(BuildContext context) {
    print('db list created');
    return ListView.builder(
        key: widget.key,
        reverse: widget.reverse,
        itemCount: data.length,
        itemBuilder: (BuildContext context, int index) {
          var item = widget.itemBuilder(context, data[index], index);
          return item;
        }
    );
  }

  Widget _futureBuilder(BuildContext context, AsyncSnapshot snapshot) {
    switch (snapshot.connectionState) {
      case ConnectionState.none:
      case ConnectionState.waiting:
        return Center(
          child: Icon(Icons.av_timer),
        );
      default:
        if (snapshot.hasError)
          return new Text('Error: ${snapshot.error}');
        else {
          if (widget.append) {
            List<Map> temp = new List<Map>();
            temp.addAll(snapshot.data);
            data.insertAll(0, temp);
            temp.clear();
          } else {
            data = snapshot.data;
          }
          return _createList(context);
        }
    }
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
    future: Db().query(widget.query),
    builder: _futureBuilder,
    );
  }
}