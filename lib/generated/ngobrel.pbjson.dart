///
//  Generated code. Do not modify.
//  source: ngobrel.proto
///
// ignore_for_file: non_constant_identifier_names,library_prefixes,unused_import

const PutContactStatus$json = const {
  '1': 'PutContactStatus',
  '2': const [
    const {'1': 'Success', '2': 0},
    const {'1': 'GeneralError', '2': 1},
    const {'1': 'ContactIsNotInTheSystem', '2': 2},
  ],
};

const ConversationType$json = const {
  '1': 'ConversationType',
  '2': const [
    const {'1': 'PeerToPeer', '2': 0},
    const {'1': 'Group', '2': 1},
    const {'1': 'Management', '2': 2},
  ],
};

const MessageState$json = const {
  '1': 'MessageState',
  '2': const [
    const {'1': 'Normal', '2': 0},
    const {'1': 'Retracted', '2': 1},
  ],
};

const MessageReceptionState$json = const {
  '1': 'MessageReceptionState',
  '2': const [
    const {'1': 'Draft', '2': 0},
    const {'1': 'Sent', '2': 1},
    const {'1': 'Received', '2': 2},
    const {'1': 'Read', '2': 3},
  ],
};

const UploadMediaStatus$json = const {
  '1': 'UploadMediaStatus',
  '2': const [
    const {'1': 'Uploading', '2': 0},
    const {'1': 'Done', '2': 1},
    const {'1': 'Error', '2': 2},
  ],
};

const CreateProfileRequest$json = const {
  '1': 'CreateProfileRequest',
  '2': const [
    const {'1': 'deviceID', '3': 1, '4': 1, '5': 9, '10': 'deviceID'},
    const {'1': 'phoneNumber', '3': 2, '4': 1, '5': 9, '10': 'phoneNumber'},
  ],
};

const CreateProfileResponse$json = const {
  '1': 'CreateProfileResponse',
  '2': const [
    const {'1': 'userID', '3': 1, '4': 1, '5': 9, '10': 'userID'},
  ],
};

const EditProfileRequest$json = const {
  '1': 'EditProfileRequest',
  '2': const [
    const {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'email', '3': 2, '4': 1, '5': 9, '10': 'email'},
    const {'1': 'avatarMediaId', '3': 3, '4': 1, '5': 9, '10': 'avatarMediaId'},
  ],
};

const EditProfileResponse$json = const {
  '1': 'EditProfileResponse',
  '2': const [
    const {'1': 'success', '3': 1, '4': 1, '5': 8, '10': 'success'},
    const {'1': 'message', '3': 2, '4': 1, '5': 9, '10': 'message'},
  ],
};

const GetProfileRequest$json = const {
  '1': 'GetProfileRequest',
  '2': const [
    const {'1': 'userID', '3': 1, '4': 1, '5': 9, '10': 'userID'},
  ],
};

const GetProfileResponse$json = const {
  '1': 'GetProfileResponse',
  '2': const [
    const {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'email', '3': 2, '4': 1, '5': 9, '10': 'email'},
    const {'1': 'avatarMediaId', '3': 3, '4': 1, '5': 9, '10': 'avatarMediaId'},
  ],
};

const ListConversationsRequest$json = const {
  '1': 'ListConversationsRequest',
};

const ListConversationsResponse$json = const {
  '1': 'ListConversationsResponse',
  '2': const [
    const {'1': 'list', '3': 1, '4': 3, '5': 11, '6': '.Conversations', '10': 'list'},
  ],
};

const Conversations$json = const {
  '1': 'Conversations',
  '2': const [
    const {'1': 'chatID', '3': 1, '4': 1, '5': 9, '10': 'chatID'},
    const {'1': 'chatName', '3': 2, '4': 1, '5': 9, '10': 'chatName'},
    const {'1': 'excerpt', '3': 3, '4': 1, '5': 9, '10': 'excerpt'},
    const {'1': 'timestamp', '3': 4, '4': 1, '5': 3, '10': 'timestamp'},
    const {'1': 'notification', '3': 5, '4': 1, '5': 3, '10': 'notification'},
  ],
};

const UpdateConversationRequest$json = const {
  '1': 'UpdateConversationRequest',
  '2': const [
    const {'1': 'chatID', '3': 1, '4': 1, '5': 9, '10': 'chatID'},
    const {'1': 'excerpt', '3': 2, '4': 1, '5': 9, '10': 'excerpt'},
    const {'1': 'timestamp', '3': 3, '4': 1, '5': 3, '10': 'timestamp'},
  ],
};

const UpdateConversationResponse$json = const {
  '1': 'UpdateConversationResponse',
  '2': const [
    const {'1': 'success', '3': 1, '4': 1, '5': 8, '10': 'success'},
    const {'1': 'message', '3': 2, '4': 1, '5': 9, '10': 'message'},
  ],
};

const DeleteContactRequest$json = const {
  '1': 'DeleteContactRequest',
  '2': const [
    const {'1': 'userID', '3': 1, '4': 1, '5': 9, '10': 'userID'},
  ],
};

const DeleteContactResponse$json = const {
  '1': 'DeleteContactResponse',
  '2': const [
    const {'1': 'success', '3': 1, '4': 1, '5': 8, '10': 'success'},
    const {'1': 'message', '3': 2, '4': 1, '5': 9, '10': 'message'},
  ],
};

const GetContactsRequest$json = const {
  '1': 'GetContactsRequest',
};

const GetContactsResponse$json = const {
  '1': 'GetContactsResponse',
  '2': const [
    const {'1': 'list', '3': 1, '4': 3, '5': 11, '6': '.Contacts', '10': 'list'},
  ],
};

const Contacts$json = const {
  '1': 'Contacts',
  '2': const [
    const {'1': 'peerID', '3': 1, '4': 1, '5': 9, '10': 'peerID'},
    const {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'notification', '3': 3, '4': 1, '5': 3, '10': 'notification'},
  ],
};

const PutContactRequest$json = const {
  '1': 'PutContactRequest',
  '2': const [
    const {'1': 'phoneNumber', '3': 1, '4': 1, '5': 9, '10': 'phoneNumber'},
    const {'1': 'contactData', '3': 2, '4': 1, '5': 11, '6': '.Contacts', '10': 'contactData'},
  ],
};

const PutContactResponse$json = const {
  '1': 'PutContactResponse',
  '2': const [
    const {'1': 'status', '3': 1, '4': 1, '5': 14, '6': '.PutContactStatus', '10': 'status'},
    const {'1': 'message', '3': 2, '4': 1, '5': 9, '10': 'message'},
  ],
};

const GetMessageReceptionStateRequest$json = const {
  '1': 'GetMessageReceptionStateRequest',
  '2': const [
    const {'1': 'userID', '3': 1, '4': 1, '5': 9, '10': 'userID'},
    const {'1': 'messageID', '3': 2, '4': 1, '5': 9, '10': 'messageID'},
  ],
};

const GetMessageReceptionStateResponse$json = const {
  '1': 'GetMessageReceptionStateResponse',
  '2': const [
    const {'1': 'status', '3': 1, '4': 1, '5': 14, '6': '.MessageReceptionState', '10': 'status'},
  ],
};

const GetMessageStateRequest$json = const {
  '1': 'GetMessageStateRequest',
  '2': const [
    const {'1': 'userID', '3': 1, '4': 1, '5': 9, '10': 'userID'},
    const {'1': 'messageID', '3': 2, '4': 1, '5': 9, '10': 'messageID'},
  ],
};

const GetMessageStateResponse$json = const {
  '1': 'GetMessageStateResponse',
  '2': const [
    const {'1': 'state', '3': 1, '4': 1, '5': 14, '6': '.MessageState', '10': 'state'},
  ],
};

const PutMessageStateRequest$json = const {
  '1': 'PutMessageStateRequest',
  '2': const [
    const {'1': 'messageID', '3': 1, '4': 1, '5': 9, '10': 'messageID'},
    const {'1': 'status', '3': 2, '4': 1, '5': 14, '6': '.MessageReceptionState', '10': 'status'},
  ],
};

const PutMessageStateResponse$json = const {
  '1': 'PutMessageStateResponse',
  '2': const [
    const {'1': 'success', '3': 1, '4': 1, '5': 8, '10': 'success'},
    const {'1': 'message', '3': 2, '4': 1, '5': 9, '10': 'message'},
  ],
};

const PutMessageReceptionStateRequest$json = const {
  '1': 'PutMessageReceptionStateRequest',
  '2': const [
    const {'1': 'messageID', '3': 1, '4': 1, '5': 9, '10': 'messageID'},
    const {'1': 'status', '3': 2, '4': 1, '5': 14, '6': '.MessageReceptionState', '10': 'status'},
  ],
};

const PutMessageReceptionStateResponse$json = const {
  '1': 'PutMessageReceptionStateResponse',
  '2': const [
    const {'1': 'success', '3': 1, '4': 1, '5': 8, '10': 'success'},
  ],
};

const CreateConversationRequest$json = const {
  '1': 'CreateConversationRequest',
  '2': const [
    const {'1': 'userID', '3': 1, '4': 1, '5': 9, '10': 'userID'},
    const {'1': 'chatID', '3': 2, '4': 1, '5': 9, '10': 'chatID'},
    const {'1': 'type', '3': 3, '4': 1, '5': 14, '6': '.ConversationType', '10': 'type'},
  ],
};

const CreateConversationResponse$json = const {
  '1': 'CreateConversationResponse',
  '2': const [
    const {'1': 'chatID', '3': 1, '4': 1, '5': 9, '10': 'chatID'},
    const {'1': 'message', '3': 2, '4': 1, '5': 9, '10': 'message'},
  ],
};

const DeleteConversationRequest$json = const {
  '1': 'DeleteConversationRequest',
  '2': const [
    const {'1': 'chatID', '3': 1, '4': 1, '5': 9, '10': 'chatID'},
  ],
};

const DeleteConversationResponse$json = const {
  '1': 'DeleteConversationResponse',
  '2': const [
    const {'1': 'success', '3': 1, '4': 1, '5': 8, '10': 'success'},
    const {'1': 'message', '3': 2, '4': 1, '5': 9, '10': 'message'},
  ],
};

const PutIntoConversationRequest$json = const {
  '1': 'PutIntoConversationRequest',
  '2': const [
    const {'1': 'userID', '3': 1, '4': 1, '5': 9, '10': 'userID'},
    const {'1': 'conversationID', '3': 2, '4': 1, '5': 9, '10': 'conversationID'},
  ],
};

const PutIntoConversationResponse$json = const {
  '1': 'PutIntoConversationResponse',
  '2': const [
    const {'1': 'conversationID', '3': 1, '4': 1, '5': 9, '10': 'conversationID'},
  ],
};

const UploadMediaRequest$json = const {
  '1': 'UploadMediaRequest',
  '2': const [
    const {'1': 'content', '3': 1, '4': 1, '5': 12, '10': 'content'},
  ],
};

const UploadMediaResponse$json = const {
  '1': 'UploadMediaResponse',
  '2': const [
    const {'1': 'mediaID', '3': 1, '4': 1, '5': 9, '10': 'mediaID'},
    const {'1': 'status', '3': 2, '4': 1, '5': 14, '6': '.UploadMediaStatus', '10': 'status'},
  ],
};

const GetMediaRequest$json = const {
  '1': 'GetMediaRequest',
  '2': const [
    const {'1': 'mediaID', '3': 1, '4': 1, '5': 9, '10': 'mediaID'},
  ],
};

const GetMediaResponse$json = const {
  '1': 'GetMediaResponse',
  '2': const [
    const {'1': 'content', '3': 1, '4': 1, '5': 12, '10': 'content'},
  ],
};

const GetMessagesRequest$json = const {
  '1': 'GetMessagesRequest',
};

const GetMessagesResponseItem$json = const {
  '1': 'GetMessagesResponseItem',
  '2': const [
    const {'1': 'recipientID', '3': 1, '4': 1, '5': 9, '10': 'recipientID'},
    const {'1': 'senderID', '3': 2, '4': 1, '5': 9, '10': 'senderID'},
    const {'1': 'senderDeviceID', '3': 3, '4': 1, '5': 9, '10': 'senderDeviceID'},
    const {'1': 'messageID', '3': 4, '4': 1, '5': 3, '10': 'messageID'},
    const {'1': 'messageTimestamp', '3': 5, '4': 1, '5': 3, '10': 'messageTimestamp'},
    const {'1': 'messageContents', '3': 6, '4': 1, '5': 9, '10': 'messageContents'},
    const {'1': 'messageEncrypted', '3': 7, '4': 1, '5': 8, '10': 'messageEncrypted'},
  ],
};

const PutMessageResponse$json = const {
  '1': 'PutMessageResponse',
  '2': const [
    const {'1': 'messageID', '3': 1, '4': 1, '5': 3, '10': 'messageID'},
  ],
};

const PutMessageRequest$json = const {
  '1': 'PutMessageRequest',
  '2': const [
    const {'1': 'recipientID', '3': 1, '4': 1, '5': 9, '10': 'recipientID'},
    const {'1': 'messageID', '3': 2, '4': 1, '5': 3, '10': 'messageID'},
    const {'1': 'messageTimestamp', '3': 3, '4': 1, '5': 3, '10': 'messageTimestamp'},
    const {'1': 'messageContents', '3': 4, '4': 1, '5': 9, '10': 'messageContents'},
    const {'1': 'messageEncrypted', '3': 5, '4': 1, '5': 8, '10': 'messageEncrypted'},
  ],
};

const PublicGetKeysRequest$json = const {
  '1': 'PublicGetKeysRequest',
  '2': const [
    const {'1': 'userID', '3': 1, '4': 1, '5': 9, '10': 'userID'},
  ],
};

const PublicGetKeysResponse$json = const {
  '1': 'PublicGetKeysResponse',
  '2': const [
    const {'1': 'keys', '3': 1, '4': 1, '5': 12, '10': 'keys'},
  ],
};

const PutKeysRequest$json = const {
  '1': 'PutKeysRequest',
  '2': const [
    const {'1': 'userID', '3': 1, '4': 1, '5': 9, '10': 'userID'},
    const {'1': 'keys', '3': 2, '4': 1, '5': 12, '10': 'keys'},
  ],
};

const PutKeysResponse$json = const {
  '1': 'PutKeysResponse',
  '2': const [
    const {'1': 'userID', '3': 1, '4': 1, '5': 9, '10': 'userID'},
  ],
};

