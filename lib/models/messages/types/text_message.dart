import '../message.dart';

class TextMessage extends Message {
  final String text;
  TextMessage(
      {required super.author,
      required super.time,
      super.stage,
      required this.text});
}
