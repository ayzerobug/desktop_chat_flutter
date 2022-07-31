import 'package:desktop_chat_ui/models/user.dart';

class ChatPreviewModel {
  final User user;
  final String? message;
  final bool isTyping;
  final String time;
  final int stage;
  final int unreadCount;

  ChatPreviewModel(
      {required this.user,
      this.message,
      this.isTyping = false,
      required this.time,
      this.stage = 0,
      this.unreadCount = 0});
}
