import '../message.dart';

class DocumentMessage extends Message {
  final String documentSize;
  final String documentFormat;
  final String documentName;
  DocumentMessage(
      {required super.author,
      required super.time,
      super.stage,
      required this.documentSize,
      required this.documentFormat,
      required this.documentName});
}
