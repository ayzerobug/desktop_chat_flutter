import 'package:flutter/material.dart';

import '../models/chat_preview.dart';
import '../resources/colors.dart';
import 'badge.dart';
import 'status_builder.dart';
import 'user_avatar.dart';

class ChatPreviewWidget extends StatelessWidget {
  const ChatPreviewWidget(
      {Key? key, required this.chat, this.isSelected = false})
      : super(key: key);
  final ChatPreviewModel chat;
  final bool isSelected;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 15),
      decoration: BoxDecoration(
          color: isSelected ? const Color(0xff252b2e) : Colors.transparent),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          UserAvatar(
            avatarUrl: chat.user.avatarUrl,
            radius: 40,
          ),
          const SizedBox(
            width: 5,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  chat.user.name,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
                // const SizedBox(
                //   height: 2,
                // ),
                chat.isTyping
                    ? const Text(
                        "Typing...",
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          fontSize: 14,
                          color: primaryParticipantColor,
                          fontStyle: FontStyle.italic,
                        ),
                      )
                    : Text(
                        chat.message ?? "",
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: const TextStyle(
                          fontSize: 14,
                          color: greyColor,
                        ),
                      )
              ],
            ),
          ),
          const SizedBox(
            width: 20,
          ),
          statusBuilder(chat.stage),
          Column(
            children: [
              Text(
                chat.time,
                style: const TextStyle(fontSize: 12, color: greyColor),
              ),
              const SizedBox(
                height: 4,
              ),
              chat.unreadCount > 0
                  ? Badge(
                      caption: chat.unreadCount.toString(),
                      color: primaryParticipantColor,
                      fontSize: 8,
                    )
                  : Container()
            ],
          )
        ],
      ),
    );
  }
}
