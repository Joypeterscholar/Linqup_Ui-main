class Message {
  String id;
  String senderId;
  String receiverId;
  String senderMessage;
  String senderImage;
  String userName;
  String receiverImage;
  String receiverMessage;
  bool isRead;
  String timestamp;

  Message({
    required this.id,
    required this.senderId,
    required this.receiverId,
    required this.userName,
    required this.senderImage,
    required this.senderMessage,
    required this.isRead,
    required this.receiverImage,
    required this.receiverMessage,
    required this.timestamp,
  });
}
