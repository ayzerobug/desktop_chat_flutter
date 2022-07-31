import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/charm.dart';
import 'package:iconify_flutter/icons/fluent.dart';
import 'package:iconify_flutter/icons/jam.dart';
import 'package:iconify_flutter/icons/cil.dart';

import '../../resources/colors.dart';
import '../../resources/input_border.dart';
import '../../resources/messages.dart';

class ChatUi extends StatelessWidget {
  ChatUi({Key? key}) : super(key: key);

  final ScrollController chatController = ScrollController();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        ChatUiAppBar(size: size),
        Expanded(
          child: Container(
            color: chatBackgroundColor,
            child: SingleChildScrollView(
              controller: chatController,
              child: Column(
                children: messages
                    .map((e) => e.builder(context, loggedInUser))
                    .toList(),
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(20),
          child: Row(
            children: [
              const Iconify(
                Fluent.attach_12_regular,
                size: 30,
                color: Colors.white,
              ),
              const SizedBox(
                width: 20,
              ),
              Expanded(
                child: TextField(
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: searchBarColor,
                      suffixIcon: Padding(
                        padding: const EdgeInsets.all(3.0),
                        child: Container(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color.fromARGB(22, 255, 255, 255),
                          ),
                          child: const Iconify(
                            Fluent.emoji_28_regular,
                            size: 18,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      hintStyle: const TextStyle(fontSize: 14),
                      hintText: "Message to John Doe",
                      enabledBorder: chatInputBorder,
                      focusedBorder: chatInputBorder,
                      contentPadding: const EdgeInsets.all(20)),
                  style: const TextStyle(fontSize: 14),
                ),
              ),
              const SizedBox(
                width: 20,
              ),
              const Iconify(Cil.microphone, size: 30, color: Colors.white)
            ],
          ),
        )
      ],
    );
  }
}

class ChatUiAppBar extends StatelessWidget {
  const ChatUiAppBar({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      height: size.height * 0.14, //14% of window height
      decoration: const BoxDecoration(
        border: Border(
          bottom: BorderSide(color: borderColor, width: 2),
        ),
      ),
      child: Row(
        children: [
          Expanded(
            child: Row(
              children: [
                const CircleAvatar(
                  backgroundImage: CachedNetworkImageProvider(
                      "https://randomuser.me/api/portraits/men/46.jpg"),
                  radius: 25,
                ),
                const SizedBox(
                  width: 15,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      "Bujange Bapak",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                    SizedBox(
                      height: 3,
                    ),
                    Text(
                      "Typing...",
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        fontSize: 14,
                        color: primaryParticipantColor,
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          Container(
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              border: Border.all(color: greyColor),
              shape: BoxShape.circle,
            ),
            child: const Iconify(
              Fluent.call_24_regular,
              color: Colors.white,
              size: 26,
            ),
          ),
          const SizedBox(width: 10),
          Container(
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              border: Border.all(color: greyColor),
              shape: BoxShape.circle,
            ),
            child: const Iconify(
              Jam.video_camera,
              color: Colors.white,
              size: 26,
            ),
          ),
          const SizedBox(width: 10),
          Container(
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              border: Border.all(color: greyColor),
              shape: BoxShape.circle,
            ),
            child: const Iconify(
              Charm.menu_kebab,
              color: Colors.white,
              size: 20,
            ),
          ),
        ],
      ),
    );
  }
}
