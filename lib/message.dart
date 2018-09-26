import 'package:flutter/foundation.dart';
import 'dart:async';
import 'dart:math';
import 'services.dart';
import 'db.dart';
import 'dart:collection';
import 'settings.dart';
import 'generated/ngobrel.pb.dart';
import 'generated/ngobrel.pbgrpc.dart';

class MessageQueue {

  Queue<Message> queue;
  Function sentFunc = null;
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
      send();
    });
  }

  void setSent(Function f) {
    sentFunc = f;
  }
  void send() async {
    var message = queue.removeFirst();
    var service = NgobrelService();

    PutMessageResponse response;

    var code = 1;
    try {
      response = await service.putMessage(message);
    } catch(e) {
      print(e.toString());
      code = 500;
    }

    var db = Db();
    var settings = Settings();

    print("Error $code");


    try {
      var batch = db.batch();
      batch.update("conversations", {
        "reception_state": code,
        "message_id": response == null ? message.timestamp : response.messageID.toInt()
      }, where: "chat_id = ? and timestamp  = ? and sender_id = ?",
          whereArgs: [message.chatId, message.timestamp, settings.myId]);
      batch.update("chat_list", {
        "updated_at": message.timestamp,
        "excerpt": message.excerpt()
      }, where: "chat_id=?", whereArgs: [message.chatId]);
      await batch.commit();
      print("DB Updated");
      if (sentFunc != null) {
        sentFunc();
      }
    } catch (e) {
      print(e.toString());
    }
  }
}

class Message {
  var chatId;
  var senderId;
  var recipientId;
  var messageId;
  int timestamp;
  String text;
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
    messageId =  timestamp - 946659600000;

    message_type = 0;
    state = 0;
    reception_state = 0;
  }

  Future<void>_saveLocal() async {
    var db = Db();

    try {
      await db.insert(
          "insert into conversations (message_id, chat_id, sender_id, timestamp, text, thumbnail, quote_text, quote_thumbnail, message_type, state, reception_state) values (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)",
          [
            messageId,
            chatId,
            senderId,
            timestamp,
            text,
            thumbnail,
            quote_text,
            quote_thumbnail,
            message_type,
            state,
            reception_state
          ]
      );
    } catch (e) {
    print(e.toString());
    }
  }

  void setSent(Function f) {
    var queue = MessageQueue();
    queue.setSent(f);
  }
  void send() async {
    var queue = MessageQueue();
    _saveLocal();

    queue.put(this);
  }

  Message.fromResponseItem(GetMessagesResponseItem item) {
    chatId = item.recipientID;
    recipientId = item.recipientID;
    senderId = item.senderID;
    timestamp = item.messageTimestamp.toInt();
    messageId = item.messageID.toInt();
    message_type = 0;
    state = 0;
    reception_state = 1;
    if (item.messageEncrypted == false) {
      print('Saving contents 1');
      _parseContents(item.messageContents);
    } else {
      // TODO
      print('Saving contents 2');
    }
    _saveLocal();
  }

  void _parseContents(String text) {
    // TODO
    this.text = text;
  }

  String excerpt() {
    if (thumbnail != null) {
      return "📷 Photo";
    }
    int size = text.length > 50 ? 50 : text.length;
    return text.substring(0, size);
  }
}