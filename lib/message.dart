import 'package:flutter/foundation.dart';
import 'dart:async';
import 'services.dart';
import 'db.dart';
import 'dart:collection';
import 'settings.dart';
import 'generated/ngobrel.pb.dart';
import 'generated/ngobrel.pbgrpc.dart';

class MessageQueue {

  Queue<Message> queue;
  static final MessageQueue _singleton = new MessageQueue._internal();

  factory MessageQueue() {
    return _singleton;
  }

  MessageQueue._internal() {
    queue = new Queue();
  }

  void put(final Message message)  {
    queue.add(message);
    Timer(Duration(milliseconds: 1), () async {
      try {
        await send();

      } catch (e) {
        print(e.toString());
      }
    });
  }

  Future<void> send() async {
    var message = queue.removeFirst();
    var conversations = NgobrelService();

    PutMessageResponse response;

    var code = 1;
    try {
      response = await conversations.putMessage(message);
    } catch(e) {
      print(e.toString());
      code = 500;
    }

    var db = Db();
    var settings = Settings();

    print("Error $code");

    return db.update(
        'UPDATE conversations SET reception_state = ?, message_id = ? WHERE chat_id = ? and timestamp  = ? and sender_id = ?',
        [code, response == null ? message.timestamp : response.messageID.toInt(), message.chatId, message.timestamp, settings.myId]);
  }
}

class Message {
  var chatId;
  var senderId;
  var recipientId;
  var timestamp;
  var text;
  var thumbnail;
  var quote_text;
  var quote_thumbnail;
  var message_type;
  var state;
  var reception_state;
  var ngobrelService = NgobrelService();

  Message({
    @required this.text,
    @required this.chatId,
    @required this.senderId,
    @required this.recipientId,

    this.thumbnail,
    this.quote_text,
    this.quote_thumbnail}) {
    timestamp = DateTime.now().toUtc().millisecondsSinceEpoch;
    message_type = 0;
    state = 0;
    reception_state = 0;
  }

  void send() async {
    var db = Db();
    var queue = MessageQueue();

    await db.insert("insert into conversations (chat_id, sender_id, timestamp, text, thumbnail, quote_text, quote_thumbnail, message_type, state, reception_state) values (?, ?, ?, ?, ?, ?, ?, ?, ?, ?)",
      [chatId, senderId, timestamp, text, thumbnail, quote_text, quote_thumbnail, message_type, state, reception_state]
    );

    queue.put(this);
  }

  void fetch() async {
    var result = ngobrelService.getMessages();
    await for (var item in result) {
      print("item");
      print(item.messageID);
    }
  }
}