part of '../../flutter_openim_sdk_ffi.dart';

void _listen(_PortModel channel) {
  switch (channel.method) {
    case ListenerType.onConnectFailed:
      OpenIMManager._onEvent((listener) => listener.onConnectFailed(channel.errCode, ''));
      break;
    case ListenerType.onConnecting:
      OpenIMManager._onEvent((listener) => listener.onConnecting());
      break;
    case ListenerType.onConnectSuccess:
      OpenIMManager._onEvent((listener) => listener.onConnectSuccess());
      break;
    case ListenerType.onKickedOffline:
      OpenIMManager._onEvent((listener) => listener.onKickedOffline());
      break;
    case ListenerType.onUserTokenExpired:
      OpenIMManager._onEvent((listener) => listener.onUserTokenExpired());
      break;
    case ListenerType.onSyncServerStart:
      OpenIMManager._onEvent((listener) => listener.onSyncServerStart());
      break;
    case ListenerType.onSyncServerFinish:
      OpenIMManager._onEvent((listener) => listener.onSyncServerFinish());
      break;
    case ListenerType.onSyncServerFailed:
      OpenIMManager._onEvent((listener) => listener.onSyncServerFailed());
      break;
    case ListenerType.onNewConversation:
      OpenIMManager._onEvent((listener) => listener.onNewConversation(channel.data));
      break;
    case ListenerType.onConversationChanged:
      OpenIMManager._onEvent((listener) => listener.onConversationChanged(channel.data));
      break;
    case ListenerType.onTotalUnreadMessageCountChanged:
      OpenIMManager._onEvent((listener) => listener.onTotalUnreadMessageCountChanged(channel.errCode ?? 0));
      break;
    case ListenerType.onConversationUserInputStatusChanged:
      OpenIMManager._onEvent((listener) => listener.onConversationUserInputStatusChanged(channel.data));
      break;
    case ListenerType.onProgress:
      OpenIMManager._onEvent((listener) => listener.onProgress(channel.data ?? '', channel.errCode ?? 0));
    case ListenerType.onRecvNewMessage:
      OpenIMManager._onEvent((listener) => listener._onRecvNewMessage(channel.data));
      break;
    case ListenerType.onSelfInfoUpdated:
      OpenIMManager._onEvent((listener) => listener.onSelfInfoUpdated(channel.data));
      break;
    case ListenerType.onGroupApplicationAccepted:
      OpenIMManager._onEvent((listener) => listener.onGroupApplicationAccepted(channel.data));
      break;
    case ListenerType.onGroupApplicationAdded:
      OpenIMManager._onEvent((listener) => listener.onGroupApplicationAdded(channel.data));
      break;
    case ListenerType.onGroupApplicationDeleted:
      OpenIMManager._onEvent((listener) => listener.onGroupApplicationDeleted(channel.data));
      break;
    case ListenerType.onGroupApplicationRejected:
      OpenIMManager._onEvent((listener) => listener.onGroupApplicationRejected(channel.data));
      break;
    case ListenerType.onGroupInfoChanged:
      OpenIMManager._onEvent((listener) => listener.onGroupInfoChanged(channel.data));
      break;
    case ListenerType.onGroupMemberAdded:
      OpenIMManager._onEvent((listener) => listener.onGroupMemberAdded(channel.data));
      break;
    case ListenerType.onGroupMemberDeleted:
      OpenIMManager._onEvent((listener) => listener.onGroupMemberDeleted(channel.data));
      break;
    case ListenerType.onGroupMemberInfoChanged:
      OpenIMManager._onEvent((listener) => listener.onGroupMemberInfoChanged(channel.data));
      break;
    case ListenerType.onJoinedGroupAdded:
      OpenIMManager._onEvent((listener) => listener.onJoinedGroupAdded(channel.data));
      break;
    case ListenerType.onJoinedGroupDeleted:
      OpenIMManager._onEvent((listener) => listener.onJoinedGroupDeleted(channel.data));
      break;

    // case ListenerType.onRecvMessageRevoked:
    //   OpenIMManager._onEvent((listener) => listener.onRecvMessageRevoked(channel.data));
    //   break;
    case ListenerType.onRecvC2CReadReceipt:
      OpenIMManager._onEvent((listener) => listener.onRecvC2CMessageReadReceipt(channel.data));
      break;
    case ListenerType.onRecvGroupReadReceipt:
      OpenIMManager._onEvent((listener) => listener.onRecvGroupMessageReadReceipt(channel.data));
      break;
    case ListenerType.onNewRecvMessageRevoked:
      OpenIMManager._onEvent((listener) => listener.onNewRecvMessageRevoked(channel.data));
      break;
    case ListenerType.onRecvOfflineNewMessage:
      OpenIMManager._onEvent((listener) => listener.onRecvOfflineNewMessage(channel.data));
      break;
    // case ListenerType.onRecvMessageExtensionsChanged:
    //   OpenIMManager._onEvent((listener) => listener.onRecvMessageExtensionsChanged(channel., channel.data));
    //   break;
    // case ListenerType.onRecvMessageExtensionsDeleted:
    //   OpenIMManager._onEvent((listener) => listener.onRecvMessageExtensionsDeleted(channel.data));
    // case ListenerType.onRecvMessageExtensionsAdded:
    //   OpenIMManager._onEvent((listener) => listener.onRecvMessageExtensionsAdded(channel.data));
    //   break;

    case ListenerType.onBlackAdded:
      OpenIMManager._onEvent((listener) => listener.onBlackAdded(channel.data));
      break;
    case ListenerType.onBlackDeleted:
      OpenIMManager._onEvent((listener) => listener.onBlackDeleted(channel.data));
      break;
    case ListenerType.onFriendApplicationAccepted:
      OpenIMManager._onEvent((listener) => listener.onFriendApplicationAccepted(channel.data));
      break;
    case ListenerType.onFriendApplicationAdded:
      OpenIMManager._onEvent((listener) => listener.onFriendApplicationAdded(channel.data));
      break;
    case ListenerType.onFriendApplicationDeleted:
      OpenIMManager._onEvent((listener) => listener.onFriendApplicationDeleted(channel.data));
      break;
    case ListenerType.onFriendApplicationRejected:
      OpenIMManager._onEvent((listener) => listener.onFriendApplicationRejected(channel.data));
      break;
    case ListenerType.onFriendInfoChanged:
      OpenIMManager._onEvent((listener) => listener.onFriendInfoChanged(channel.data));
      break;
    case ListenerType.onFriendAdded:
      OpenIMManager._onEvent((listener) => listener.onFriendAdded(channel.data));
      break;
    case ListenerType.onFriendDeleted:
      OpenIMManager._onEvent((listener) => listener.onFriendDeleted(channel.data));
      break;
    case ListenerType.onInvitationCancelled:
      OpenIMManager._onEvent((listener) => listener.onInvitationCancelled(channel.data));
      break;
    case ListenerType.onInvitationTimeout:
      OpenIMManager._onEvent((listener) => listener.onInvitationTimeout(channel.data));
      break;
    case ListenerType.onInviteeAccepted:
      OpenIMManager._onEvent((listener) => listener.onInviteeAccepted(channel.data));
      break;
    case ListenerType.onInviteeRejected:
      OpenIMManager._onEvent((listener) => listener.onInviteeRejected(channel.data));
      break;
    case ListenerType.onReceiveNewInvitation:
      OpenIMManager._onEvent((listener) => listener.onReceiveNewInvitation(channel.data));
      break;
    case ListenerType.onInviteeAcceptedByOtherDevice:
      OpenIMManager._onEvent((listener) => listener.onInviteeAcceptedByOtherDevice(channel.data));
      break;
    case ListenerType.onInviteeRejectedByOtherDevice:
      OpenIMManager._onEvent((listener) => listener.onInviteeRejectedByOtherDevice(channel.data));
      break;
    case ListenerType.onHangUp:
      OpenIMManager._onEvent((listener) => listener.onHangup(channel.data));
      break;
    case ListenerType.onRoomParticipantConnected:
      OpenIMManager._onEvent((listener) => listener.onRoomParticipantConnected(channel.data));
      break;
    case ListenerType.onRoomParticipantDisconnected:
      OpenIMManager._onEvent((listener) => listener.onRoomParticipantDisconnected(channel.data));
      break;
    // case ListenerType.onStreamChange:
    //   OpenIMManager._onEvent((listener) => listener.onStreamChangedEvent(channel.data));
    //   break;
    // case ListenerType.onReceiveCustomSignal:
    //   OpenIMManager._onEvent((listener) => listener.onReceiveCustomSignal(channel.data));
    //   break;

    // case ListenerType.onRecvNewNotification:
    //   OpenIMManager._onEvent((listener) => listener.onRecvNewNotification());
    //   break;
    // case ListenerType.onOrganizationUpdated:
    //   OpenIMManager._onEvent((listener) => listener.onOrganizationUpdated());
    //   break;
    case ListenerType.onRecvCustomBusinessMessage:
      OpenIMManager._onEvent((listener) => listener.onRecvCustomBusinessMessage(channel.data));
      break;
    // case ListenerType.onMessageKvInfoChanged:
    //   OpenIMManager._onEvent((listener) => listener.onMessageKvInfoChanged(channel.data));
    //   break;

    /// UploadFileListener
    case ListenerType.open:
      OpenIMManager._onEvent((listener) => listener.onUploadFileOpen(channel.operationID!, channel.data['size']));
      break;
    case ListenerType.partSize:
      OpenIMManager._onEvent((listener) => listener.onUploadFilePartSize(channel.operationID!, channel.data['partSize'], channel.data['num']));
      break;
    case ListenerType.hashPartProgress:
      OpenIMManager._onEvent((listener) => listener.onUploadFileHashPartProgress(channel.operationID!, channel.data['index'], channel.data['size'], channel.data['partHash']));
      break;
    case ListenerType.hashPartComplete:
      OpenIMManager._onEvent((listener) => listener.onUploadFileHashPartComplete(channel.operationID!, channel.data['partsHash'], channel.data['fileHash']));
      break;
    case ListenerType.uploadID:
      OpenIMManager._onEvent((listener) => listener.onUploadFileID(channel.operationID!, channel.data));
      break;
    case ListenerType.uploadPartComplete:
      OpenIMManager._onEvent((listener) => listener.onUploadFilePartComplete(channel.operationID!, channel.data['index'], channel.data['partSize'], channel.data['partHash']));
      break;
    case ListenerType.uploadComplete:
      OpenIMManager._onEvent((listener) => listener.onUploadFileProgress(channel.operationID!, channel.data['fileSize'], channel.data['streamSize'], channel.data['storageSize']));
      break;
    case ListenerType.complete:
      OpenIMManager._onEvent((listener) => listener.onUploadFileComplete(channel.operationID!, channel.data['size'], channel.data['url'], channel.data['typ']));
      break;
  }
}
