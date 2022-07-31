import '../message.dart';

class ActionMessage extends Message {
  final String text;

  ActionMessage({super.author, super.time, required this.text});
}
