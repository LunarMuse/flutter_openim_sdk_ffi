part of '../../flutter_openim_sdk_ffi.dart';

/*
 * Summary: 扩展字符串
 * Created Date: 2023-06-11 17:47:26
 * Author: Spicely
 * -----
 * Last Modified: 2023-08-22 17:02:29
 * Modified By: Spicely
 * -----
 * Copyright (c) 2023 Spicely Inc.
 * 
 * May the force be with you.
 * -----
 * HISTORY:
 * Date      	By	Comments
 */

class _PortMethod {
  static const String initSDK = 'initSDK';
  static const String version = 'version';

  /// 登陆
  static const String login = 'Login';

  /// 获取用户资料
  static const String getUsersInfo = 'GetUsersInfo';

  /// 获取当前登录用户资料
  static const String getSelfUserInfo = 'GetSelfUserInfo';

  /// 获取所有会话
  static const String getAllConversationList = 'GetAllConversationList';

  /// 分页获取会话
  static const String getConversationListSplit = 'GetConversationListSplit';

  /// 查询会话，如果会话不存在会自动生成一个
  static const String getOneConversation = 'GetOneConversation';

  /// 根据会话id获取多个会话
  static const String getMultipleConversation = 'GetMultipleConversation';
  static const String setSelfInfo = 'SetSelfInfo';
  static const String subscribeUsersStatus = 'SubscribeUsersStatus';
  static const String unsubscribeUsersStatus = 'UnsubscribeUsersStatus';
  static const String getSubscribeUsersStatus = 'GetSubscribeUsersStatus';
  static const String getUserStatus = 'GetUserStatus';
  static const String setMessageLocalEx = 'SetMessageLocalEx';

  /// 通过会话id删除指定会话
  static const String deleteConversation = 'DeleteConversation';
  static const String setConversationDraft = 'SetConversationDraft';
  static const String pinConversation = 'PinConversation';
  static const String getTotalUnreadMsgCount = 'GetTotalUnreadMsgCount';
  static const String getConversationIDBySessionType = 'GetConversationIDBySessionType';
  static const String setConversationRecvMessageOpt = 'SetConversationRecvMessageOpt';
  static const String getConversationRecvMessageOpt = 'GetConversationRecvMessageOpt';
  static const String setOneConversationPrivateChat = 'SetOneConversationPrivateChat';
  static const String deleteConversationAndDeleteAllMsg = 'DeleteConversationAndDeleteAllMsg';
  static const String resetConversationGroupAtType = 'ResetConversationGroupAtType';
  static const String getAtAllTag = 'GetAtAllTag';
  static const String setGlobalRecvMessageOpt = 'SetGlobalRecvMessageOpt';
  static const String setOneConversationBurnDuration = 'SetOneConversationBurnDuration';
  static const String markConversationMessageAsRead = 'MarkConversationMessageAsRead';

  /// 消息
  static const String sendMessage = 'SendMessage';
  static const String getAdvancedHistoryMessageList = 'GetAdvancedHistoryMessageList';
  static const String getAdvancedHistoryMessageListReverse = 'GetAdvancedHistoryMessageListReverse';
  // static const String revokeMessage = 'RevokeMessage';
  static const String deleteMessageFromLocalStorage = 'DeleteMessageFromLocalStorage';
  static const String insertSingleMessageToLocalStorage = 'InsertSingleMessageToLocalStorage';
  static const String insertGroupMessageToLocalStorage = 'InsertGroupMessageToLocalStorage';
  static const String typingStatusUpdate = 'TypingStatusUpdate';
  static const String createTextMessage = 'CreateTextMessage';
  static const String createTextAtMessage = 'CreateTextAtMessage';
  static const String createImageMessage = 'CreateImageMessage';
  static const String createImageMessageFromFullPath = 'CreateImageMessageFromFullPath';
  static const String createSoundMessage = 'CreateSoundMessage';
  static const String createSoundMessageFromFullPath = 'CreateSoundMessageFromFullPath';
  static const String createVideoMessage = 'CreateVideoMessage';
  static const String createVideoMessageFromFullPath = 'CreateVideoMessageFromFullPath';
  static const String createFileMessage = 'CreateFileMessage';
  static const String createFileMessageFromFullPath = 'CreateFileMessageFromFullPath';
  static const String createMergerMessage = 'CreateMergerMessage';
  static const String createForwardMessage = 'CreateForwardMessage';
  static const String createLocationMessage = 'CreateLocationMessage';
  static const String createCustomMessage = 'CreateCustomMessage';
  static const String createQuoteMessage = 'CreateQuoteMessage';
  static const String createCardMessage = 'CreateCardMessage';
  static const String createFaceMessage = 'CreateFaceMessage';
  static const String clearC2CHistoryMessage = 'ClearC2CHistoryMessage';
  static const String clearGroupHistoryMessage = 'ClearGroupHistoryMessage';
  static const String searchLocalMessages = 'SearchLocalMessages';
  static const String deleteMessageFromLocalAndSvr = 'DeleteMessageFromLocalAndSvr';
  static const String deleteAllMsgFromLocal = 'DeleteAllMsgFromLocal';
  static const String deleteAllMsgFromLocalAndSvr = 'DeleteAllMsgFromLocalAndSvr';
  static const String markMessageAsReadByMsgID = 'markMessageAsReadByMsgID';
  static const String clearC2CHistoryMessageFromLocalAndSvr = 'ClearC2CHistoryMessageFromLocalAndSvr';
  static const String clearGroupHistoryMessageFromLocalAndSvr = 'ClearGroupHistoryMessageFromLocalAndSvr';
  static const String revokeMessage = 'RevokeMessage';
  static const String findMessageList = 'FindMessageList';
  static const String createAdvancedTextMessage = 'CreateAdvancedTextMessage';
  static const String createAdvancedQuoteMessage = 'CreateAdvancedQuoteMessage';
  static const String sendMessageNotOss = 'SendMessageNotOss';
  static const String createImageMessageByURL = 'CreateImageMessageByURL';
  static const String createSoundMessageByURL = 'CreateSoundMessageByURL';
  static const String createVideoMessageByURL = 'CreateVideoMessageByURL';
  static const String createFileMessageByURL = 'CreateFileMessageByURL';
  // static const String setMessageReactionExtensions = 'SetMessageReactionExtensions';
  // static const String deleteMessageReactionExtensions = 'DeleteMessageReactionExtensions';
  // static const String getMessageListReactionExtensions = 'GetMessageListReactionExtensions';
  // static const String addMessageReactionExtensions = 'AddMessageReactionExtensions';
  // static const String getMessageListSomeReactionExtensions = 'GetMessageListSomeReactionExtensions';

  /// FriendshipManager
  static const String addFriend = 'AddFriend';
  static const String getFriendApplicationListAsApplicant = 'GetFriendApplicationListAsApplicant';
  static const String getFriendApplicationListAsRecipient = 'GetFriendApplicationListAsRecipient';
  static const String getFriendList = 'GetFriendList';
  static const String getFriendsList = 'GetSpecifiedFriendsInfo';
  static const String setFriendRemark = 'SetFriendRemark';
  static const String addBlack = 'AddBlack';
  static const String getBlackList = 'GetBlackList';
  static const String removeBlack = 'RemoveBlack';
  static const String checkFriend = 'CheckFriend';
  static const String deleteFriend = 'DeleteFriend';
  static const String acceptFriendApplication = 'AcceptFriendApplication';
  static const String refuseFriendApplication = 'RefuseFriendApplication';
  static const String searchFriends = 'SearchFriends';
  static const String getFriendListPage = 'GetFriendListPage';
  static const String getFriendListMap = 'GetFriendListMap';
  static const String getFriendListPageMap = 'GetFriendListPageMap';

  /// OrganizationManager
  static const String getSubDepartment = 'GetSubDepartment';
  static const String getDepartmentMember = 'GetDepartmentMember';
  static const String getUserInDepartment = 'GetUserInDepartment';
  static const String getDepartmentMemberAndSubDepartment = 'GetDepartmentMemberAndSubDepartment';
  static const String getDepartmentInfo = 'GetDepartmentInfo';
  static const String searchOrganization = 'SearchOrganization';

  /// SignalingManager
  static const String signalingInvite = 'SignalingInvite';
  static const String signalingInviteInGroup = 'SignalingInviteInGroup';
  static const String signalingAccept = 'SignalingAccept';
  static const String signalingReject = 'SignalingReject';
  static const String signalingCancel = 'SignalingCancel';
  static const String signalingHungUp = 'SignalingHungUp';
  static const String signalingGetRoomByGroupID = 'SignalingGetRoomByGroupID';
  static const String signalingGetTokenByRoomID = 'SignalingGetTokenByRoomID';
  static const String signalingUpdateMeetingInfo = 'SignalingUpdateMeetingInfo';
  static const String signalingCreateMeeting = 'SignalingCreateMeeting';
  static const String signalingJoinMeeting = 'SignalingJoinMeeting';
  static const String signalingOperateStream = 'SignalingOperateStream';
  static const String signalingGetMeetings = 'SignalingGetMeetings';
  static const String signalingCloseRoom = 'SignalingCloseRoom';
  static const String signalingSendCustomSignal = 'SignalingSendCustomSignal';

  /// GroupManager
  static const String inviteUserToGroup = 'InviteUserToGroup';
  static const String kickGroupMember = 'KickGroupMember';
  static const String getGroupMembersInfo = 'GetGroupMembersInfo';
  static const String getGroupMemberList = 'GetGroupMemberList';
  static const String getJoinedGroupList = 'GetJoinedGroupList';
  static const String createGroup = 'CreateGroup';
  static const String setGroupInfo = 'SetGroupInfo';
  static const String getGroupsInfo = 'GetSpecifiedGroupsInfo';
  static const String joinGroup = 'JoinGroup';
  static const String quitGroup = 'QuitGroup';
  static const String transferGroupOwner = 'TransferGroupOwner';
  static const String getGroupApplicationListAsRecipient = 'GetGroupApplicationListAsRecipient';
  static const String getGroupApplicationListAsApplicant = 'GetGroupApplicationListAsApplicant';
  static const String acceptGroupApplication = 'AcceptGroupApplication';
  static const String refuseGroupApplication = 'RefuseGroupApplication';
  static const String dismissGroup = 'DismissGroup';
  static const String changeGroupMute = 'ChangeGroupMute';
  static const String changeGroupMemberMute = 'ChangeGroupMemberMute';
  static const String setGroupMemberNickname = 'SetGroupMemberNickname';
  static const String searchGroups = 'SearchGroups';
  static const String setGroupMemberRoleLevel = 'SetGroupMemberRoleLevel';
  static const String getGroupMemberListByJoinTimeFilter = 'GetGroupMemberListByJoinTimeFilter';
  static const String setGroupVerification = 'SetGroupVerification';
  static const String setGroupLookMemberInfo = 'SetGroupLookMemberInfo';
  static const String setGroupApplyMemberFriend = 'SetGroupApplyMemberFriend';
  static const String getGroupMemberOwnerAndAdmin = 'GetGroupMemberOwnerAndAdmin';
  static const String searchGroupMembers = 'SearchGroupMembers';
  static const String setGroupMemberInfo = 'SetGroupMemberInfo';
  static const String getGroupMemberListMap = 'GetGroupMemberListMap';
  static const String getJoinedGroupListMap = 'GetJoinedGroupListMap';
  static const String isJoinedGroup = 'isJoinedGroup';
  static const String searchGroupMembersListMap = 'searchGroupMembersListMap';
  static const String getUsersInGroup = 'getUsersInGroup';

  static const String networkStatusChanged = 'NetworkStatusChanged';
  static const String setAppBackgroundStatus = 'SetAppBackgroundStatus';
  static const String updateFcmToken = 'UpdateFcmToken';
  static const String uploadFile = 'UploadFile';
  static const String wakeUp = 'WakeUp';
  static const String getLoginStatus = 'GetLoginStatus';
  static const String logout = 'Logout';
  static const String setAppBadge = 'SetAppBadge';

  // static const String unInitSDK = 'UnInitSDK';
}
