part of flutter_openim_sdk_ffi;

class UserInfo {
  /// User ID
  String? userID;

  /// User nickname
  String? nickname;

  /// Profile picture
  String? faceURL;

  /// Additional information
  String? ex;

  /// Creation time
  int? createTime;

  /// Remark
  String? remark;

  /// Global do not disturb setting:
  /// 0: Normal
  /// 1: Do not accept messages
  /// 2: Accept online messages but not offline messages
  int? globalRecvMsgOpt;

  int? appMangerLevel;

  UserInfo({
    this.userID,
    this.nickname,
    this.faceURL,
    this.appMangerLevel,
    this.ex,
    this.createTime,
    this.remark,
    this.globalRecvMsgOpt,
  });

  UserInfo.fromJson(Map<String, dynamic> json) {
    userID = json['userID'] ?? userID;
    nickname = json['nickname'] ?? nickname;
    faceURL = json['faceURL'] ?? faceURL;
    remark = json['remark'] ?? remark;
    ex = json['ex'] ?? ex;
    createTime = json['createTime'];
    globalRecvMsgOpt = json['globalRecvMsgOpt'];
    appMangerLevel = json['appMangerLevel'];
  }

  Map<String, dynamic> toJson() {
    return {
      'userID': userID,
      'nickname': nickname,
      'faceURL': faceURL,
      'remark': remark,
      'ex': ex,
      'createTime': createTime,
      'globalRecvMsgOpt': globalRecvMsgOpt,
      'appMangerLevel': appMangerLevel,
    };
  }

  String getShowName() => _isNull(remark) ?? _isNull(nickname) ?? userID!;

  static String? _isNull(String? value) {
    if (value == null || value.trim().isEmpty) return null;
    return value;
  }

  @override
  bool operator ==(Object other) => identical(this, other) || other is UserInfo && runtimeType == other.runtimeType && userID == other.userID;

  @override
  int get hashCode => userID.hashCode;
}

class FullUserInfo {
  /// User's public information
  PublicUserInfo? publicInfo;

  /// Information visible only to friends
  FriendInfo? friendInfo;

  /// Blacklist information
  BlacklistInfo? blackInfo;

  FullUserInfo.fromJson(Map<String, dynamic> json) {
    publicInfo = json['publicInfo'] != null ? PublicUserInfo.fromJson(json['publicInfo']) : null;
    friendInfo = json['friendInfo'] != null ? FriendInfo.fromJson(json['friendInfo']) : null;
    blackInfo = json['blackInfo'] != null ? BlacklistInfo.fromJson(json['blackInfo']) : null;
  }

  Map<String, dynamic> toJson() {
    return {
      'publicInfo': publicInfo?.toJson(),
      'friendInfo': friendInfo?.toJson(),
      'blackInfo': blackInfo?.toJson(),
    };
  }

  String get userID {
    return publicInfo?.userID ?? friendInfo?.userID ?? blackInfo?.userID ?? '';
  }

  String get nickname {
    return publicInfo?.nickname ?? friendInfo?.nickname ?? blackInfo?.nickname ?? '';
  }

  String get faceURL {
    return publicInfo?.faceURL ?? friendInfo?.faceURL ?? blackInfo?.faceURL ?? '';
  }

  String get showName {
    return friendInfo?.nickname ?? nickname;
  }
}

class PublicUserInfo {
  /// User ID
  String? userID;

  /// Nickname
  String? nickname;

  /// Profile picture
  String? faceURL;

  /// App Manager Level:
  /// 1: AppOrdinaryUsers
  /// 2: AppAdmin
  int? appManagerLevel;

  /// Additional information
  String? ex;

  PublicUserInfo({
    this.userID,
    this.nickname,
    this.faceURL,
    this.appManagerLevel,
    this.ex,
  });

  PublicUserInfo.fromJson(Map<String, dynamic> json) {
    userID = json['userID'];
    nickname = json['nickname'];
    faceURL = json['faceURL'];
    appManagerLevel = json['appManagerLevel'];
    ex = json['ex'];
  }

  Map<String, dynamic> toJson() {
    return {
      'userID': userID,
      'nickname': nickname,
      'faceURL': faceURL,
      'appManagerLevel': appManagerLevel,
      'ex': ex,
    };
  }
}

class FriendInfo {
  /// owner User ID
  String? ownerUserID;

  /// User ID
  String? userID;

  /// Nickname
  String? nickname;

  /// Profile picture
  String? faceURL;

  /// friend User ID
  String? friendUserID;

  /// Remark
  String? remark;

  /// Additional information
  String? ex;

  /// Creation time
  int? createTime;

  /// Add source
  int? addSource;

  /// Operator User ID
  String? operatorUserID;

  FriendInfo({
    this.ownerUserID,
    this.userID,
    this.nickname,
    this.faceURL,
    this.friendUserID,
    this.remark,
    this.ex,
    this.createTime,
    this.addSource,
    this.operatorUserID,
  });

  FriendInfo.fromJson(Map<String, dynamic> json) {
    ownerUserID = json['ownerUserID'];
    userID = json['userID'];
    remark = json['remark'];
    createTime = json['createTime'];
    addSource = json['addSource'];
    operatorUserID = json['operatorUserID'];
    nickname = json['nickname'];
    faceURL = json['faceURL'];
    friendUserID = json['friendUserID'];
    ex = json['ex'];
  }

  Map<String, dynamic> toJson() {
    return {
      'ownerUserID': ownerUserID,
      'userID': userID,
      'remark': remark,
      'createTime': createTime,
      'addSource': addSource,
      'operatorUserID': operatorUserID,
      'nickname': nickname,
      'faceURL': faceURL,
      'friendUserID': friendUserID,
      'ex': ex,
    };
  }

  String getShowName() => _isNull(remark) ?? _isNull(nickname) ?? userID!;

  static String? _isNull(String? value) {
    if (value == null || value.trim().isEmpty) return null;
    return value;
  }
}

class BlacklistInfo {
  /// User ID
  String? userID;

  /// Nickname
  String? nickname;

  /// owner User ID
  String? ownerUserID;

  /// block User ID
  String? blockUserID;

  /// Profile picture
  String? faceURL;

  /// Gender
  int? gender;

  /// Creation time
  int? createTime;

  /// Add source
  int? addSource;

  /// Operator User ID
  String? operatorUserID;

  /// Additional information
  String? ex;

  BlacklistInfo({
    this.ownerUserID,
    this.blockUserID,
    this.userID,
    this.nickname,
    this.faceURL,
    this.gender,
    this.createTime,
    this.addSource,
    this.operatorUserID,
    this.ex,
  });

  BlacklistInfo.fromJson(Map<String, dynamic> json) {
    ownerUserID = json['ownerUserID'];
    blockUserID = json['blockUserID'];
    userID = json['userID'];
    nickname = json['nickname'];
    faceURL = json['faceURL'];
    gender = json['gender'];
    createTime = json['createTime'];
    addSource = json['addSource'];
    operatorUserID = json['operatorUserID'];
    ex = json['ex'];
  }

  Map<String, dynamic> toJson() {
    return {
      "ownerUserID": ownerUserID,
      "blockUserID": blockUserID,
      "userID": userID,
      "nickname": nickname,
      "faceURL": faceURL,
      "gender": gender,
      "createTime": createTime,
      "addSource": addSource,
      "operatorUserID": operatorUserID,
      "ex": ex,
    };
  }
}

class FriendshipInfo {
  /// User ID
  String? userID;

  /// 1 represents a friend (and not in the blacklist)
  int? result;

  FriendshipInfo({this.userID, this.result});

  FriendshipInfo.fromJson(Map<String, dynamic> json) {
    userID = json['userID'];
    result = json['result'];
  }

  Map<String, dynamic> toJson() {
    return {
      "userID": userID,
      "result": result,
    };
  }
}

class FriendApplicationInfo {
  /// Initiator user ID
  ///
  /// 添加者ID
  String? fromUserID;

  /// Initiator user nickname
  String? fromNickname;

  /// Initiator user profile picture
  ///
  /// 添加者头像
  String? fromFaceURL;

  /// Recipient user ID
  ///
  /// 被添加者ID
  String? toUserID;

  /// Recipient user nickname
  ///
  /// 被添加者昵称
  String? toNickname;

  /// Recipient user profile picture
  ///
  /// 被添加者头像
  String? toFaceURL;

  /// Handling result
  ///
  /// 处理结果（1 同意  -1 拒绝  0 未处理）
  int? handleResult;

  /// Request message
  ///
  /// 申请添加好友时附带的消息
  String? reqMsg;

  /// Creation time
  int? createTime;

  /// Handler user ID
  ///
  /// 处理者ID
  String? handlerUserID;

  /// Handling remark
  String? handleMsg;

  /// Handling time
  int? handleTime;

  /// Additional information
  String? ex;

  FriendApplicationInfo({this.fromUserID, this.fromNickname, this.fromFaceURL, this.toUserID, this.toNickname, this.toFaceURL, this.handleResult, this.reqMsg, this.createTime, this.handlerUserID, this.handleMsg, this.handleTime, this.ex});

  FriendApplicationInfo.fromJson(Map<String, dynamic> json) {
    fromUserID = json['fromUserID'];
    fromNickname = json['fromNickname'];
    fromFaceURL = json['fromFaceURL'];
    toUserID = json['toUserID'];
    toNickname = json['toNickname'];
    toFaceURL = json['toFaceURL'];
    handleResult = json['handleResult'];
    reqMsg = json['reqMsg'];
    createTime = json['createTime'];
    handlerUserID = json['handlerUserID'];
    handleMsg = json['handleMsg'];
    handleTime = json['handleTime'];
    ex = json['ex'];
  }

  Map<String, dynamic> toJson() {
    return {
      'fromUserID': fromUserID,
      'fromNickname': fromNickname,
      'fromFaceURL': fromFaceURL,
      'toUserID': toUserID,
      'toNickname': toNickname,
      'toFaceURL': toFaceURL,
      'handleResult': handleResult,
      'reqMsg': reqMsg,
      'createTime': createTime,
      'handlerUserID': handlerUserID,
      'handleMsg': handleMsg,
      'handleTime': handleTime,
    };
  }

  /// Waiting to be processed
  bool get isWaitingHandle => handleResult == 0;

  /// Already agreed
  bool get isAgreed => handleResult == 1;

  /// Already rejected
  bool get isRejected => handleResult == -1;
}

class UserStatusInfo {
  /// User ID
  String? userID;

  /// Status
  int? status;

  /// Platform IDs
  List<int>? platformIDs;

  UserStatusInfo({
    this.userID,
    this.status,
    this.platformIDs,
  });

  UserStatusInfo.fromJson(Map<String, dynamic> json) {
    userID = json['userID'];
    status = json['status'];
    platformIDs = json["platformIDs"] == null ? [] : List<int>.from(json["platformIDs"].map((x) => x));
  }

  Map<String, dynamic> toJson() {
    return {
      'userID': userID,
      'status': status,
      'platformIDs': platformIDs == null ? [] : List<dynamic>.from(platformIDs!.map((x) => x)),
    };
  }
}
