import '../models/chat_preview.dart';
import 'users.dart';

List<ChatPreviewModel> chatPreviews = <ChatPreviewModel>[
  ChatPreviewModel(
    user: users[0],
    message:
        "Adipisicing in in ullamco commodo ea enim consequat eu et adipisicing nulla Lorem.",
    time: "13:10 PM",
    stage: 1,
  ),
  ChatPreviewModel(
    user: users[1],
    time: "12:00 PM",
    stage: 2,
    isTyping: true,
  ),
  ChatPreviewModel(
    user: users[2],
    message: "Jam 3 sore ana meeting",
    time: "08:00 AM",
    stage: 2,
  ),
  ChatPreviewModel(
    user: users[3],
    message: "Ndeleng PR B.Inggris e lah",
    time: "10:32 AM",
    unreadCount: 3,
  ),
  ChatPreviewModel(
    user: users[4],
    message:
        "Nostrud amet est ad cillum mollit consectetur reprehenderit cillum exercitation.",
    time: "Yesterday",
    unreadCount: 1,
  ),
  ChatPreviewModel(
    user: users[5],
    message:
        "In sunt ullamco proident ex reprehenderit excepteur exercitation et voluptate.",
    time: "Yesterday",
  ),
];
