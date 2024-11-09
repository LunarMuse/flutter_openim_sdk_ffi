part of flutter_openim_sdk_ffi;

class Message {
  /// Message ID, a unique identifier.
  String? clientMsgID;

  /// Server-generated ID.
  String? serverMsgID;

  /// Creation time.
  int? createTime;

  /// Sending time.
  int? sendTime;

  /// Conversation type [ConversationType].
  int? sessionType;

  /// Sender's ID.
  String? sendID;

  /// Receiver's ID.
  String? recvID;

  /// Source.
  int? msgFrom;

  /// Message type [MessageType].
  int? contentType;

  /// Platform [Platform].
  int? senderPlatformID;

  /// Sender's nickname.
  String? senderNickname;

  /// Sender's avatar.
  String? senderFaceUrl;

  /// Group ID.
  String? groupID;

  /// Message localEx.
  String? localEx;

  /// Message sequence number.
  int? seq;

  /// Whether it's read.
  bool? isRead;

  /// Read time.
  int? hasReadTime;

  /// Message sending status [MessageStatus].
  int? status;

  /// Is it a reaction.
  bool? isReact;

  /// Is it an external extension.
  bool? isExternalExtensions;

  /// Offline display content.
  OfflinePushInfo? offlinePush;

  /// Additional information.
  String? attachedInfo;

  /// Extended information.
  String? ex;

  /// Custom extended information, currently used for message time segmentation on the client side.
  Map<String, dynamic> exMap = {};

  /// Image.
  PictureElem? pictureElem;

  /// Voice.
  SoundElem? soundElem;

  /// Video.
  VideoElem? videoElem;

  /// File.
  FileElem? fileElem;

  /// @ Information.
  AtTextElem? atTextElem;

  /// Location.
  LocationElem? locationElem;

  /// Custom.
  CustomElem? customElem;

  /// Quote.
  QuoteElem? quoteElem;

  /// Merge.
  MergeElem? mergeElem;

  /// Notification.
  NotificationElem? notificationElem;

  /// Custom emoji.
  FaceElem? faceElem;

  /// Additional information.
  AttachedInfoElem? attachedInfoElem;

  /// Text content.
  TextElem? textElem;

  /// Business card.
  CardElem? cardElem;

  ///
  AdvancedTextElem? advancedTextElem;

  ///
  TypingElem? typingElem;

  Message({
    clientMsgID,
    serverMsgID,
    createTime,
    sendTime,
    sessionType,
    sendID,
    recvID,
    msgFrom,
    contentType,
    senderPlatformID,
    senderNickname,
    senderFaceUrl,
    groupID,
    localEx,
    seq,
    isRead,
    hasReadTime,
    status,
    offlinePush,
    attachedInfo,
    ex,
    exMap = const <String, dynamic>{},
    pictureElem,
    soundElem,
    videoElem,
    fileElem,
    atTextElem,
    locationElem,
    customElem,
    quoteElem,
    mergeElem,
    notificationElem,
    faceElem,
    attachedInfoElem,
    isExternalExtensions,
    isReact,
    textElem,
    cardElem,
    advancedTextElem,
    typingElem,
  });

  Message.fromJson(Map<String, dynamic> json) {
    clientMsgID = json['clientMsgID'];
    serverMsgID = json['serverMsgID'];
    createTime = json['createTime'];
    sendTime = json['sendTime'];
    sendID = json['sendID'];
    recvID = json['recvID'];
    msgFrom = json['msgFrom'];
    contentType = json['contentType'];
    senderPlatformID = json['senderPlatformID'];
    senderNickname = json['senderNickname'];
    senderFaceUrl = json['senderFaceUrl'];
    groupID = json['groupID'];
    localEx = json['localEx'];
    seq = json['seq'];
    isRead = json['isRead'];
    status = json['status'];
    offlinePush = json['offlinePush'] != null ? OfflinePushInfo.fromJson(json['offlinePush']) : null;
    attachedInfo = json['attachedInfo'];
    ex = json['ex'];
    exMap = json['exMap'] ?? jsonDecode(ex ?? '{}');
    sessionType = json['sessionType'];
    pictureElem = json['pictureElem'] != null ? PictureElem.fromJson(json['pictureElem']) : null;
    soundElem = json['soundElem'] != null ? SoundElem.fromJson(json['soundElem']) : null;
    videoElem = json['videoElem'] != null ? VideoElem.fromJson(json['videoElem']) : null;
    fileElem = json['fileElem'] != null ? FileElem.fromJson(json['fileElem']) : null;
    atTextElem = json['atTextElem'] != null ? AtTextElem.fromJson(json['atTextElem']) : null;
    locationElem = json['locationElem'] != null ? LocationElem.fromJson(json['locationElem']) : null;

    customElem = json['customElem'] != null ? CustomElem.fromJson(json['customElem']) : null;
    quoteElem = json['quoteElem'] != null ? QuoteElem.fromJson(json['quoteElem']) : null;
    mergeElem = json['mergeElem'] != null ? MergeElem.fromJson(json['mergeElem']) : null;
    notificationElem = json['notificationElem'] != null ? NotificationElem.fromJson(json['notificationElem']) : null;
    faceElem = json['faceElem'] != null ? FaceElem.fromJson(json['faceElem']) : null;
    attachedInfoElem = json['attachedInfoElem'] != null ? AttachedInfoElem.fromJson(json['attachedInfoElem']) : null;
    hasReadTime = json['hasReadTime'] ?? attachedInfoElem?.hasReadTime;
    isExternalExtensions = json['isExternalExtensions'];
    isReact = json['isReact'];
    textElem = json['textElem'] != null ? TextElem.fromJson(json['textElem']) : null;
    cardElem = json['cardElem'] != null ? CardElem.fromJson(json['cardElem']) : null;
    advancedTextElem = json['advancedTextElem'] != null ? AdvancedTextElem.fromJson(json['advancedTextElem']) : null;
    typingElem = json['typingElem'] != null ? TypingElem.fromJson(json['typingElem']) : null;
  }

  Map<String, dynamic> toJson() {
    return {
      'clientMsgID': clientMsgID,
      'serverMsgID': serverMsgID,
      'status': status,
      'createTime': createTime,
      'sendTime': sendTime,
      'sendID': sendID,
      'recvID': recvID,
      'msgFrom': msgFrom,
      'contentType': contentType,
      'senderPlatformID': senderPlatformID,
      'senderNickname': senderNickname,
      'senderFaceUrl': senderFaceUrl,
      'groupID': groupID,
      'localEx': localEx,
      'seq': seq,
      'isRead': isRead,
      'hasReadTime': hasReadTime,
      'offlinePush': offlinePush?.toJson(),
      'attachedInfo': attachedInfo,
      'ex': ex,
      'exMap': exMap,
      'sessionType': sessionType,
      'pictureElem': pictureElem?.toJson(),
      'soundElem': soundElem?.toJson(),
      'videoElem': videoElem?.toJson(),
      'fileElem': fileElem?.toJson(),
      'atTextElem': atTextElem?.toJson(),
      'locationElem': locationElem?.toJson(),
      'customElem': customElem?.toJson(),
      'quoteElem': quoteElem?.toJson(),
      'mergeElem': mergeElem?.toJson(),
      'notificationElem': notificationElem?.toJson(),
      'faceElem': faceElem?.toJson(),
      'attachedInfoElem': attachedInfoElem?.toJson(),
      'isExternalExtensions': isExternalExtensions,
      'isReact': isReact,
      'textElem': textElem?.toJson(),
      'cardElem': cardElem?.toJson(),
      'advancedTextElem': advancedTextElem?.toJson(),
      'typingElem': typingElem?.toJson(),
    };
  }

  @override
  bool operator ==(Object other) => identical(this, other) || other is Message && runtimeType == other.runtimeType && clientMsgID == other.clientMsgID;

  @override
  int get hashCode => clientMsgID.hashCode;

  void update(Message message) {
    if (this != message) return;
    serverMsgID = message.serverMsgID;
    createTime = message.createTime;
    sendTime = message.sendTime;
    sendID = message.sendID;
    recvID = message.recvID;
    msgFrom = message.msgFrom;
    contentType = message.contentType;
    senderPlatformID = message.senderPlatformID;
    senderNickname = message.senderNickname;
    senderFaceUrl = message.senderFaceUrl;
    groupID = message.groupID;
    // content = message.content;
    seq = message.seq;
    isRead = message.isRead;
    hasReadTime = message.hasReadTime;
    status = message.status;
    offlinePush = message.offlinePush;
    attachedInfo = message.attachedInfo;
    ex = message.ex;
    exMap = message.exMap;
    sessionType = message.sessionType;
    pictureElem = message.pictureElem;
    soundElem = message.soundElem;
    videoElem = message.videoElem;
    fileElem = message.fileElem;
    atTextElem = message.atTextElem;
    locationElem = message.locationElem;
    customElem = message.customElem;
    quoteElem = message.quoteElem;
    mergeElem = message.mergeElem;
    notificationElem = message.notificationElem;
    faceElem = message.faceElem;
    attachedInfoElem = message.attachedInfoElem;
    textElem = message.textElem;
    cardElem = message.cardElem;
    advancedTextElem = message.advancedTextElem;
    typingElem = message.typingElem;
  }

  /// Single chat message
  bool get isSingleChat => sessionType == ConversationType.single;

  /// Group chat message
  bool get isGroupChat => sessionType == ConversationType.group || sessionType == ConversationType.superGroup;
}

/// Image message content
class PictureElem {
  /// Original path
  String? sourcePath;

  /// Original picture object
  PictureInfo? sourcePicture;

  /// Big picture object
  PictureInfo? bigPicture;

  /// Thumbnail picture object
  PictureInfo? snapshotPicture;

  PictureElem({sourcePath, sourcePicture, bigPicture, snapshotPicture});

  PictureElem.fromJson(Map<String, dynamic> json) {
    sourcePath = json['sourcePath'];
    sourcePicture = json['sourcePicture'] != null ? PictureInfo.fromJson(json['sourcePicture']) : null;
    bigPicture = json['bigPicture'] != null ? PictureInfo.fromJson(json['bigPicture']) : null;
    snapshotPicture = json['snapshotPicture'] != null ? PictureInfo.fromJson(json['snapshotPicture']) : null;
  }

  Map<String, dynamic> toJson() {
    return {
      'sourcePath': sourcePath,
      'sourcePicture': sourcePicture?.toJson(),
      'bigPicture': bigPicture?.toJson(),
      'snapshotPicture': snapshotPicture?.toJson(),
    };
  }
}

/// Image information
class PictureInfo {
  /// ID
  String? uuid;

  /// Image MIME type
  String? type;

  /// Size
  int? size;

  /// Width
  int? width;

  /// Height
  int? height;

  /// Image URL
  String? url;

  PictureInfo({uuid, type, size, width, height, url});

  PictureInfo.fromJson(Map<String, dynamic> json) {
    uuid = json['uuid'];
    type = json['type'];
    size = json['size'];
    width = json['width'];
    height = json['height'];
    url = json['url'];
  }

  Map<String, dynamic> toJson() {
    return {
      'uuid': uuid,
      'type': type,
      'size': size,
      'width': width,
      'height': height,
      'url': url,
    };
  }
}

/// Voice message content
class SoundElem {
  /// ID
  String? uuid;

  /// Original path
  String? soundPath;

  /// URL address
  String? sourceUrl;

  /// Size
  int? dataSize;

  /// Duration in seconds
  int? duration;

  SoundElem({uuid, soundPath, sourceUrl, dataSize, duration});

  SoundElem.fromJson(Map<String, dynamic> json) {
    uuid = json['uuid'];
    soundPath = json['soundPath'];
    sourceUrl = json['sourceUrl'];
    dataSize = json['dataSize'];
    duration = json['duration'];
  }

  Map<String, dynamic> toJson() {
    return {
      'uuid': uuid,
      'soundPath': soundPath,
      'sourceUrl': sourceUrl,
      'dataSize': dataSize,
      'duration': duration,
    };
  }
}

/// Video message content
class VideoElem {
  /// Video path
  String? videoPath;

  /// UUID
  String? videoUUID;

  /// URL address of the video
  String? videoUrl;

  /// MIME type
  String? videoType;

  /// Size
  int? videoSize;

  /// Duration in seconds
  int? duration;

  /// Snapshot path
  String? snapshotPath;

  /// Snapshot UUID
  String? snapshotUUID;

  /// Snapshot size
  int? snapshotSize;

  /// Snapshot URL address
  String? snapshotUrl;

  /// Snapshot width
  int? snapshotWidth;

  /// Snapshot height
  int? snapshotHeight;

  VideoElem({videoPath, videoUUID, videoUrl, videoType, videoSize, duration, snapshotPath, snapshotUUID, snapshotSize, snapshotUrl, snapshotWidth, snapshotHeight});

  VideoElem.fromJson(Map<String, dynamic> json) {
    videoPath = json['videoPath'];
    videoUUID = json['videoUUID'];
    videoUrl = json['videoUrl'];
    videoType = json['videoType'];
    videoSize = json['videoSize'];
    duration = json['duration'];
    snapshotPath = json['snapshotPath'];
    snapshotUUID = json['snapshotUUID'];
    snapshotSize = json['snapshotSize'];
    snapshotUrl = json['snapshotUrl'];
    snapshotWidth = json['snapshotWidth'];
    snapshotHeight = json['snapshotHeight'];
  }

  Map<String, dynamic> toJson() {
    return {
      "videoPath": videoPath,
      "videoUUID": videoUUID,
      "videoUrl": videoUrl,
      "videoType": videoType,
      "videoSize": videoSize,
      "duration": duration,
      "snapshotPath": snapshotPath,
      "snapshotUUID": snapshotUUID,
      "snapshotSize": snapshotSize,
      "snapshotUrl": snapshotUrl,
      "snapshotWidth": snapshotWidth,
      "snapshotHeight": snapshotHeight,
    };
  }
}

/// File message content
class FileElem {
  /// File path
  String? filePath;

  /// UUID
  String? uuid;

  /// File URL address
  String? sourceUrl;

  /// File name
  String? fileName;

  /// File size
  int? fileSize;

  FileElem({filePath, uuid, sourceUrl, fileName, fileSize});

  FileElem.fromJson(Map<String, dynamic> json) {
    filePath = json['filePath'];
    uuid = json['uuid'];
    sourceUrl = json['sourceUrl'];
    fileName = json['fileName'];
    fileSize = json['fileSize'];
  }

  Map<String, dynamic> toJson() {
    return {
      'filePath': filePath,
      'uuid': uuid,
      'sourceUrl': sourceUrl,
      'fileName': fileName,
      'fileSize': fileSize,
    };
  }
}

/// @ Message Content
class AtTextElem {
  /// Message content
  String? text;

  /// List of user IDs mentioned in the message
  List<String>? atUserList;

  /// Whether it includes a mention of oneself
  bool? isAtSelf;

  /// List of user IDs and their nicknames mentioned in the message, used to replace user IDs with nicknames in the message content
  List<AtUserInfo>? atUsersInfo;

  /// Message that is being replied to, when replying to someone and mentioning others
  Message? quoteMessage;

  AtTextElem({
    text,
    atUserList,
    isAtSelf,
    atUsersInfo,
    quoteMessage,
  });

  AtTextElem.fromJson(Map<String, dynamic> json) {
    text = json['text'];
    if (json['atUserList'] is List) {
      atUserList = (json['atUserList'] as List).map((e) => '$e').toList();
    }
    isAtSelf = json['isAtSelf'];
    if (json['atUsersInfo'] is List) {
      atUsersInfo = (json['atUsersInfo'] as List).map((e) => AtUserInfo.fromJson(e)).toList();
    }
    quoteMessage = null != json['quoteMessage'] ? Message.fromJson(json['quoteMessage']) : null;
  }

  Map<String, dynamic> toJson() {
    return {
      'text': text,
      'atUserList': atUserList,
      'isAtSelf': isAtSelf,
      'atUsersInfo': atUsersInfo?.map((e) => e.toJson()).toList(),
      'quoteMessage': quoteMessage?.toJson(),
    };
  }
}

/// Location Message
class LocationElem {
  /// Location description
  String? description;

  /// Longitude
  double? longitude;

  /// Latitude
  double? latitude;

  LocationElem({description, longitude, latitude});

  LocationElem.fromJson(Map<String, dynamic> json) {
    description = json['description'];
    if (json['longitude'] is int) {
      longitude = (json['longitude'] as int).toDouble();
    } else {
      longitude = json['longitude'];
    }

    if (json['latitude'] is int) {
      latitude = (json['latitude'] as int).toDouble();
    } else {
      latitude = json['latitude'];
    }
  }

  Map<String, dynamic> toJson() {
    return {
      'description': description,
      'longitude': longitude,
      'latitude': latitude,
    };
  }
}

/// Custom Message
class CustomElem {
  /// Custom data
  String? data;

  /// Extended content
  String? extension;

  /// Description
  String? description;

  CustomElem({data, extension, description});

  CustomElem.fromJson(Map<String, dynamic> json) {
    data = json['data'];
    extension = json['extension'];
    description = json['description'];
  }

  Map<String, dynamic> toJson() {
    return {
      'data': data,
      'extension': extension,
      'description': description,
    };
  }
}

/// Quoted Message (Reply to a message)
class QuoteElem {
  /// Reply content
  String? text;

  /// The message being replied to
  Message? quoteMessage;

  QuoteElem({text, quoteMessage});

  QuoteElem.fromJson(Map<String, dynamic> json) {
    text = json['text'];
    if (json['quoteMessage'] is Map) {
      quoteMessage = Message.fromJson(json['quoteMessage']);
    }
  }

  Map<String, dynamic> toJson() {
    return {
      'text': text,
      'quoteMessage': quoteMessage!.toJson(),
    };
  }
}

/// Merged Message Body
class MergeElem {
  /// Title
  String? title;

  /// Summary
  List<String>? abstractList;

  /// List of specific messages to merge
  List<Message>? multiMessage;

  MergeElem({title, abstractList, multiMessage});

  MergeElem.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    if (json['abstractList'] is List) {
      abstractList = json['abstractList'].cast<String>();
    }
    if (json['multiMessage'] is List) {
      multiMessage = (json['multiMessage'] as List).map((e) => Message.fromJson(e)).toList();
    }
  }

  Map<String, dynamic> toJson() {
    return {
      'title': title,
      'abstractList': abstractList,
      'multiMessage': multiMessage?.map((e) => e.toJson()).toList(),
    };
  }
}

/// Notification
class NotificationElem {
  /// Details
  String? detail;

  /// Default tips
  String? defaultTips;

  NotificationElem({detail, defaultTips});

  NotificationElem.fromJson(Map<String, dynamic> json) {
    detail = json['detail'];
    defaultTips = json['defaultTips'];
  }

  Map<String, dynamic> toJson() {
    return {
      'detail': detail,
      'defaultTips': defaultTips,
    };
  }
}

/// Emoticon
class FaceElem {
  /// Position emoticon, user-defined embedded emoticon for peer-to-peer communication
  int? index;

  /// Other emoticons, such as URL emoticons directly returning the URL
  String? data;

  FaceElem({index, data});

  FaceElem.fromJson(Map<String, dynamic> json) {
    index = json['index'];
    data = json['data'];
  }

  Map<String, dynamic> toJson() {
    return {
      'index': index,
      'data': data,
    };
  }
}

/// Additional Information
class AttachedInfoElem {
  /// Group message read information
  GroupHasReadInfo? groupHasReadInfo;

  /// Whether it is a private chat message (burn after reading message), valid for one-on-one chats
  bool? isPrivateChat;

  /// Read time
  int? hasReadTime;

  /// Reading duration in seconds
  /// That is, it triggers destruction after burnDuration seconds from the hasReadTime time
  int? burnDuration;

  /// Do not send offline push notifications
  bool? notSenderNotificationPush;

  AttachedInfoElem({
    groupHasReadInfo,
    isPrivateChat,
    hasReadTime,
    burnDuration,
    notSenderNotificationPush,
  });

  AttachedInfoElem.fromJson(Map<String, dynamic> json) {
    groupHasReadInfo = json['groupHasReadInfo'] == null ? null : GroupHasReadInfo.fromJson(json['groupHasReadInfo']);
    isPrivateChat = json['isPrivateChat'];
    hasReadTime = json['hasReadTime'];
    burnDuration = json['burnDuration'];
    notSenderNotificationPush = json['notSenderNotificationPush'];
  }

  Map<String, dynamic> toJson() {
    return {
      'groupHasReadInfo': groupHasReadInfo?.toJson(),
      'isPrivateChat': isPrivateChat,
      'hasReadTime': hasReadTime,
      'burnDuration': burnDuration,
      'notSenderNotificationPush': notSenderNotificationPush,
    };
  }
}

class TextElem {
  String? content;

  TextElem({content});

  TextElem.fromJson(Map<String, dynamic> json) {
    content = json['content'];
  }

  Map<String, dynamic> toJson() {
    return {
      'content': content,
    };
  }
}

class CardElem {
  String? userID;
  String? nickname;
  String? faceURL;
  String? ex;

  CardElem({userID, nickname, faceURL, ex});

  CardElem.fromJson(Map<String, dynamic> json) {
    userID = json['userID'];
    nickname = json['nickname'];
    faceURL = json['faceURL'];
    ex = json['ex'];
  }

  Map<String, dynamic> toJson() {
    return {
      'userID': userID,
      'nickname': nickname,
      'faceURL': faceURL,
      'ex': ex,
    };
  }
}

class TypingElem {
  String? msgTips;

  TypingElem({msgTips});

  TypingElem.fromJson(Map<String, dynamic> json) {
    msgTips = json['msgTips'];
  }

  Map<String, dynamic> toJson() {
    return {
      'msgTips': msgTips,
    };
  }
}

class AdvancedTextElem {
  String? text;
  List<MessageEntity>? messageEntityList;

  AdvancedTextElem({text, messageEntityList});

  AdvancedTextElem.fromJson(Map<String, dynamic> json) {
    text = json['text'];
    messageEntityList = json['messageEntityList'] == null ? null : (json['messageEntityList'] as List).map((e) => MessageEntity.fromJson(e)).toList();
  }

  Map<String, dynamic> toJson() {
    return {
      'text': text,
      'messageEntityList': messageEntityList?.map((e) => e.toJson()).toList(),
    };
  }
}

class MessageEntity {
  String? type;
  int? offset;
  int? length;
  String? url;
  String? ex;

  MessageEntity({type, offset, length, url, ex});

  MessageEntity.fromJson(Map<String, dynamic> json) {
    type = json['type'];
    offset = json['offset'];
    length = json['length'];
    url = json['url'];
    ex = json['ex'];
  }

  Map<String, dynamic> toJson() {
    return {
      'type': type,
      'offset': offset,
      'length': length,
      'url': url,
      'ex': ex,
    };
  }
}

/// Group message read information
class GroupHasReadInfo {
  /// Total number of reads
  int? hasReadCount;

  int? unreadCount;

  GroupHasReadInfo.fromJson(Map<String, dynamic> json) {
    hasReadCount = json['hasReadCount'] ?? 0;
    unreadCount = json['unreadCount'] ?? 0;
  }

  Map<String, dynamic> toJson() {
    return {
      'hasReadCount': hasReadCount,
      'unreadCount': unreadCount,
    };
  }
}

/// Message read receipt information
class ReadReceiptInfo {
  /// Sender ID
  String? userID;

  /// Group ID
  String? groupID;

  /// List of clientMsgIDs for read messages
  List<String>? msgIDList;

  /// Read time
  int? readTime;

  /// Message source
  int? msgFrom;

  /// Message type [MessageType]
  int? contentType;

  /// Conversation type [ConversationType]
  int? sessionType;

  ReadReceiptInfo({userID, groupID, msgIDList, readTime, msgFrom, contentType, sessionType});

  ReadReceiptInfo.fromJson(Map<String, dynamic> json) {
    userID = json['uid'] ?? json['userID'];
    groupID = json['groupID'];
    if (json['msgIDList'] is List) {
      msgIDList = (json['msgIDList'] as List).map((e) => '$e').toList();
    }
    readTime = json['readTime'];
    msgFrom = json['msgFrom'];
    contentType = json['contentType'];
    sessionType = json['sessionType'];
  }

  Map<String, dynamic> toJson() {
    return {
      'userID': userID,
      'groupID': groupID,
      'msgIDList': msgIDList,
      'readTime': readTime,
      'msgFrom': msgFrom,
      'contentType': contentType,
      'sessionType': sessionType,
    };
  }
}

/// Offline push information
class OfflinePushInfo {
  /// Notification title
  String? title;

  /// Notification description
  String? desc;

  /// Extended content
  String? ex;

  /// iOS-specific
  String? iOSPushSound;

  /// iOS-specific
  bool? iOSBadgeCount;

  OfflinePushInfo({title, desc, ex, iOSPushSound, iOSBadgeCount});

  OfflinePushInfo.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    desc = json['desc'];
    ex = json['ex'];
    iOSPushSound = json['iOSPushSound'];
    iOSBadgeCount = json['iOSBadgeCount'];
  }

  Map<String, dynamic> toJson() {
    return {
      'title': title,
      'desc': desc,
      'ex': ex,
      'iOSPushSound': iOSPushSound,
      'iOSBadgeCount': iOSBadgeCount,
    };
  }
}

/// @ message user ID and nickname relationship object
class AtUserInfo {
  /// User ID who was @ mentioned
  final String? atUserID;

  /// User nickname who was @ mentioned
  final String? groupNickname;

  const AtUserInfo({required this.atUserID, required this.groupNickname});

  factory AtUserInfo.fromJson(Map<String, dynamic> json) {
    return AtUserInfo(atUserID: json['atUserID'], groupNickname: json['groupNickname']);
  }

  Map<String, dynamic> toJson() {
    return {
      'atUserID': atUserID,
      'groupNickname': groupNickname,
    };
  }
}

/// Message revocation details
class RevokedInfo {
  /// Revoker's ID
  String? revokerID;

  /// Revoker's group role [GroupRoleLevel]
  int? revokerRole;

  /// Revoker's nickname
  String? revokerNickname;

  /// Message ID
  String? clientMsgID;

  /// Revocation time
  int? revokeTime;

  /// Message sending time
  int? sourceMessageSendTime;

  /// Message sender
  String? sourceMessageSendID;

  /// Message sender's nickname
  String? sourceMessageSenderNickname;

  /// Conversation type [ConversationType]
  int? sessionType;

  RevokedInfo({
    revokerID,
    revokerRole,
    revokerNickname,
    clientMsgID,
    revokeTime,
    sourceMessageSendTime,
    sourceMessageSendID,
    sourceMessageSenderNickname,
    sessionType,
  });

  RevokedInfo.fromJson(Map<String, dynamic> json) {
    revokerID = json['revokerID'];
    revokerRole = json['revokerRole'];
    revokerNickname = json['revokerNickname'];
    clientMsgID = json['clientMsgID'];
    revokeTime = json['revokeTime'];
    sourceMessageSendTime = json['sourceMessageSendTime'];
    sourceMessageSendID = json['sourceMessageSendID'];
    sourceMessageSenderNickname = json['sourceMessageSenderNickname'];
    sessionType = json['sessionType'];
  }

  Map<String, dynamic> toJson() {
    return {
      'revokerID': revokerID,
      'revokerRole': revokerRole,
      'revokerNickname': revokerNickname,
      'clientMsgID': clientMsgID,
      'revokeTime': revokeTime,
      'sourceMessageSendTime': sourceMessageSendTime,
      'sourceMessageSendID': sourceMessageSendID,
      'sourceMessageSenderNickname': sourceMessageSenderNickname,
      'sessionType': sessionType,
    };
  }
}

class AdvancedMessage {
  final List<Message> messageList;
  final bool? isEnd;
  final int? errCode;
  final String? errMsg;
  final int? lastMinSeq;

  AdvancedMessage({
    this.messageList = const [],
    this.isEnd,
    this.errCode,
    this.errMsg,
    this.lastMinSeq,
  });

  factory AdvancedMessage.fromJson(Map<String, dynamic> json) => AdvancedMessage(
        messageList: (json['messageList'] as List?)?.map((e) => Message.fromJson(e)).toList() ?? [],
        isEnd: json['isEnd'],
        errCode: json['errCode'],
        errMsg: json['errMsg'],
        lastMinSeq: json['lastMinSeq'],
      );

  Map<String, dynamic> toJson() {
    return {
      'messageList': messageList.map((e) => e.toJson()).toList(),
      'isEnd': isEnd,
      'errCode': errCode,
      'errMsg': errMsg,
      'lastMinSeq': lastMinSeq,
    };
  }
}

class RichMessageInfo {
  String? type;
  int? offset;
  int? length;
  String? url;
  String? info;

  RichMessageInfo({
    type,
    offset,
    length,
    url,
    info,
  });

  RichMessageInfo.fromJson(Map<String, dynamic> json) {
    type = json['type'];
    offset = json['offset'];
    length = json['length'];
    url = json['url'];
    info = json['info'];
  }

  Map<String, dynamic> toJson() {
    return {
      'type': type,
      'offset': offset,
      'length': length,
      'url': url,
      'info': info,
    };
  }
}

class UserExInfo {
  String? userID;
  String? ex;

  UserExInfo({userID, ex});

  UserExInfo.fromJson(Map<String, dynamic> json) {
    userID = json['userID'];
    ex = json['ex'];
  }

  Map<String, dynamic> toJson() {
    return {
      'userID': userID,
      'ex': ex,
    };
  }
}
