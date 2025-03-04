part of '../flutter_openim_sdk_ffi.dart';

/*
 * Summary: 文件描述
 * Created Date: 2023-06-01 23:37:30
 * Author: Spicely
 * -----
 * Last Modified: 2023-08-16 16:43:20
 * Modified By: Spicely
 * -----
 * Copyright (c) 2023 Spicely Inc.
 * 
 * May the force be with you.
 * -----
 * HISTORY:
 * Date      	By	Comments
 */
mixin OpenIMListener {
  /// SDK连接服务器失败
  void onConnectFailed(int code, String errorMsg) {}

  /// SDK连接服务器成功
  void onConnectSuccess() {}

  /// SDK正在连接服务器
  void onConnecting() {}

  /// 账号已在其他地方登录，当前设备被踢下线
  void onKickedOffline() {}

  ///  登录凭证过期，需要重新登录
  void onUserTokenExpired() {}

  /// 自身信息发送变化回调
  void onSelfInfoUpdated(UserInfo info) {}

  /// C2C消息已读回执
  void onRecvC2CMessageReadReceipt(List<ReadReceiptInfo> list) {}

  ///  群消息已读回执
  void onRecvGroupMessageReadReceipt(List<ReadReceiptInfo> list) {}

  /// 收到了一条新消息
  void _onRecvNewMessage(Message msg) {
    if (msg.contentType == MessageType.typing) {
      onTypingStatusChanged(msg);
    } else {
      onRecvNewMessage(msg);
    }
  }

  /// 对方正在输入
  void onTypingStatusChanged(Message msg) {}

  /// 收到了一条新消息
  void onRecvNewMessage(Message msg) {}

  /// 消息被撤回
  void onNewRecvMessageRevoked(RevokedInfo info) {}

  // /// 收到拓展消息kv改变
  // void onRecvMessageExtensionsChanged(String msgID, List<KeyValue> list) {}

  /// 收到扩展消息被删除
  /// [list] 被删除的TypeKey
  void onRecvMessageExtensionsDeleted(String msgID, List<String> list) {}

  // /// 收到拓展消息kv新增
  // void onRecvMessageExtensionsAdded(String msgID, List<KeyValue> list) {}

  /// 消息发送进度
  void onProgress(String clientMsgID, int progress) {}

  /// 已被加入黑名单
  void onBlackAdded(BlacklistInfo u) {}

  /// 已从黑名单移除
  void onBlackDeleted(BlacklistInfo u) {}

  /// 好友已添加
  void onFriendAdded(FriendInfo u) {}

  /// 好友申请被同意时，申请发起方和接收方都会收到该回调，双方成功建立好友关系。
  void onFriendApplicationAccepted(FriendApplicationInfo u) {}

  /// 用户发起好友申请后，申请发起者和接收者都会收到此回调，接收者可以选择同意或拒绝好友申请
  void onFriendApplicationAdded(FriendApplicationInfo u) {}

  /// 好友申请已被删除
  void onFriendApplicationDeleted(FriendApplicationInfo u) {}

  /// 好友申请被拒绝时，申请发起方和接收方都会收到该回调。
  void onFriendApplicationRejected(FriendApplicationInfo u) {}

  /// 好友已被删除
  void onFriendDeleted(FriendInfo u) {}

  ///  好友个人信息（包括备注）改变时会收到此回调
  void onFriendInfoChanged(FriendInfo u) {}

  /// 会话发生改变
  void onConversationChanged(List<ConversationInfo> list) {}

  /// 有新会话产生
  void onNewConversation(List<ConversationInfo> list) {}

  void onSyncServerFailed(bool reinstalled) {}

  void onSyncServerFinish(bool reinstalled) {}

  void onSyncServerStart(bool reinstalled) {}

  void onSyncServerProgress(int progress) {}

  /// 未读消息总数发送改变
  void onTotalUnreadMessageCountChanged(int i) {}

  // void onConversationUserInputStatusChanged(InputStatesChangedData data) {}

  /// 群申请已被接受
  void onGroupApplicationAccepted(GroupApplicationInfo info) {}

  /// 群申请已被添加
  void onGroupApplicationAdded(GroupApplicationInfo info) {}

  /// 群申请已被删除
  void onGroupApplicationDeleted(GroupApplicationInfo info) {}

  /// 群申请已被拒绝
  void onGroupApplicationRejected(GroupApplicationInfo info) {}

  /// 群资料发生改变
  void onGroupInfoChanged(GroupInfo info) {}

  /// 群成员已添加
  void onGroupMemberAdded(GroupMembersInfo info) {}

  /// 群成员已删除
  void onGroupMemberDeleted(GroupMembersInfo info) {}

  /// 群成员信息发送改变
  void onGroupMemberInfoChanged(GroupMembersInfo info) {}

  /// 已加入的群有新增
  void onJoinedGroupAdded(GroupInfo info) {}

  /// 已加入的群减少
  void onJoinedGroupDeleted(GroupInfo info) {}

  /// 被邀请者收到：邀请者取消音视频通话
  // void onInvitationCancelled(SignalingInfo info) {}

  // /// 邀请者收到：被邀请者超时未接通
  // void onInvitationTimeout(SignalingInfo info) {}

  // /// 邀请者收到：被邀请者同意音视频通话
  // void onInviteeAccepted(SignalingInfo info) {}

  // /// 邀请者收到：被邀请者拒绝音视频通话
  // void onInviteeRejected(SignalingInfo info) {}

  // /// 被邀请者收到：音视频通话邀请
  // void onReceiveNewInvitation(SignalingInfo info) {}

  // /// 被邀请者（其他端）收到：比如被邀请者在手机拒接，在pc上会收到此回调
  // void onInviteeAcceptedByOtherDevice(SignalingInfo info) {}

  // /// 被邀请者（其他端）收到：比如被邀请者在手机拒接，在pc上会收到此回调
  // void onInviteeRejectedByOtherDevice(SignalingInfo info) {}

  // /// 被挂断
  // void onHangup(SignalingInfo info) {}
  // void onRoomParticipantConnected(RoomCallingInfo info) {}
  // void onRoomParticipantDisconnected(RoomCallingInfo info) {}
  // void onMeetingStreamChanged(MeetingStreamEvent event) {}
  // void onReceiveCustomSignal(CustomSignaling info) {}

  /// 朋友圈信息发送改变
  void onRecvNewNotification() {}

  /// 组织架构有更新
  void onOrganizationUpdated() {}

  // void onStreamChangedEvent(MeetingStreamEvent event) {}

  void onRecvCustomBusinessMessage(String s) {}

  // void onMessageKvInfoChanged(List<MessageKv> list) {}

  /// 文件打开的大小
  void onUploadFileOpen(String id, int size) {}

  /// 分片大小,数量
  void onUploadFilePartSize(String id, int partSize, int num) {}

  /// 每块分片的hash值
  void onUploadFileHashPartProgress(String id, int index, int size, String partHash) {}

  /// 分块完成，服务端标记hash和文件最终hash
  void onUploadFileHashPartComplete(String id, String partHash, String fileHash) {}

  /// 上传ID
  void onUploadFileID(String id, String uploadID) {}

  /// 上传分片进度
  void onUploadFilePartComplete(String id, int index, int partSize, String partHash) {}

  /// 整体进度
  void onUploadFileProgress(String id, int fileSize, int streamSize, int storageSize) {}

  /// 上传完成
  void onUploadFileComplete(String id, int size, String url, int type) {}

  /// 当应用在后台运行，接收到新消息时，会收到该回调，回调中只会携带一条消息。
  void onRecvOfflineNewMessage(Message message) {}
}
