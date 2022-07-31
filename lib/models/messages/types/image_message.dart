import '../message.dart';

class ImageMessage extends Message {
  String? caption;
  final String imageUrl;
  ImageMessage(
      {required super.author,
      required super.time,
      super.stage,
      required this.imageUrl,
      this.caption});
}
