import 'package:grpc/grpc.dart';
import 'generated/ngobrel.pb.dart';
import 'generated/ngobrel.pbgrpc.dart';
import 'message.dart';
import 'settings.dart';
import 'package:fixnum/fixnum.dart';

class NgobrelService {

  NgobrelClient client = null;
  Map<String, String> metadata = Map();
  Settings settings = Settings();

  void init() {
    final channel = ClientChannel('10.0.2.2',
        port: 8000,
        options: const ChannelOptions(
            credentials: const ChannelCredentials.insecure()));
    metadata.putIfAbsent("device-id",() => settings.myDeviceId);
    metadata.putIfAbsent("user-id",() => settings.myId);

    client = NgobrelClient(channel, options: CallOptions(metadata: metadata));
  }

  ResponseFuture<PutMessageResponse> putMessage(Message message) {
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
      );
    } catch(e) {
      client = null;
      rethrow;
    }
  }

  ResponseStream<GetMessagesResponseItem> getMessages() {
    if (client == null) {
      init();
    }

    try {
      return client.getMessages(GetMessagesRequest());
    } catch(e) {
      client = null;
      rethrow;
    }
  }
}