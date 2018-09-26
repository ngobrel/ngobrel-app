///
//  Generated code. Do not modify.
//  source: ngobrel.proto
///
// ignore_for_file: non_constant_identifier_names,library_prefixes,unused_import

// ignore: UNUSED_SHOWN_NAME
import 'dart:core' show int, bool, double, String, List, override;

import 'package:fixnum/fixnum.dart';
import 'package:protobuf/protobuf.dart' as $pb;

import 'ngobrel.pbenum.dart';

export 'ngobrel.pbenum.dart';

class EditProfileRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = new $pb.BuilderInfo('EditProfileRequest')
    ..aOS(1, 'name')
    ..aOS(2, 'email')
    ..aOS(3, 'avatarMediaId')
    ..hasRequiredFields = false
  ;

  EditProfileRequest() : super();
  EditProfileRequest.fromBuffer(List<int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  EditProfileRequest.fromJson(String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  EditProfileRequest clone() => new EditProfileRequest()..mergeFromMessage(this);
  EditProfileRequest copyWith(void Function(EditProfileRequest) updates) => super.copyWith((message) => updates(message as EditProfileRequest));
  $pb.BuilderInfo get info_ => _i;
  static EditProfileRequest create() => new EditProfileRequest();
  static $pb.PbList<EditProfileRequest> createRepeated() => new $pb.PbList<EditProfileRequest>();
  static EditProfileRequest getDefault() => _defaultInstance ??= create()..freeze();
  static EditProfileRequest _defaultInstance;
  static void $checkItem(EditProfileRequest v) {
    if (v is! EditProfileRequest) $pb.checkItemFailed(v, _i.messageName);
  }

  String get name => $_getS(0, '');
  set name(String v) { $_setString(0, v); }
  bool hasName() => $_has(0);
  void clearName() => clearField(1);

  String get email => $_getS(1, '');
  set email(String v) { $_setString(1, v); }
  bool hasEmail() => $_has(1);
  void clearEmail() => clearField(2);

  String get avatarMediaId => $_getS(2, '');
  set avatarMediaId(String v) { $_setString(2, v); }
  bool hasAvatarMediaId() => $_has(2);
  void clearAvatarMediaId() => clearField(3);
}

class EditProfileResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = new $pb.BuilderInfo('EditProfileResponse')
    ..aOB(1, 'success')
    ..aOS(2, 'message')
    ..hasRequiredFields = false
  ;

  EditProfileResponse() : super();
  EditProfileResponse.fromBuffer(List<int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  EditProfileResponse.fromJson(String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  EditProfileResponse clone() => new EditProfileResponse()..mergeFromMessage(this);
  EditProfileResponse copyWith(void Function(EditProfileResponse) updates) => super.copyWith((message) => updates(message as EditProfileResponse));
  $pb.BuilderInfo get info_ => _i;
  static EditProfileResponse create() => new EditProfileResponse();
  static $pb.PbList<EditProfileResponse> createRepeated() => new $pb.PbList<EditProfileResponse>();
  static EditProfileResponse getDefault() => _defaultInstance ??= create()..freeze();
  static EditProfileResponse _defaultInstance;
  static void $checkItem(EditProfileResponse v) {
    if (v is! EditProfileResponse) $pb.checkItemFailed(v, _i.messageName);
  }

  bool get success => $_get(0, false);
  set success(bool v) { $_setBool(0, v); }
  bool hasSuccess() => $_has(0);
  void clearSuccess() => clearField(1);

  String get message => $_getS(1, '');
  set message(String v) { $_setString(1, v); }
  bool hasMessage() => $_has(1);
  void clearMessage() => clearField(2);
}

class GetProfileRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = new $pb.BuilderInfo('GetProfileRequest')
    ..aOS(1, 'userID')
    ..hasRequiredFields = false
  ;

  GetProfileRequest() : super();
  GetProfileRequest.fromBuffer(List<int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  GetProfileRequest.fromJson(String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  GetProfileRequest clone() => new GetProfileRequest()..mergeFromMessage(this);
  GetProfileRequest copyWith(void Function(GetProfileRequest) updates) => super.copyWith((message) => updates(message as GetProfileRequest));
  $pb.BuilderInfo get info_ => _i;
  static GetProfileRequest create() => new GetProfileRequest();
  static $pb.PbList<GetProfileRequest> createRepeated() => new $pb.PbList<GetProfileRequest>();
  static GetProfileRequest getDefault() => _defaultInstance ??= create()..freeze();
  static GetProfileRequest _defaultInstance;
  static void $checkItem(GetProfileRequest v) {
    if (v is! GetProfileRequest) $pb.checkItemFailed(v, _i.messageName);
  }

  String get userID => $_getS(0, '');
  set userID(String v) { $_setString(0, v); }
  bool hasUserID() => $_has(0);
  void clearUserID() => clearField(1);
}

class GetProfileResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = new $pb.BuilderInfo('GetProfileResponse')
    ..aOS(1, 'name')
    ..aOS(2, 'email')
    ..aOS(3, 'avatarMediaId')
    ..hasRequiredFields = false
  ;

  GetProfileResponse() : super();
  GetProfileResponse.fromBuffer(List<int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  GetProfileResponse.fromJson(String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  GetProfileResponse clone() => new GetProfileResponse()..mergeFromMessage(this);
  GetProfileResponse copyWith(void Function(GetProfileResponse) updates) => super.copyWith((message) => updates(message as GetProfileResponse));
  $pb.BuilderInfo get info_ => _i;
  static GetProfileResponse create() => new GetProfileResponse();
  static $pb.PbList<GetProfileResponse> createRepeated() => new $pb.PbList<GetProfileResponse>();
  static GetProfileResponse getDefault() => _defaultInstance ??= create()..freeze();
  static GetProfileResponse _defaultInstance;
  static void $checkItem(GetProfileResponse v) {
    if (v is! GetProfileResponse) $pb.checkItemFailed(v, _i.messageName);
  }

  String get name => $_getS(0, '');
  set name(String v) { $_setString(0, v); }
  bool hasName() => $_has(0);
  void clearName() => clearField(1);

  String get email => $_getS(1, '');
  set email(String v) { $_setString(1, v); }
  bool hasEmail() => $_has(1);
  void clearEmail() => clearField(2);

  String get avatarMediaId => $_getS(2, '');
  set avatarMediaId(String v) { $_setString(2, v); }
  bool hasAvatarMediaId() => $_has(2);
  void clearAvatarMediaId() => clearField(3);
}

class ListConversationsRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = new $pb.BuilderInfo('ListConversationsRequest')
    ..hasRequiredFields = false
  ;

  ListConversationsRequest() : super();
  ListConversationsRequest.fromBuffer(List<int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  ListConversationsRequest.fromJson(String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  ListConversationsRequest clone() => new ListConversationsRequest()..mergeFromMessage(this);
  ListConversationsRequest copyWith(void Function(ListConversationsRequest) updates) => super.copyWith((message) => updates(message as ListConversationsRequest));
  $pb.BuilderInfo get info_ => _i;
  static ListConversationsRequest create() => new ListConversationsRequest();
  static $pb.PbList<ListConversationsRequest> createRepeated() => new $pb.PbList<ListConversationsRequest>();
  static ListConversationsRequest getDefault() => _defaultInstance ??= create()..freeze();
  static ListConversationsRequest _defaultInstance;
  static void $checkItem(ListConversationsRequest v) {
    if (v is! ListConversationsRequest) $pb.checkItemFailed(v, _i.messageName);
  }
}

class ListConversationsResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = new $pb.BuilderInfo('ListConversationsResponse')
    ..pp<Conversations>(1, 'list', $pb.PbFieldType.PM, Conversations.$checkItem, Conversations.create)
    ..hasRequiredFields = false
  ;

  ListConversationsResponse() : super();
  ListConversationsResponse.fromBuffer(List<int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  ListConversationsResponse.fromJson(String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  ListConversationsResponse clone() => new ListConversationsResponse()..mergeFromMessage(this);
  ListConversationsResponse copyWith(void Function(ListConversationsResponse) updates) => super.copyWith((message) => updates(message as ListConversationsResponse));
  $pb.BuilderInfo get info_ => _i;
  static ListConversationsResponse create() => new ListConversationsResponse();
  static $pb.PbList<ListConversationsResponse> createRepeated() => new $pb.PbList<ListConversationsResponse>();
  static ListConversationsResponse getDefault() => _defaultInstance ??= create()..freeze();
  static ListConversationsResponse _defaultInstance;
  static void $checkItem(ListConversationsResponse v) {
    if (v is! ListConversationsResponse) $pb.checkItemFailed(v, _i.messageName);
  }

  List<Conversations> get list => $_getList(0);
}

class Conversations extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = new $pb.BuilderInfo('Conversations')
    ..aOS(1, 'chatID')
    ..aOS(2, 'chatName')
    ..aOS(3, 'excerpt')
    ..aInt64(4, 'timestamp')
    ..aInt64(5, 'notification')
    ..hasRequiredFields = false
  ;

  Conversations() : super();
  Conversations.fromBuffer(List<int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  Conversations.fromJson(String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  Conversations clone() => new Conversations()..mergeFromMessage(this);
  Conversations copyWith(void Function(Conversations) updates) => super.copyWith((message) => updates(message as Conversations));
  $pb.BuilderInfo get info_ => _i;
  static Conversations create() => new Conversations();
  static $pb.PbList<Conversations> createRepeated() => new $pb.PbList<Conversations>();
  static Conversations getDefault() => _defaultInstance ??= create()..freeze();
  static Conversations _defaultInstance;
  static void $checkItem(Conversations v) {
    if (v is! Conversations) $pb.checkItemFailed(v, _i.messageName);
  }

  String get chatID => $_getS(0, '');
  set chatID(String v) { $_setString(0, v); }
  bool hasChatID() => $_has(0);
  void clearChatID() => clearField(1);

  String get chatName => $_getS(1, '');
  set chatName(String v) { $_setString(1, v); }
  bool hasChatName() => $_has(1);
  void clearChatName() => clearField(2);

  String get excerpt => $_getS(2, '');
  set excerpt(String v) { $_setString(2, v); }
  bool hasExcerpt() => $_has(2);
  void clearExcerpt() => clearField(3);

  Int64 get timestamp => $_getI64(3);
  set timestamp(Int64 v) { $_setInt64(3, v); }
  bool hasTimestamp() => $_has(3);
  void clearTimestamp() => clearField(4);

  Int64 get notification => $_getI64(4);
  set notification(Int64 v) { $_setInt64(4, v); }
  bool hasNotification() => $_has(4);
  void clearNotification() => clearField(5);
}

class DeleteContactRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = new $pb.BuilderInfo('DeleteContactRequest')
    ..aOS(1, 'userID')
    ..hasRequiredFields = false
  ;

  DeleteContactRequest() : super();
  DeleteContactRequest.fromBuffer(List<int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  DeleteContactRequest.fromJson(String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  DeleteContactRequest clone() => new DeleteContactRequest()..mergeFromMessage(this);
  DeleteContactRequest copyWith(void Function(DeleteContactRequest) updates) => super.copyWith((message) => updates(message as DeleteContactRequest));
  $pb.BuilderInfo get info_ => _i;
  static DeleteContactRequest create() => new DeleteContactRequest();
  static $pb.PbList<DeleteContactRequest> createRepeated() => new $pb.PbList<DeleteContactRequest>();
  static DeleteContactRequest getDefault() => _defaultInstance ??= create()..freeze();
  static DeleteContactRequest _defaultInstance;
  static void $checkItem(DeleteContactRequest v) {
    if (v is! DeleteContactRequest) $pb.checkItemFailed(v, _i.messageName);
  }

  String get userID => $_getS(0, '');
  set userID(String v) { $_setString(0, v); }
  bool hasUserID() => $_has(0);
  void clearUserID() => clearField(1);
}

class DeleteContactResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = new $pb.BuilderInfo('DeleteContactResponse')
    ..aOB(1, 'success')
    ..aOS(2, 'message')
    ..hasRequiredFields = false
  ;

  DeleteContactResponse() : super();
  DeleteContactResponse.fromBuffer(List<int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  DeleteContactResponse.fromJson(String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  DeleteContactResponse clone() => new DeleteContactResponse()..mergeFromMessage(this);
  DeleteContactResponse copyWith(void Function(DeleteContactResponse) updates) => super.copyWith((message) => updates(message as DeleteContactResponse));
  $pb.BuilderInfo get info_ => _i;
  static DeleteContactResponse create() => new DeleteContactResponse();
  static $pb.PbList<DeleteContactResponse> createRepeated() => new $pb.PbList<DeleteContactResponse>();
  static DeleteContactResponse getDefault() => _defaultInstance ??= create()..freeze();
  static DeleteContactResponse _defaultInstance;
  static void $checkItem(DeleteContactResponse v) {
    if (v is! DeleteContactResponse) $pb.checkItemFailed(v, _i.messageName);
  }

  bool get success => $_get(0, false);
  set success(bool v) { $_setBool(0, v); }
  bool hasSuccess() => $_has(0);
  void clearSuccess() => clearField(1);

  String get message => $_getS(1, '');
  set message(String v) { $_setString(1, v); }
  bool hasMessage() => $_has(1);
  void clearMessage() => clearField(2);
}

class GetContactsRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = new $pb.BuilderInfo('GetContactsRequest')
    ..hasRequiredFields = false
  ;

  GetContactsRequest() : super();
  GetContactsRequest.fromBuffer(List<int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  GetContactsRequest.fromJson(String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  GetContactsRequest clone() => new GetContactsRequest()..mergeFromMessage(this);
  GetContactsRequest copyWith(void Function(GetContactsRequest) updates) => super.copyWith((message) => updates(message as GetContactsRequest));
  $pb.BuilderInfo get info_ => _i;
  static GetContactsRequest create() => new GetContactsRequest();
  static $pb.PbList<GetContactsRequest> createRepeated() => new $pb.PbList<GetContactsRequest>();
  static GetContactsRequest getDefault() => _defaultInstance ??= create()..freeze();
  static GetContactsRequest _defaultInstance;
  static void $checkItem(GetContactsRequest v) {
    if (v is! GetContactsRequest) $pb.checkItemFailed(v, _i.messageName);
  }
}

class GetContactsResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = new $pb.BuilderInfo('GetContactsResponse')
    ..pp<Contacts>(1, 'list', $pb.PbFieldType.PM, Contacts.$checkItem, Contacts.create)
    ..hasRequiredFields = false
  ;

  GetContactsResponse() : super();
  GetContactsResponse.fromBuffer(List<int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  GetContactsResponse.fromJson(String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  GetContactsResponse clone() => new GetContactsResponse()..mergeFromMessage(this);
  GetContactsResponse copyWith(void Function(GetContactsResponse) updates) => super.copyWith((message) => updates(message as GetContactsResponse));
  $pb.BuilderInfo get info_ => _i;
  static GetContactsResponse create() => new GetContactsResponse();
  static $pb.PbList<GetContactsResponse> createRepeated() => new $pb.PbList<GetContactsResponse>();
  static GetContactsResponse getDefault() => _defaultInstance ??= create()..freeze();
  static GetContactsResponse _defaultInstance;
  static void $checkItem(GetContactsResponse v) {
    if (v is! GetContactsResponse) $pb.checkItemFailed(v, _i.messageName);
  }

  List<Contacts> get list => $_getList(0);
}

class Contacts extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = new $pb.BuilderInfo('Contacts')
    ..aOS(1, 'userID')
    ..aOS(2, 'name')
    ..hasRequiredFields = false
  ;

  Contacts() : super();
  Contacts.fromBuffer(List<int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  Contacts.fromJson(String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  Contacts clone() => new Contacts()..mergeFromMessage(this);
  Contacts copyWith(void Function(Contacts) updates) => super.copyWith((message) => updates(message as Contacts));
  $pb.BuilderInfo get info_ => _i;
  static Contacts create() => new Contacts();
  static $pb.PbList<Contacts> createRepeated() => new $pb.PbList<Contacts>();
  static Contacts getDefault() => _defaultInstance ??= create()..freeze();
  static Contacts _defaultInstance;
  static void $checkItem(Contacts v) {
    if (v is! Contacts) $pb.checkItemFailed(v, _i.messageName);
  }

  String get userID => $_getS(0, '');
  set userID(String v) { $_setString(0, v); }
  bool hasUserID() => $_has(0);
  void clearUserID() => clearField(1);

  String get name => $_getS(1, '');
  set name(String v) { $_setString(1, v); }
  bool hasName() => $_has(1);
  void clearName() => clearField(2);
}

class PutContactRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = new $pb.BuilderInfo('PutContactRequest')
    ..a<Contacts>(2, 'contactData', $pb.PbFieldType.OM, Contacts.getDefault, Contacts.create)
    ..hasRequiredFields = false
  ;

  PutContactRequest() : super();
  PutContactRequest.fromBuffer(List<int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  PutContactRequest.fromJson(String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  PutContactRequest clone() => new PutContactRequest()..mergeFromMessage(this);
  PutContactRequest copyWith(void Function(PutContactRequest) updates) => super.copyWith((message) => updates(message as PutContactRequest));
  $pb.BuilderInfo get info_ => _i;
  static PutContactRequest create() => new PutContactRequest();
  static $pb.PbList<PutContactRequest> createRepeated() => new $pb.PbList<PutContactRequest>();
  static PutContactRequest getDefault() => _defaultInstance ??= create()..freeze();
  static PutContactRequest _defaultInstance;
  static void $checkItem(PutContactRequest v) {
    if (v is! PutContactRequest) $pb.checkItemFailed(v, _i.messageName);
  }

  Contacts get contactData => $_getN(0);
  set contactData(Contacts v) { setField(2, v); }
  bool hasContactData() => $_has(0);
  void clearContactData() => clearField(2);
}

class PutContactResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = new $pb.BuilderInfo('PutContactResponse')
    ..aOB(1, 'success')
    ..aOS(2, 'message')
    ..hasRequiredFields = false
  ;

  PutContactResponse() : super();
  PutContactResponse.fromBuffer(List<int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  PutContactResponse.fromJson(String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  PutContactResponse clone() => new PutContactResponse()..mergeFromMessage(this);
  PutContactResponse copyWith(void Function(PutContactResponse) updates) => super.copyWith((message) => updates(message as PutContactResponse));
  $pb.BuilderInfo get info_ => _i;
  static PutContactResponse create() => new PutContactResponse();
  static $pb.PbList<PutContactResponse> createRepeated() => new $pb.PbList<PutContactResponse>();
  static PutContactResponse getDefault() => _defaultInstance ??= create()..freeze();
  static PutContactResponse _defaultInstance;
  static void $checkItem(PutContactResponse v) {
    if (v is! PutContactResponse) $pb.checkItemFailed(v, _i.messageName);
  }

  bool get success => $_get(0, false);
  set success(bool v) { $_setBool(0, v); }
  bool hasSuccess() => $_has(0);
  void clearSuccess() => clearField(1);

  String get message => $_getS(1, '');
  set message(String v) { $_setString(1, v); }
  bool hasMessage() => $_has(1);
  void clearMessage() => clearField(2);
}

class GetMessageReceptionStateRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = new $pb.BuilderInfo('GetMessageReceptionStateRequest')
    ..aOS(1, 'userID')
    ..aOS(2, 'messageID')
    ..hasRequiredFields = false
  ;

  GetMessageReceptionStateRequest() : super();
  GetMessageReceptionStateRequest.fromBuffer(List<int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  GetMessageReceptionStateRequest.fromJson(String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  GetMessageReceptionStateRequest clone() => new GetMessageReceptionStateRequest()..mergeFromMessage(this);
  GetMessageReceptionStateRequest copyWith(void Function(GetMessageReceptionStateRequest) updates) => super.copyWith((message) => updates(message as GetMessageReceptionStateRequest));
  $pb.BuilderInfo get info_ => _i;
  static GetMessageReceptionStateRequest create() => new GetMessageReceptionStateRequest();
  static $pb.PbList<GetMessageReceptionStateRequest> createRepeated() => new $pb.PbList<GetMessageReceptionStateRequest>();
  static GetMessageReceptionStateRequest getDefault() => _defaultInstance ??= create()..freeze();
  static GetMessageReceptionStateRequest _defaultInstance;
  static void $checkItem(GetMessageReceptionStateRequest v) {
    if (v is! GetMessageReceptionStateRequest) $pb.checkItemFailed(v, _i.messageName);
  }

  String get userID => $_getS(0, '');
  set userID(String v) { $_setString(0, v); }
  bool hasUserID() => $_has(0);
  void clearUserID() => clearField(1);

  String get messageID => $_getS(1, '');
  set messageID(String v) { $_setString(1, v); }
  bool hasMessageID() => $_has(1);
  void clearMessageID() => clearField(2);
}

class GetMessageReceptionStateResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = new $pb.BuilderInfo('GetMessageReceptionStateResponse')
    ..e<MessageReceptionState>(1, 'status', $pb.PbFieldType.OE, MessageReceptionState.Draft, MessageReceptionState.valueOf, MessageReceptionState.values)
    ..hasRequiredFields = false
  ;

  GetMessageReceptionStateResponse() : super();
  GetMessageReceptionStateResponse.fromBuffer(List<int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  GetMessageReceptionStateResponse.fromJson(String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  GetMessageReceptionStateResponse clone() => new GetMessageReceptionStateResponse()..mergeFromMessage(this);
  GetMessageReceptionStateResponse copyWith(void Function(GetMessageReceptionStateResponse) updates) => super.copyWith((message) => updates(message as GetMessageReceptionStateResponse));
  $pb.BuilderInfo get info_ => _i;
  static GetMessageReceptionStateResponse create() => new GetMessageReceptionStateResponse();
  static $pb.PbList<GetMessageReceptionStateResponse> createRepeated() => new $pb.PbList<GetMessageReceptionStateResponse>();
  static GetMessageReceptionStateResponse getDefault() => _defaultInstance ??= create()..freeze();
  static GetMessageReceptionStateResponse _defaultInstance;
  static void $checkItem(GetMessageReceptionStateResponse v) {
    if (v is! GetMessageReceptionStateResponse) $pb.checkItemFailed(v, _i.messageName);
  }

  MessageReceptionState get status => $_getN(0);
  set status(MessageReceptionState v) { setField(1, v); }
  bool hasStatus() => $_has(0);
  void clearStatus() => clearField(1);
}

class GetMessageStateRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = new $pb.BuilderInfo('GetMessageStateRequest')
    ..aOS(1, 'userID')
    ..aOS(2, 'messageID')
    ..hasRequiredFields = false
  ;

  GetMessageStateRequest() : super();
  GetMessageStateRequest.fromBuffer(List<int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  GetMessageStateRequest.fromJson(String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  GetMessageStateRequest clone() => new GetMessageStateRequest()..mergeFromMessage(this);
  GetMessageStateRequest copyWith(void Function(GetMessageStateRequest) updates) => super.copyWith((message) => updates(message as GetMessageStateRequest));
  $pb.BuilderInfo get info_ => _i;
  static GetMessageStateRequest create() => new GetMessageStateRequest();
  static $pb.PbList<GetMessageStateRequest> createRepeated() => new $pb.PbList<GetMessageStateRequest>();
  static GetMessageStateRequest getDefault() => _defaultInstance ??= create()..freeze();
  static GetMessageStateRequest _defaultInstance;
  static void $checkItem(GetMessageStateRequest v) {
    if (v is! GetMessageStateRequest) $pb.checkItemFailed(v, _i.messageName);
  }

  String get userID => $_getS(0, '');
  set userID(String v) { $_setString(0, v); }
  bool hasUserID() => $_has(0);
  void clearUserID() => clearField(1);

  String get messageID => $_getS(1, '');
  set messageID(String v) { $_setString(1, v); }
  bool hasMessageID() => $_has(1);
  void clearMessageID() => clearField(2);
}

class GetMessageStateResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = new $pb.BuilderInfo('GetMessageStateResponse')
    ..e<MessageState>(1, 'state', $pb.PbFieldType.OE, MessageState.Normal, MessageState.valueOf, MessageState.values)
    ..hasRequiredFields = false
  ;

  GetMessageStateResponse() : super();
  GetMessageStateResponse.fromBuffer(List<int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  GetMessageStateResponse.fromJson(String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  GetMessageStateResponse clone() => new GetMessageStateResponse()..mergeFromMessage(this);
  GetMessageStateResponse copyWith(void Function(GetMessageStateResponse) updates) => super.copyWith((message) => updates(message as GetMessageStateResponse));
  $pb.BuilderInfo get info_ => _i;
  static GetMessageStateResponse create() => new GetMessageStateResponse();
  static $pb.PbList<GetMessageStateResponse> createRepeated() => new $pb.PbList<GetMessageStateResponse>();
  static GetMessageStateResponse getDefault() => _defaultInstance ??= create()..freeze();
  static GetMessageStateResponse _defaultInstance;
  static void $checkItem(GetMessageStateResponse v) {
    if (v is! GetMessageStateResponse) $pb.checkItemFailed(v, _i.messageName);
  }

  MessageState get state => $_getN(0);
  set state(MessageState v) { setField(1, v); }
  bool hasState() => $_has(0);
  void clearState() => clearField(1);
}

class PutMessageStateRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = new $pb.BuilderInfo('PutMessageStateRequest')
    ..aOS(1, 'messageID')
    ..e<MessageReceptionState>(2, 'status', $pb.PbFieldType.OE, MessageReceptionState.Draft, MessageReceptionState.valueOf, MessageReceptionState.values)
    ..hasRequiredFields = false
  ;

  PutMessageStateRequest() : super();
  PutMessageStateRequest.fromBuffer(List<int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  PutMessageStateRequest.fromJson(String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  PutMessageStateRequest clone() => new PutMessageStateRequest()..mergeFromMessage(this);
  PutMessageStateRequest copyWith(void Function(PutMessageStateRequest) updates) => super.copyWith((message) => updates(message as PutMessageStateRequest));
  $pb.BuilderInfo get info_ => _i;
  static PutMessageStateRequest create() => new PutMessageStateRequest();
  static $pb.PbList<PutMessageStateRequest> createRepeated() => new $pb.PbList<PutMessageStateRequest>();
  static PutMessageStateRequest getDefault() => _defaultInstance ??= create()..freeze();
  static PutMessageStateRequest _defaultInstance;
  static void $checkItem(PutMessageStateRequest v) {
    if (v is! PutMessageStateRequest) $pb.checkItemFailed(v, _i.messageName);
  }

  String get messageID => $_getS(0, '');
  set messageID(String v) { $_setString(0, v); }
  bool hasMessageID() => $_has(0);
  void clearMessageID() => clearField(1);

  MessageReceptionState get status => $_getN(1);
  set status(MessageReceptionState v) { setField(2, v); }
  bool hasStatus() => $_has(1);
  void clearStatus() => clearField(2);
}

class PutMessageStateResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = new $pb.BuilderInfo('PutMessageStateResponse')
    ..aOB(1, 'success')
    ..aOS(2, 'message')
    ..hasRequiredFields = false
  ;

  PutMessageStateResponse() : super();
  PutMessageStateResponse.fromBuffer(List<int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  PutMessageStateResponse.fromJson(String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  PutMessageStateResponse clone() => new PutMessageStateResponse()..mergeFromMessage(this);
  PutMessageStateResponse copyWith(void Function(PutMessageStateResponse) updates) => super.copyWith((message) => updates(message as PutMessageStateResponse));
  $pb.BuilderInfo get info_ => _i;
  static PutMessageStateResponse create() => new PutMessageStateResponse();
  static $pb.PbList<PutMessageStateResponse> createRepeated() => new $pb.PbList<PutMessageStateResponse>();
  static PutMessageStateResponse getDefault() => _defaultInstance ??= create()..freeze();
  static PutMessageStateResponse _defaultInstance;
  static void $checkItem(PutMessageStateResponse v) {
    if (v is! PutMessageStateResponse) $pb.checkItemFailed(v, _i.messageName);
  }

  bool get success => $_get(0, false);
  set success(bool v) { $_setBool(0, v); }
  bool hasSuccess() => $_has(0);
  void clearSuccess() => clearField(1);

  String get message => $_getS(1, '');
  set message(String v) { $_setString(1, v); }
  bool hasMessage() => $_has(1);
  void clearMessage() => clearField(2);
}

class PutMessageReceptionStateRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = new $pb.BuilderInfo('PutMessageReceptionStateRequest')
    ..aOS(1, 'messageID')
    ..e<MessageReceptionState>(2, 'status', $pb.PbFieldType.OE, MessageReceptionState.Draft, MessageReceptionState.valueOf, MessageReceptionState.values)
    ..hasRequiredFields = false
  ;

  PutMessageReceptionStateRequest() : super();
  PutMessageReceptionStateRequest.fromBuffer(List<int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  PutMessageReceptionStateRequest.fromJson(String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  PutMessageReceptionStateRequest clone() => new PutMessageReceptionStateRequest()..mergeFromMessage(this);
  PutMessageReceptionStateRequest copyWith(void Function(PutMessageReceptionStateRequest) updates) => super.copyWith((message) => updates(message as PutMessageReceptionStateRequest));
  $pb.BuilderInfo get info_ => _i;
  static PutMessageReceptionStateRequest create() => new PutMessageReceptionStateRequest();
  static $pb.PbList<PutMessageReceptionStateRequest> createRepeated() => new $pb.PbList<PutMessageReceptionStateRequest>();
  static PutMessageReceptionStateRequest getDefault() => _defaultInstance ??= create()..freeze();
  static PutMessageReceptionStateRequest _defaultInstance;
  static void $checkItem(PutMessageReceptionStateRequest v) {
    if (v is! PutMessageReceptionStateRequest) $pb.checkItemFailed(v, _i.messageName);
  }

  String get messageID => $_getS(0, '');
  set messageID(String v) { $_setString(0, v); }
  bool hasMessageID() => $_has(0);
  void clearMessageID() => clearField(1);

  MessageReceptionState get status => $_getN(1);
  set status(MessageReceptionState v) { setField(2, v); }
  bool hasStatus() => $_has(1);
  void clearStatus() => clearField(2);
}

class PutMessageReceptionStateResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = new $pb.BuilderInfo('PutMessageReceptionStateResponse')
    ..aOB(1, 'success')
    ..hasRequiredFields = false
  ;

  PutMessageReceptionStateResponse() : super();
  PutMessageReceptionStateResponse.fromBuffer(List<int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  PutMessageReceptionStateResponse.fromJson(String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  PutMessageReceptionStateResponse clone() => new PutMessageReceptionStateResponse()..mergeFromMessage(this);
  PutMessageReceptionStateResponse copyWith(void Function(PutMessageReceptionStateResponse) updates) => super.copyWith((message) => updates(message as PutMessageReceptionStateResponse));
  $pb.BuilderInfo get info_ => _i;
  static PutMessageReceptionStateResponse create() => new PutMessageReceptionStateResponse();
  static $pb.PbList<PutMessageReceptionStateResponse> createRepeated() => new $pb.PbList<PutMessageReceptionStateResponse>();
  static PutMessageReceptionStateResponse getDefault() => _defaultInstance ??= create()..freeze();
  static PutMessageReceptionStateResponse _defaultInstance;
  static void $checkItem(PutMessageReceptionStateResponse v) {
    if (v is! PutMessageReceptionStateResponse) $pb.checkItemFailed(v, _i.messageName);
  }

  bool get success => $_get(0, false);
  set success(bool v) { $_setBool(0, v); }
  bool hasSuccess() => $_has(0);
  void clearSuccess() => clearField(1);
}

class CreateConversationRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = new $pb.BuilderInfo('CreateConversationRequest')
    ..aOS(1, 'userID')
    ..aOS(2, 'chatID')
    ..e<ConversationType>(3, 'type', $pb.PbFieldType.OE, ConversationType.PeerToPeer, ConversationType.valueOf, ConversationType.values)
    ..hasRequiredFields = false
  ;

  CreateConversationRequest() : super();
  CreateConversationRequest.fromBuffer(List<int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  CreateConversationRequest.fromJson(String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  CreateConversationRequest clone() => new CreateConversationRequest()..mergeFromMessage(this);
  CreateConversationRequest copyWith(void Function(CreateConversationRequest) updates) => super.copyWith((message) => updates(message as CreateConversationRequest));
  $pb.BuilderInfo get info_ => _i;
  static CreateConversationRequest create() => new CreateConversationRequest();
  static $pb.PbList<CreateConversationRequest> createRepeated() => new $pb.PbList<CreateConversationRequest>();
  static CreateConversationRequest getDefault() => _defaultInstance ??= create()..freeze();
  static CreateConversationRequest _defaultInstance;
  static void $checkItem(CreateConversationRequest v) {
    if (v is! CreateConversationRequest) $pb.checkItemFailed(v, _i.messageName);
  }

  String get userID => $_getS(0, '');
  set userID(String v) { $_setString(0, v); }
  bool hasUserID() => $_has(0);
  void clearUserID() => clearField(1);

  String get chatID => $_getS(1, '');
  set chatID(String v) { $_setString(1, v); }
  bool hasChatID() => $_has(1);
  void clearChatID() => clearField(2);

  ConversationType get type => $_getN(2);
  set type(ConversationType v) { setField(3, v); }
  bool hasType() => $_has(2);
  void clearType() => clearField(3);
}

class CreateConversationResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = new $pb.BuilderInfo('CreateConversationResponse')
    ..aOS(1, 'chatID')
    ..aOS(2, 'message')
    ..hasRequiredFields = false
  ;

  CreateConversationResponse() : super();
  CreateConversationResponse.fromBuffer(List<int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  CreateConversationResponse.fromJson(String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  CreateConversationResponse clone() => new CreateConversationResponse()..mergeFromMessage(this);
  CreateConversationResponse copyWith(void Function(CreateConversationResponse) updates) => super.copyWith((message) => updates(message as CreateConversationResponse));
  $pb.BuilderInfo get info_ => _i;
  static CreateConversationResponse create() => new CreateConversationResponse();
  static $pb.PbList<CreateConversationResponse> createRepeated() => new $pb.PbList<CreateConversationResponse>();
  static CreateConversationResponse getDefault() => _defaultInstance ??= create()..freeze();
  static CreateConversationResponse _defaultInstance;
  static void $checkItem(CreateConversationResponse v) {
    if (v is! CreateConversationResponse) $pb.checkItemFailed(v, _i.messageName);
  }

  String get chatID => $_getS(0, '');
  set chatID(String v) { $_setString(0, v); }
  bool hasChatID() => $_has(0);
  void clearChatID() => clearField(1);

  String get message => $_getS(1, '');
  set message(String v) { $_setString(1, v); }
  bool hasMessage() => $_has(1);
  void clearMessage() => clearField(2);
}

class DeleteConversationRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = new $pb.BuilderInfo('DeleteConversationRequest')
    ..aOS(1, 'chatID')
    ..hasRequiredFields = false
  ;

  DeleteConversationRequest() : super();
  DeleteConversationRequest.fromBuffer(List<int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  DeleteConversationRequest.fromJson(String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  DeleteConversationRequest clone() => new DeleteConversationRequest()..mergeFromMessage(this);
  DeleteConversationRequest copyWith(void Function(DeleteConversationRequest) updates) => super.copyWith((message) => updates(message as DeleteConversationRequest));
  $pb.BuilderInfo get info_ => _i;
  static DeleteConversationRequest create() => new DeleteConversationRequest();
  static $pb.PbList<DeleteConversationRequest> createRepeated() => new $pb.PbList<DeleteConversationRequest>();
  static DeleteConversationRequest getDefault() => _defaultInstance ??= create()..freeze();
  static DeleteConversationRequest _defaultInstance;
  static void $checkItem(DeleteConversationRequest v) {
    if (v is! DeleteConversationRequest) $pb.checkItemFailed(v, _i.messageName);
  }

  String get chatID => $_getS(0, '');
  set chatID(String v) { $_setString(0, v); }
  bool hasChatID() => $_has(0);
  void clearChatID() => clearField(1);
}

class DeleteConversationResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = new $pb.BuilderInfo('DeleteConversationResponse')
    ..aOB(1, 'success')
    ..aOS(2, 'message')
    ..hasRequiredFields = false
  ;

  DeleteConversationResponse() : super();
  DeleteConversationResponse.fromBuffer(List<int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  DeleteConversationResponse.fromJson(String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  DeleteConversationResponse clone() => new DeleteConversationResponse()..mergeFromMessage(this);
  DeleteConversationResponse copyWith(void Function(DeleteConversationResponse) updates) => super.copyWith((message) => updates(message as DeleteConversationResponse));
  $pb.BuilderInfo get info_ => _i;
  static DeleteConversationResponse create() => new DeleteConversationResponse();
  static $pb.PbList<DeleteConversationResponse> createRepeated() => new $pb.PbList<DeleteConversationResponse>();
  static DeleteConversationResponse getDefault() => _defaultInstance ??= create()..freeze();
  static DeleteConversationResponse _defaultInstance;
  static void $checkItem(DeleteConversationResponse v) {
    if (v is! DeleteConversationResponse) $pb.checkItemFailed(v, _i.messageName);
  }

  bool get success => $_get(0, false);
  set success(bool v) { $_setBool(0, v); }
  bool hasSuccess() => $_has(0);
  void clearSuccess() => clearField(1);

  String get message => $_getS(1, '');
  set message(String v) { $_setString(1, v); }
  bool hasMessage() => $_has(1);
  void clearMessage() => clearField(2);
}

class PutIntoConversationRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = new $pb.BuilderInfo('PutIntoConversationRequest')
    ..aOS(1, 'userID')
    ..aOS(2, 'conversationID')
    ..hasRequiredFields = false
  ;

  PutIntoConversationRequest() : super();
  PutIntoConversationRequest.fromBuffer(List<int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  PutIntoConversationRequest.fromJson(String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  PutIntoConversationRequest clone() => new PutIntoConversationRequest()..mergeFromMessage(this);
  PutIntoConversationRequest copyWith(void Function(PutIntoConversationRequest) updates) => super.copyWith((message) => updates(message as PutIntoConversationRequest));
  $pb.BuilderInfo get info_ => _i;
  static PutIntoConversationRequest create() => new PutIntoConversationRequest();
  static $pb.PbList<PutIntoConversationRequest> createRepeated() => new $pb.PbList<PutIntoConversationRequest>();
  static PutIntoConversationRequest getDefault() => _defaultInstance ??= create()..freeze();
  static PutIntoConversationRequest _defaultInstance;
  static void $checkItem(PutIntoConversationRequest v) {
    if (v is! PutIntoConversationRequest) $pb.checkItemFailed(v, _i.messageName);
  }

  String get userID => $_getS(0, '');
  set userID(String v) { $_setString(0, v); }
  bool hasUserID() => $_has(0);
  void clearUserID() => clearField(1);

  String get conversationID => $_getS(1, '');
  set conversationID(String v) { $_setString(1, v); }
  bool hasConversationID() => $_has(1);
  void clearConversationID() => clearField(2);
}

class PutIntoConversationResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = new $pb.BuilderInfo('PutIntoConversationResponse')
    ..aOS(1, 'conversationID')
    ..hasRequiredFields = false
  ;

  PutIntoConversationResponse() : super();
  PutIntoConversationResponse.fromBuffer(List<int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  PutIntoConversationResponse.fromJson(String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  PutIntoConversationResponse clone() => new PutIntoConversationResponse()..mergeFromMessage(this);
  PutIntoConversationResponse copyWith(void Function(PutIntoConversationResponse) updates) => super.copyWith((message) => updates(message as PutIntoConversationResponse));
  $pb.BuilderInfo get info_ => _i;
  static PutIntoConversationResponse create() => new PutIntoConversationResponse();
  static $pb.PbList<PutIntoConversationResponse> createRepeated() => new $pb.PbList<PutIntoConversationResponse>();
  static PutIntoConversationResponse getDefault() => _defaultInstance ??= create()..freeze();
  static PutIntoConversationResponse _defaultInstance;
  static void $checkItem(PutIntoConversationResponse v) {
    if (v is! PutIntoConversationResponse) $pb.checkItemFailed(v, _i.messageName);
  }

  String get conversationID => $_getS(0, '');
  set conversationID(String v) { $_setString(0, v); }
  bool hasConversationID() => $_has(0);
  void clearConversationID() => clearField(1);
}

class UploadMediaRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = new $pb.BuilderInfo('UploadMediaRequest')
    ..a<List<int>>(1, 'content', $pb.PbFieldType.OY)
    ..hasRequiredFields = false
  ;

  UploadMediaRequest() : super();
  UploadMediaRequest.fromBuffer(List<int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  UploadMediaRequest.fromJson(String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  UploadMediaRequest clone() => new UploadMediaRequest()..mergeFromMessage(this);
  UploadMediaRequest copyWith(void Function(UploadMediaRequest) updates) => super.copyWith((message) => updates(message as UploadMediaRequest));
  $pb.BuilderInfo get info_ => _i;
  static UploadMediaRequest create() => new UploadMediaRequest();
  static $pb.PbList<UploadMediaRequest> createRepeated() => new $pb.PbList<UploadMediaRequest>();
  static UploadMediaRequest getDefault() => _defaultInstance ??= create()..freeze();
  static UploadMediaRequest _defaultInstance;
  static void $checkItem(UploadMediaRequest v) {
    if (v is! UploadMediaRequest) $pb.checkItemFailed(v, _i.messageName);
  }

  List<int> get content => $_getN(0);
  set content(List<int> v) { $_setBytes(0, v); }
  bool hasContent() => $_has(0);
  void clearContent() => clearField(1);
}

class UploadMediaResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = new $pb.BuilderInfo('UploadMediaResponse')
    ..aOS(1, 'mediaID')
    ..e<UploadMediaStatus>(2, 'status', $pb.PbFieldType.OE, UploadMediaStatus.Uploading, UploadMediaStatus.valueOf, UploadMediaStatus.values)
    ..hasRequiredFields = false
  ;

  UploadMediaResponse() : super();
  UploadMediaResponse.fromBuffer(List<int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  UploadMediaResponse.fromJson(String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  UploadMediaResponse clone() => new UploadMediaResponse()..mergeFromMessage(this);
  UploadMediaResponse copyWith(void Function(UploadMediaResponse) updates) => super.copyWith((message) => updates(message as UploadMediaResponse));
  $pb.BuilderInfo get info_ => _i;
  static UploadMediaResponse create() => new UploadMediaResponse();
  static $pb.PbList<UploadMediaResponse> createRepeated() => new $pb.PbList<UploadMediaResponse>();
  static UploadMediaResponse getDefault() => _defaultInstance ??= create()..freeze();
  static UploadMediaResponse _defaultInstance;
  static void $checkItem(UploadMediaResponse v) {
    if (v is! UploadMediaResponse) $pb.checkItemFailed(v, _i.messageName);
  }

  String get mediaID => $_getS(0, '');
  set mediaID(String v) { $_setString(0, v); }
  bool hasMediaID() => $_has(0);
  void clearMediaID() => clearField(1);

  UploadMediaStatus get status => $_getN(1);
  set status(UploadMediaStatus v) { setField(2, v); }
  bool hasStatus() => $_has(1);
  void clearStatus() => clearField(2);
}

class GetMediaRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = new $pb.BuilderInfo('GetMediaRequest')
    ..aOS(1, 'mediaID')
    ..hasRequiredFields = false
  ;

  GetMediaRequest() : super();
  GetMediaRequest.fromBuffer(List<int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  GetMediaRequest.fromJson(String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  GetMediaRequest clone() => new GetMediaRequest()..mergeFromMessage(this);
  GetMediaRequest copyWith(void Function(GetMediaRequest) updates) => super.copyWith((message) => updates(message as GetMediaRequest));
  $pb.BuilderInfo get info_ => _i;
  static GetMediaRequest create() => new GetMediaRequest();
  static $pb.PbList<GetMediaRequest> createRepeated() => new $pb.PbList<GetMediaRequest>();
  static GetMediaRequest getDefault() => _defaultInstance ??= create()..freeze();
  static GetMediaRequest _defaultInstance;
  static void $checkItem(GetMediaRequest v) {
    if (v is! GetMediaRequest) $pb.checkItemFailed(v, _i.messageName);
  }

  String get mediaID => $_getS(0, '');
  set mediaID(String v) { $_setString(0, v); }
  bool hasMediaID() => $_has(0);
  void clearMediaID() => clearField(1);
}

class GetMediaResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = new $pb.BuilderInfo('GetMediaResponse')
    ..a<List<int>>(1, 'content', $pb.PbFieldType.OY)
    ..hasRequiredFields = false
  ;

  GetMediaResponse() : super();
  GetMediaResponse.fromBuffer(List<int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  GetMediaResponse.fromJson(String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  GetMediaResponse clone() => new GetMediaResponse()..mergeFromMessage(this);
  GetMediaResponse copyWith(void Function(GetMediaResponse) updates) => super.copyWith((message) => updates(message as GetMediaResponse));
  $pb.BuilderInfo get info_ => _i;
  static GetMediaResponse create() => new GetMediaResponse();
  static $pb.PbList<GetMediaResponse> createRepeated() => new $pb.PbList<GetMediaResponse>();
  static GetMediaResponse getDefault() => _defaultInstance ??= create()..freeze();
  static GetMediaResponse _defaultInstance;
  static void $checkItem(GetMediaResponse v) {
    if (v is! GetMediaResponse) $pb.checkItemFailed(v, _i.messageName);
  }

  List<int> get content => $_getN(0);
  set content(List<int> v) { $_setBytes(0, v); }
  bool hasContent() => $_has(0);
  void clearContent() => clearField(1);
}

class GetMessagesRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = new $pb.BuilderInfo('GetMessagesRequest')
    ..hasRequiredFields = false
  ;

  GetMessagesRequest() : super();
  GetMessagesRequest.fromBuffer(List<int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  GetMessagesRequest.fromJson(String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  GetMessagesRequest clone() => new GetMessagesRequest()..mergeFromMessage(this);
  GetMessagesRequest copyWith(void Function(GetMessagesRequest) updates) => super.copyWith((message) => updates(message as GetMessagesRequest));
  $pb.BuilderInfo get info_ => _i;
  static GetMessagesRequest create() => new GetMessagesRequest();
  static $pb.PbList<GetMessagesRequest> createRepeated() => new $pb.PbList<GetMessagesRequest>();
  static GetMessagesRequest getDefault() => _defaultInstance ??= create()..freeze();
  static GetMessagesRequest _defaultInstance;
  static void $checkItem(GetMessagesRequest v) {
    if (v is! GetMessagesRequest) $pb.checkItemFailed(v, _i.messageName);
  }
}

class GetMessagesResponseItem extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = new $pb.BuilderInfo('GetMessagesResponseItem')
    ..aOS(1, 'recipientID')
    ..aOS(2, 'senderID')
    ..aOS(3, 'senderDeviceID')
    ..aInt64(4, 'messageID')
    ..aInt64(5, 'messageTimestamp')
    ..aOS(6, 'messageContents')
    ..aOB(7, 'messageEncrypted')
    ..hasRequiredFields = false
  ;

  GetMessagesResponseItem() : super();
  GetMessagesResponseItem.fromBuffer(List<int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  GetMessagesResponseItem.fromJson(String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  GetMessagesResponseItem clone() => new GetMessagesResponseItem()..mergeFromMessage(this);
  GetMessagesResponseItem copyWith(void Function(GetMessagesResponseItem) updates) => super.copyWith((message) => updates(message as GetMessagesResponseItem));
  $pb.BuilderInfo get info_ => _i;
  static GetMessagesResponseItem create() => new GetMessagesResponseItem();
  static $pb.PbList<GetMessagesResponseItem> createRepeated() => new $pb.PbList<GetMessagesResponseItem>();
  static GetMessagesResponseItem getDefault() => _defaultInstance ??= create()..freeze();
  static GetMessagesResponseItem _defaultInstance;
  static void $checkItem(GetMessagesResponseItem v) {
    if (v is! GetMessagesResponseItem) $pb.checkItemFailed(v, _i.messageName);
  }

  String get recipientID => $_getS(0, '');
  set recipientID(String v) { $_setString(0, v); }
  bool hasRecipientID() => $_has(0);
  void clearRecipientID() => clearField(1);

  String get senderID => $_getS(1, '');
  set senderID(String v) { $_setString(1, v); }
  bool hasSenderID() => $_has(1);
  void clearSenderID() => clearField(2);

  String get senderDeviceID => $_getS(2, '');
  set senderDeviceID(String v) { $_setString(2, v); }
  bool hasSenderDeviceID() => $_has(2);
  void clearSenderDeviceID() => clearField(3);

  Int64 get messageID => $_getI64(3);
  set messageID(Int64 v) { $_setInt64(3, v); }
  bool hasMessageID() => $_has(3);
  void clearMessageID() => clearField(4);

  Int64 get messageTimestamp => $_getI64(4);
  set messageTimestamp(Int64 v) { $_setInt64(4, v); }
  bool hasMessageTimestamp() => $_has(4);
  void clearMessageTimestamp() => clearField(5);

  String get messageContents => $_getS(5, '');
  set messageContents(String v) { $_setString(5, v); }
  bool hasMessageContents() => $_has(5);
  void clearMessageContents() => clearField(6);

  bool get messageEncrypted => $_get(6, false);
  set messageEncrypted(bool v) { $_setBool(6, v); }
  bool hasMessageEncrypted() => $_has(6);
  void clearMessageEncrypted() => clearField(7);
}

class PutMessageResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = new $pb.BuilderInfo('PutMessageResponse')
    ..aInt64(1, 'messageID')
    ..hasRequiredFields = false
  ;

  PutMessageResponse() : super();
  PutMessageResponse.fromBuffer(List<int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  PutMessageResponse.fromJson(String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  PutMessageResponse clone() => new PutMessageResponse()..mergeFromMessage(this);
  PutMessageResponse copyWith(void Function(PutMessageResponse) updates) => super.copyWith((message) => updates(message as PutMessageResponse));
  $pb.BuilderInfo get info_ => _i;
  static PutMessageResponse create() => new PutMessageResponse();
  static $pb.PbList<PutMessageResponse> createRepeated() => new $pb.PbList<PutMessageResponse>();
  static PutMessageResponse getDefault() => _defaultInstance ??= create()..freeze();
  static PutMessageResponse _defaultInstance;
  static void $checkItem(PutMessageResponse v) {
    if (v is! PutMessageResponse) $pb.checkItemFailed(v, _i.messageName);
  }

  Int64 get messageID => $_getI64(0);
  set messageID(Int64 v) { $_setInt64(0, v); }
  bool hasMessageID() => $_has(0);
  void clearMessageID() => clearField(1);
}

class PutMessageRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = new $pb.BuilderInfo('PutMessageRequest')
    ..aOS(1, 'recipientID')
    ..aInt64(2, 'messageID')
    ..aInt64(3, 'messageTimestamp')
    ..aOS(4, 'messageContents')
    ..aOB(5, 'messageEncrypted')
    ..hasRequiredFields = false
  ;

  PutMessageRequest() : super();
  PutMessageRequest.fromBuffer(List<int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  PutMessageRequest.fromJson(String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  PutMessageRequest clone() => new PutMessageRequest()..mergeFromMessage(this);
  PutMessageRequest copyWith(void Function(PutMessageRequest) updates) => super.copyWith((message) => updates(message as PutMessageRequest));
  $pb.BuilderInfo get info_ => _i;
  static PutMessageRequest create() => new PutMessageRequest();
  static $pb.PbList<PutMessageRequest> createRepeated() => new $pb.PbList<PutMessageRequest>();
  static PutMessageRequest getDefault() => _defaultInstance ??= create()..freeze();
  static PutMessageRequest _defaultInstance;
  static void $checkItem(PutMessageRequest v) {
    if (v is! PutMessageRequest) $pb.checkItemFailed(v, _i.messageName);
  }

  String get recipientID => $_getS(0, '');
  set recipientID(String v) { $_setString(0, v); }
  bool hasRecipientID() => $_has(0);
  void clearRecipientID() => clearField(1);

  Int64 get messageID => $_getI64(1);
  set messageID(Int64 v) { $_setInt64(1, v); }
  bool hasMessageID() => $_has(1);
  void clearMessageID() => clearField(2);

  Int64 get messageTimestamp => $_getI64(2);
  set messageTimestamp(Int64 v) { $_setInt64(2, v); }
  bool hasMessageTimestamp() => $_has(2);
  void clearMessageTimestamp() => clearField(3);

  String get messageContents => $_getS(3, '');
  set messageContents(String v) { $_setString(3, v); }
  bool hasMessageContents() => $_has(3);
  void clearMessageContents() => clearField(4);

  bool get messageEncrypted => $_get(4, false);
  set messageEncrypted(bool v) { $_setBool(4, v); }
  bool hasMessageEncrypted() => $_has(4);
  void clearMessageEncrypted() => clearField(5);
}

class PublicGetKeysRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = new $pb.BuilderInfo('PublicGetKeysRequest')
    ..aOS(1, 'userID')
    ..hasRequiredFields = false
  ;

  PublicGetKeysRequest() : super();
  PublicGetKeysRequest.fromBuffer(List<int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  PublicGetKeysRequest.fromJson(String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  PublicGetKeysRequest clone() => new PublicGetKeysRequest()..mergeFromMessage(this);
  PublicGetKeysRequest copyWith(void Function(PublicGetKeysRequest) updates) => super.copyWith((message) => updates(message as PublicGetKeysRequest));
  $pb.BuilderInfo get info_ => _i;
  static PublicGetKeysRequest create() => new PublicGetKeysRequest();
  static $pb.PbList<PublicGetKeysRequest> createRepeated() => new $pb.PbList<PublicGetKeysRequest>();
  static PublicGetKeysRequest getDefault() => _defaultInstance ??= create()..freeze();
  static PublicGetKeysRequest _defaultInstance;
  static void $checkItem(PublicGetKeysRequest v) {
    if (v is! PublicGetKeysRequest) $pb.checkItemFailed(v, _i.messageName);
  }

  String get userID => $_getS(0, '');
  set userID(String v) { $_setString(0, v); }
  bool hasUserID() => $_has(0);
  void clearUserID() => clearField(1);
}

class PublicGetKeysResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = new $pb.BuilderInfo('PublicGetKeysResponse')
    ..a<List<int>>(1, 'keys', $pb.PbFieldType.OY)
    ..hasRequiredFields = false
  ;

  PublicGetKeysResponse() : super();
  PublicGetKeysResponse.fromBuffer(List<int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  PublicGetKeysResponse.fromJson(String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  PublicGetKeysResponse clone() => new PublicGetKeysResponse()..mergeFromMessage(this);
  PublicGetKeysResponse copyWith(void Function(PublicGetKeysResponse) updates) => super.copyWith((message) => updates(message as PublicGetKeysResponse));
  $pb.BuilderInfo get info_ => _i;
  static PublicGetKeysResponse create() => new PublicGetKeysResponse();
  static $pb.PbList<PublicGetKeysResponse> createRepeated() => new $pb.PbList<PublicGetKeysResponse>();
  static PublicGetKeysResponse getDefault() => _defaultInstance ??= create()..freeze();
  static PublicGetKeysResponse _defaultInstance;
  static void $checkItem(PublicGetKeysResponse v) {
    if (v is! PublicGetKeysResponse) $pb.checkItemFailed(v, _i.messageName);
  }

  List<int> get keys => $_getN(0);
  set keys(List<int> v) { $_setBytes(0, v); }
  bool hasKeys() => $_has(0);
  void clearKeys() => clearField(1);
}

class PutKeysRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = new $pb.BuilderInfo('PutKeysRequest')
    ..aOS(1, 'userID')
    ..a<List<int>>(2, 'keys', $pb.PbFieldType.OY)
    ..hasRequiredFields = false
  ;

  PutKeysRequest() : super();
  PutKeysRequest.fromBuffer(List<int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  PutKeysRequest.fromJson(String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  PutKeysRequest clone() => new PutKeysRequest()..mergeFromMessage(this);
  PutKeysRequest copyWith(void Function(PutKeysRequest) updates) => super.copyWith((message) => updates(message as PutKeysRequest));
  $pb.BuilderInfo get info_ => _i;
  static PutKeysRequest create() => new PutKeysRequest();
  static $pb.PbList<PutKeysRequest> createRepeated() => new $pb.PbList<PutKeysRequest>();
  static PutKeysRequest getDefault() => _defaultInstance ??= create()..freeze();
  static PutKeysRequest _defaultInstance;
  static void $checkItem(PutKeysRequest v) {
    if (v is! PutKeysRequest) $pb.checkItemFailed(v, _i.messageName);
  }

  String get userID => $_getS(0, '');
  set userID(String v) { $_setString(0, v); }
  bool hasUserID() => $_has(0);
  void clearUserID() => clearField(1);

  List<int> get keys => $_getN(1);
  set keys(List<int> v) { $_setBytes(1, v); }
  bool hasKeys() => $_has(1);
  void clearKeys() => clearField(2);
}

class PutKeysResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = new $pb.BuilderInfo('PutKeysResponse')
    ..aOS(1, 'userID')
    ..hasRequiredFields = false
  ;

  PutKeysResponse() : super();
  PutKeysResponse.fromBuffer(List<int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  PutKeysResponse.fromJson(String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  PutKeysResponse clone() => new PutKeysResponse()..mergeFromMessage(this);
  PutKeysResponse copyWith(void Function(PutKeysResponse) updates) => super.copyWith((message) => updates(message as PutKeysResponse));
  $pb.BuilderInfo get info_ => _i;
  static PutKeysResponse create() => new PutKeysResponse();
  static $pb.PbList<PutKeysResponse> createRepeated() => new $pb.PbList<PutKeysResponse>();
  static PutKeysResponse getDefault() => _defaultInstance ??= create()..freeze();
  static PutKeysResponse _defaultInstance;
  static void $checkItem(PutKeysResponse v) {
    if (v is! PutKeysResponse) $pb.checkItemFailed(v, _i.messageName);
  }

  String get userID => $_getS(0, '');
  set userID(String v) { $_setString(0, v); }
  bool hasUserID() => $_has(0);
  void clearUserID() => clearField(1);
}

