class MessageDto {
  String text;
  String receiver;
  String sender;
  DateTime timestamp;

  MessageDto.fromJson(json) {
    text = json['message_content'];
    receiver = json['receiver_name'];
    sender = json['sender_name'];
    //timestamp = DateTime(json['message_timestamp']);
  }
}
