import '../message.dart';

class AudioMessage extends Message {
  final String size;
  final String audioFormat;
  final String audioName;
  AudioMessage(
      {required super.author,
      required super.time,
      super.stage,
      required this.size,
      required this.audioFormat,
      required this.audioName});
}
