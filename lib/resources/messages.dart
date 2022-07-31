import 'package:desktop_chat_ui/resources/users.dart';

import '../models/messages/message.dart';
import '../models/messages/types/document_message.dart';
import '../models/messages/types/text_message.dart';
import '../models/messages/types/timestamp_message.dart';
import '../models/user.dart';

User loggedInUser = users[0];
User chatClient = users[1];

List<Message> messages = <Message>[
  TimeStampMessage(displayTime: "Today"),
  TextMessage(author: chatClient, time: "12:00 PM", text: "Hello, Nizar Ali"),
  TextMessage(
      author: chatClient,
      time: "12:01 PM",
      text:
          "Good Afternoon, may i ask your help to make a real estate landing page, for more details i will send as soon as you provide it. Thanks"),
  TextMessage(
      author: loggedInUser, time: "12:10 PM", text: "Haii, Micheal!", stage: 2),
  TextMessage(
      author: loggedInUser,
      time: "12:10 PM",
      text:
          "Thank you for the offer you gave me, yes I will accept the project from you, for the brief please send it now so i can study it first.",
      stage: 2),
  DocumentMessage(
      author: chatClient,
      time: "12:28 PM",
      documentFormat: "DOCX",
      documentSize: "32 kb",
      documentName: "Brief Project Real Estate Landing Page"),
  TextMessage(
      author: loggedInUser,
      time: "12:33 PM",
      text: "Ohh i see, for payment we can directly discuss now",
      stage: 1),
];
