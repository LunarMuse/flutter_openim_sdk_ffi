part of flutter_openim_sdk_ffi;

class InputStatesChangedData {
  final String conversationID;
  
  final String userID;

  final List<int> platformIDs;

  InputStatesChangedData({
    required this.conversationID,
    required this.userID,
    required this.platformIDs,
  });

  factory InputStatesChangedData.fromJson(Map<String, dynamic> json) {
    return InputStatesChangedData(
      conversationID: json['conversationID'],
      userID: json['userID'],
      platformIDs: List<int>.from(json['platformIDs']),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'conversationID': conversationID,
      'userID': userID,
      'platformIDs': platformIDs,
    };
  }
}
