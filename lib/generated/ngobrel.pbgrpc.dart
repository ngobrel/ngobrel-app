///
//  Generated code. Do not modify.
//  source: ngobrel.proto
///
// ignore_for_file: non_constant_identifier_names,library_prefixes,unused_import

import 'dart:async';

import 'package:grpc/grpc.dart';

import 'ngobrel.pb.dart';
export 'ngobrel.pb.dart';

class NgobrelClient extends Client {
  static final _$putMessage =
      new ClientMethod<PutMessageRequest, PutMessageResponse>(
          '/Ngobrel/PutMessage',
          (PutMessageRequest value) => value.writeToBuffer(),
          (List<int> value) => new PutMessageResponse.fromBuffer(value));
  static final _$getMessages =
      new ClientMethod<GetMessagesRequest, GetMessagesResponseItem>(
          '/Ngobrel/GetMessages',
          (GetMessagesRequest value) => value.writeToBuffer(),
          (List<int> value) => new GetMessagesResponseItem.fromBuffer(value));
  static final _$createConversation =
      new ClientMethod<CreateConversationRequest, CreateConversationResponse>(
          '/Ngobrel/CreateConversation',
          (CreateConversationRequest value) => value.writeToBuffer(),
          (List<int> value) =>
              new CreateConversationResponse.fromBuffer(value));
  static final _$listConversations =
      new ClientMethod<ListConversationsRequest, ListConversationsResponse>(
          '/Ngobrel/ListConversations',
          (ListConversationsRequest value) => value.writeToBuffer(),
          (List<int> value) => new ListConversationsResponse.fromBuffer(value));
  static final _$getContacts =
      new ClientMethod<GetContactsRequest, GetContactsResponse>(
          '/Ngobrel/GetContacts',
          (GetContactsRequest value) => value.writeToBuffer(),
          (List<int> value) => new GetContactsResponse.fromBuffer(value));

  NgobrelClient(ClientChannel channel, {CallOptions options})
      : super(channel, options: options);

  ResponseFuture<PutMessageResponse> putMessage(PutMessageRequest request,
      {CallOptions options}) {
    final call = $createCall(_$putMessage, new Stream.fromIterable([request]),
        options: options);
    return new ResponseFuture(call);
  }

  ResponseStream<GetMessagesResponseItem> getMessages(
      GetMessagesRequest request,
      {CallOptions options}) {
    final call = $createCall(_$getMessages, new Stream.fromIterable([request]),
        options: options);
    return new ResponseStream(call);
  }

  ResponseFuture<CreateConversationResponse> createConversation(
      CreateConversationRequest request,
      {CallOptions options}) {
    final call = $createCall(
        _$createConversation, new Stream.fromIterable([request]),
        options: options);
    return new ResponseFuture(call);
  }

  ResponseFuture<ListConversationsResponse> listConversations(
      ListConversationsRequest request,
      {CallOptions options}) {
    final call = $createCall(
        _$listConversations, new Stream.fromIterable([request]),
        options: options);
    return new ResponseFuture(call);
  }

  ResponseFuture<GetContactsResponse> getContacts(GetContactsRequest request,
      {CallOptions options}) {
    final call = $createCall(_$getContacts, new Stream.fromIterable([request]),
        options: options);
    return new ResponseFuture(call);
  }
}

abstract class NgobrelServiceBase extends Service {
  String get $name => 'Ngobrel';

  NgobrelServiceBase() {
    $addMethod(new ServiceMethod<PutMessageRequest, PutMessageResponse>(
        'PutMessage',
        putMessage_Pre,
        false,
        false,
        (List<int> value) => new PutMessageRequest.fromBuffer(value),
        (PutMessageResponse value) => value.writeToBuffer()));
    $addMethod(new ServiceMethod<GetMessagesRequest, GetMessagesResponseItem>(
        'GetMessages',
        getMessages_Pre,
        false,
        true,
        (List<int> value) => new GetMessagesRequest.fromBuffer(value),
        (GetMessagesResponseItem value) => value.writeToBuffer()));
    $addMethod(new ServiceMethod<CreateConversationRequest,
            CreateConversationResponse>(
        'CreateConversation',
        createConversation_Pre,
        false,
        false,
        (List<int> value) => new CreateConversationRequest.fromBuffer(value),
        (CreateConversationResponse value) => value.writeToBuffer()));
    $addMethod(
        new ServiceMethod<ListConversationsRequest, ListConversationsResponse>(
            'ListConversations',
            listConversations_Pre,
            false,
            false,
            (List<int> value) => new ListConversationsRequest.fromBuffer(value),
            (ListConversationsResponse value) => value.writeToBuffer()));
    $addMethod(new ServiceMethod<GetContactsRequest, GetContactsResponse>(
        'GetContacts',
        getContacts_Pre,
        false,
        false,
        (List<int> value) => new GetContactsRequest.fromBuffer(value),
        (GetContactsResponse value) => value.writeToBuffer()));
  }

  Future<PutMessageResponse> putMessage_Pre(
      ServiceCall call, Future request) async {
    return putMessage(call, await request);
  }

  Stream<GetMessagesResponseItem> getMessages_Pre(
      ServiceCall call, Future request) async* {
    yield* getMessages(call, (await request) as GetMessagesRequest);
  }

  Future<CreateConversationResponse> createConversation_Pre(
      ServiceCall call, Future request) async {
    return createConversation(call, await request);
  }

  Future<ListConversationsResponse> listConversations_Pre(
      ServiceCall call, Future request) async {
    return listConversations(call, await request);
  }

  Future<GetContactsResponse> getContacts_Pre(
      ServiceCall call, Future request) async {
    return getContacts(call, await request);
  }

  Future<PutMessageResponse> putMessage(
      ServiceCall call, PutMessageRequest request);
  Stream<GetMessagesResponseItem> getMessages(
      ServiceCall call, GetMessagesRequest request);
  Future<CreateConversationResponse> createConversation(
      ServiceCall call, CreateConversationRequest request);
  Future<ListConversationsResponse> listConversations(
      ServiceCall call, ListConversationsRequest request);
  Future<GetContactsResponse> getContacts(
      ServiceCall call, GetContactsRequest request);
}
