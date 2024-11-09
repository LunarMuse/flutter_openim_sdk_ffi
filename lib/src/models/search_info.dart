part of flutter_openim_sdk_ffi;

class SearchResult {
  /// Total number of messages obtained
  int? totalCount;

  /// Specific search results
  List<SearchResultItems>? searchResultItems;

  List<SearchResultItems>? findResultItems;

  SearchResult({this.totalCount, this.searchResultItems});

  SearchResult.fromJson(Map<String, dynamic> json) {
    totalCount = json['totalCount'];
    if (json['searchResultItems'] != null) {
      searchResultItems = <SearchResultItems>[];
      json['searchResultItems'].forEach((v) {
        searchResultItems!.add(SearchResultItems.fromJson(v));
      });
    }
    if (json['findResultItems'] != null) {
      findResultItems = <SearchResultItems>[];
      json['findResultItems'].forEach((v) {
        findResultItems!.add(SearchResultItems.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    return {
      'totalCount': totalCount,
      'searchResultItems': searchResultItems?.map((v) => v.toJson()).toList(),
      'findResultItems': findResultItems?.map((v) => v.toJson()).toList(),
    };
  }
}

class SearchResultItems {
  /// Conversation ID
  String? conversationID;

  /// Conversation type: 1 for single chat, 2 for group chat, 3 for supergroup, 4 for notification conversation
  int? conversationType;

  /// Display name
  String? showName;

  /// Profile picture
  String? faceURL;

  /// Number of messages found in this conversation
  int? messageCount;

  /// List of [Message]s
  List<Message>? messageList;

  SearchResultItems({this.conversationID, this.messageCount, this.messageList});

  SearchResultItems.fromJson(Map<String, dynamic> json) {
    conversationID = json['conversationID'];
    conversationType = json['conversationType'];
    showName = json['showName'];
    faceURL = json['faceURL'];
    messageCount = json['messageCount'];
    if (json['messageList'] != null) {
      messageList = <Message>[];
      json['messageList'].forEach((v) {
        messageList!.add(Message.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    return {
      'conversationID': conversationID,
      'conversationType': conversationType,
      'showName': showName,
      'faceURL': faceURL,
      'messageCount': messageCount,
      'messageList': messageList?.map((v) => v.toJson()).toList(),
    };
  }
}

class SearchParams {
  String? conversationID;
  List<String>? clientMsgIDList;

  SearchParams({
    this.conversationID,
    this.clientMsgIDList,
  });

  SearchParams.fromJson(Map<String, dynamic> json) {
    conversationID = json['conversationID'];
    if (json['clientMsgIDList'] != null) {
      clientMsgIDList = json['clientMsgIDList'].cast<String>();
    }
  }

  Map<String, dynamic> toJson() {
    return {
      'conversationID': conversationID,
      'clientMsgIDList': clientMsgIDList,
    };
  }
}

class SearchFriendsInfo extends FriendInfo {
  late int relationship;
  SearchFriendsInfo({required this.relationship}) : super();

  SearchFriendsInfo.fromJson(Map<String, dynamic> json) : super.fromJson(json) {
    relationship = json['relationship'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      'relationship': relationship,
    };
  }
}
