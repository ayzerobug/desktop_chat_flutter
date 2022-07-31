import 'package:flutter/material.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/ion.dart';

import '../../custom_widgets/status_builder.dart';
import '../../resources/colors.dart';
import '../user.dart';
import 'types/document_message.dart';
import 'types/text_message.dart';
import 'types/timestamp_message.dart';

class Message {
  User? author;
  String? time;
  int? stage;

  Message({this.author, this.time, this.stage});

  Widget builder(BuildContext ctx, User loggedInUser) {
    switch (runtimeType) {
      case TimeStampMessage:
        return timestampMessageBuilder(this);
      case TextMessage:
        return textMessageBuilder(ctx, this, loggedInUser);
      case DocumentMessage:
        return documentMessageBuilder(ctx, this, loggedInUser);
      default:
        return Container();
    }
  }
}

Widget timestampMessageBuilder(dynamic message) {
  return Text(
    message.displayTime,
    style: const TextStyle(
      fontSize: 16,
      color: mutedTextColor,
      fontWeight: FontWeight.w500,
    ),
    textAlign: TextAlign.center,
  );
}

Widget textMessageBuilder(
    BuildContext ctx, dynamic message, User loggedInUser) {
  // return chatClientMessageTemplate(
  //     ctx: ctx, time: message.time, child: Text(message.text));
  return message.author == loggedInUser
      ? loggedInUserMessageTemplate(
          ctx: ctx,
          time: message.time,
          stage: message.stage,
          child: Text(
            message.text,
            style: const TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w500,
            ),
          ))
      : chatClientMessageTemplate(
          ctx: ctx,
          time: message.time,
          child: Text(
            message.text,
            style: const TextStyle(
              color: greyColor,
              fontWeight: FontWeight.w500,
            ),
          ));
}

Widget loggedInUserMessageTemplate(
    {required BuildContext ctx,
    required String time,
    required int stage,
    required Widget child}) {
  return Row(
    children: [
      const Spacer(),
      IntrinsicWidth(
        child: Container(
          padding: const EdgeInsets.all(15),
          constraints: BoxConstraints(
            maxWidth: MediaQuery.of(ctx).size.width * 0.3,
          ),
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.all(14),
                decoration: const BoxDecoration(
                  color: primaryParticipantColor,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(14),
                    bottomLeft: Radius.circular(14),
                    bottomRight: Radius.circular(14),
                  ),
                ),
                child: child,
              ),
              const SizedBox(
                height: 5,
              ),
              Row(
                children: [
                  statusBuilder(stage),
                  Text(
                    time,
                    style: const TextStyle(
                      color: mutedTextColor,
                      fontWeight: FontWeight.w500,
                      fontSize: 12,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    ],
  );
}

Widget chatClientMessageTemplate(
    {required BuildContext ctx, required String time, required Widget child}) {
  return Row(
    children: [
      IntrinsicWidth(
        child: Container(
          padding: const EdgeInsets.all(15),
          constraints: BoxConstraints(
            maxWidth: MediaQuery.of(ctx).size.width * 0.3,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Container(
                padding: const EdgeInsets.all(14),
                decoration: const BoxDecoration(
                  color: secondaryParticipantColor,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(14),
                    bottomLeft: Radius.circular(14),
                    bottomRight: Radius.circular(14),
                  ),
                ),
                child: child,
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                time,
                style: const TextStyle(
                  color: mutedTextColor,
                  fontWeight: FontWeight.w500,
                  fontSize: 12,
                ),
              ),
            ],
          ),
        ),
      ),
      const Spacer(),
    ],
  );
}

Widget documentMessageBuilder(
    BuildContext ctx, dynamic message, User loggedInUser) {
  Widget child = Column(
    children: [
      Container(
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: chatBackgroundColor,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          children: [
            const Iconify(Ion.document_text, color: Colors.blue),
            const SizedBox(
              width: 10,
            ),
            Expanded(
              child: Text(
                message.documentName,
                style: const TextStyle(
                  color: greyColor,
                  fontWeight: FontWeight.w500,
                ),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
            )
          ],
        ),
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            message.documentFormat,
            style: const TextStyle(
              color: greyColor,
              fontSize: 12,
            ),
          ),
          Text(
            message.documentSize,
            style: const TextStyle(
              color: greyColor,
              fontSize: 12,
            ),
          ),
        ],
      )
    ],
  );
  return message.author == loggedInUser
      ? loggedInUserMessageTemplate(
          ctx: ctx, time: message.time, stage: message.stage, child: child)
      : chatClientMessageTemplate(ctx: ctx, time: message.time, child: child);
}
