import 'dart:async';
import 'package:grpc/grpc.dart';
import 'generated/ngobrel.pb.dart';
import 'generated/ngobrel.pbgrpc.dart';
import 'message.dart';
import 'settings.dart';
import 'db.dart';
import 'package:fixnum/fixnum.dart';

class NgobrelService {

  static final NgobrelService _singleton = new NgobrelService._internal();

  bool gettingMessages = false;
  bool gettingChatList = false;
  bool gettingContacts = false;

  factory NgobrelService() {
    return _singleton;
  }

  NgobrelService._internal() {
    // empty
  }

  NgobrelClient client = null;
  Map<String, String> metadata = Map();
  Settings settings = Settings();
  Timer timer = null;

  void _updateMetadata() {
    metadata.update("device-id", (String s) => settings.myDeviceId);
    metadata.update("user-id", (String s) => settings.myId);

  }

  void init() {
    print("Setting up services");
    try {
      final channel = ClientChannel('10.0.2.2',
          port: 8000,
          options: const ChannelOptions(
              credentials: const ChannelCredentials.insecure()));
      metadata.putIfAbsent("device-id", () => settings.myDeviceId);
      metadata.putIfAbsent("user-id", () => settings.myId);

      client = NgobrelClient(channel, options: CallOptions(metadata: metadata));

      if (timer == null) {
        timer = Timer.periodic(Duration(seconds: 5), (Timer t) {
          getMessages();
        });
      }
    } catch (e) {
      print(e.toString());
    }
  }

  ResponseFuture<PutMessageResponse> putMessage(Message message) {
    _updateMetadata();
    print("Put message to service");
    if (client == null) {
      init();
    }

    try {
      return client.putMessage(
          PutMessageRequest()
            ..recipientID = message.recipientId
            ..messageTimestamp = Int64(message.timestamp~/1000.0)
            ..messageContents = message.text
            ..messageEncrypted = false
      , options: CallOptions(metadata: metadata));
    } catch(e) {
      client = null;
      rethrow;
    }
  }

  Future<void> getMessages() async {
    _updateMetadata();
    print("try to get messages");

    if (gettingMessages) {
      print("there is still something getting the messages");
      return;
    }
    gettingMessages = true;
    if (client == null) {
      init();
    }

    print("geting messages");
    try {
      var result = client.getMessages(GetMessagesRequest(), options: CallOptions(metadata: metadata));
      await for (var item in result) {
        print("item");
        print(item.messageID);
        Message m = Message.fromResponseItem(item);
      }
      gettingMessages = false;
    } catch(e) {
      client = null;
      gettingMessages = false;
      rethrow;
    }
    print("geting messages done");

  }

  Future<void> getChatList() async {
    _updateMetadata();
    print("try to get chat list");

    if (gettingChatList) {
      print("there is still something getting the chat list");
      return;
    }
    gettingChatList = true;
    if (client == null) {
      init();
    }

    print("geting chat list");
    try {
      Db db = Db();
      var result = await client.listConversations(ListConversationsRequest(), options: CallOptions(metadata: metadata));
      await db.saveChatList(result.list);

      gettingChatList = false;
    } catch(e) {
      print("Getting chat list error: " + e.toString());
      client = null;
      gettingChatList = false;

      rethrow;
    }
    print("geting chat list done");

  }

  Future<void> getContacts() async {
    _updateMetadata();
    print("try to get contacts");

    if (gettingContacts) {
      print("there is still something getting the contacts");
      return;
    }
    gettingContacts = true;
    if (client == null) {
      init();
    }

    print("getting contacts");
    try {
      Db db = Db();
      var result = await client.getContacts(GetContactsRequest(), options: CallOptions(metadata: metadata));
      await db.saveContacts(result.list);

      gettingContacts = false;
    } catch(e) {
      print("Getting contacts error: " + e.toString());
      client = null;
      gettingContacts = false;

      rethrow;
    }
    print("geting chat list done");

  }

  void updateChatList(String chatID, String excerpt) async {
    _updateMetadata();
    if (client == null) {
      init();
    }
    final request = UpdateConversationRequest()
    ..chatID = chatID
    ..timestamp = Int64(DateTime.now().toUtc().millisecondsSinceEpoch)
    ..excerpt = excerpt;

    await client.updateConversation(request, options: CallOptions(metadata: metadata));
  }


  Future<String> registerUser(String phoneNumber, String deviceID) async {
    if (client == null) {
      init();
    }

    print("Registering");

    final request = new CreateProfileRequest()
    ..deviceID = deviceID
    ..phoneNumber = phoneNumber
    ;

    print(request);
    var res = await client.createProfile(request);
    return res.userID;
  }
}
