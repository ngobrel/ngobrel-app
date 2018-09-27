///
//  Generated code. Do not modify.
//  source: ngobrel.proto
///
// ignore_for_file: non_constant_identifier_names,library_prefixes,unused_import

// ignore_for_file: UNDEFINED_SHOWN_NAME,UNUSED_SHOWN_NAME
import 'dart:core' show int, dynamic, String, List, Map;
import 'package:protobuf/protobuf.dart' as $pb;

class PutContactStatus extends $pb.ProtobufEnum {
  static const PutContactStatus Success = const PutContactStatus._(0, 'Success');
  static const PutContactStatus GeneralError = const PutContactStatus._(1, 'GeneralError');
  static const PutContactStatus ContactIsNotInTheSystem = const PutContactStatus._(2, 'ContactIsNotInTheSystem');

  static const List<PutContactStatus> values = const <PutContactStatus> [
    Success,
    GeneralError,
    ContactIsNotInTheSystem,
  ];

  static final Map<int, dynamic> _byValue = $pb.ProtobufEnum.initByValue(values);
  static PutContactStatus valueOf(int value) => _byValue[value] as PutContactStatus;
  static void $checkItem(PutContactStatus v) {
    if (v is! PutContactStatus) $pb.checkItemFailed(v, 'PutContactStatus');
  }

  const PutContactStatus._(int v, String n) : super(v, n);
}

class ConversationType extends $pb.ProtobufEnum {
  static const ConversationType PeerToPeer = const ConversationType._(0, 'PeerToPeer');
  static const ConversationType Group = const ConversationType._(1, 'Group');
  static const ConversationType Management = const ConversationType._(2, 'Management');

  static const List<ConversationType> values = const <ConversationType> [
    PeerToPeer,
    Group,
    Management,
  ];

  static final Map<int, dynamic> _byValue = $pb.ProtobufEnum.initByValue(values);
  static ConversationType valueOf(int value) => _byValue[value] as ConversationType;
  static void $checkItem(ConversationType v) {
    if (v is! ConversationType) $pb.checkItemFailed(v, 'ConversationType');
  }

  const ConversationType._(int v, String n) : super(v, n);
}

class MessageState extends $pb.ProtobufEnum {
  static const MessageState Normal = const MessageState._(0, 'Normal');
  static const MessageState Retracted = const MessageState._(1, 'Retracted');

  static const List<MessageState> values = const <MessageState> [
    Normal,
    Retracted,
  ];

  static final Map<int, dynamic> _byValue = $pb.ProtobufEnum.initByValue(values);
  static MessageState valueOf(int value) => _byValue[value] as MessageState;
  static void $checkItem(MessageState v) {
    if (v is! MessageState) $pb.checkItemFailed(v, 'MessageState');
  }

  const MessageState._(int v, String n) : super(v, n);
}

class MessageReceptionState extends $pb.ProtobufEnum {
  static const MessageReceptionState Draft = const MessageReceptionState._(0, 'Draft');
  static const MessageReceptionState Sent = const MessageReceptionState._(1, 'Sent');
  static const MessageReceptionState Received = const MessageReceptionState._(2, 'Received');
  static const MessageReceptionState Read = const MessageReceptionState._(3, 'Read');

  static const List<MessageReceptionState> values = const <MessageReceptionState> [
    Draft,
    Sent,
    Received,
    Read,
  ];

  static final Map<int, dynamic> _byValue = $pb.ProtobufEnum.initByValue(values);
  static MessageReceptionState valueOf(int value) => _byValue[value] as MessageReceptionState;
  static void $checkItem(MessageReceptionState v) {
    if (v is! MessageReceptionState) $pb.checkItemFailed(v, 'MessageReceptionState');
  }

  const MessageReceptionState._(int v, String n) : super(v, n);
}

class UploadMediaStatus extends $pb.ProtobufEnum {
  static const UploadMediaStatus Uploading = const UploadMediaStatus._(0, 'Uploading');
  static const UploadMediaStatus Done = const UploadMediaStatus._(1, 'Done');
  static const UploadMediaStatus Error = const UploadMediaStatus._(2, 'Error');

  static const List<UploadMediaStatus> values = const <UploadMediaStatus> [
    Uploading,
    Done,
    Error,
  ];

  static final Map<int, dynamic> _byValue = $pb.ProtobufEnum.initByValue(values);
  static UploadMediaStatus valueOf(int value) => _byValue[value] as UploadMediaStatus;
  static void $checkItem(UploadMediaStatus v) {
    if (v is! UploadMediaStatus) $pb.checkItemFailed(v, 'UploadMediaStatus');
  }

  const UploadMediaStatus._(int v, String n) : super(v, n);
}

