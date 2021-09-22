import 'package:wpp_clone/models/chat_model.dart';

class StatusModel {
  final String imgUrl;
  final String name;
  final String time;

  StatusModel({required this.imgUrl, required this.name, required this.time});
}

List<StatusModel> status = [
  new StatusModel(
      imgUrl: messageData[0].imageUrl,
      name: messageData[0].name,
      time: "Today, 10:55"),
  new StatusModel(
      imgUrl: messageData[4].imageUrl,
      name: messageData[4].name,
      time: "Yesterday, 18:30"),
  new StatusModel(
      imgUrl: messageData[6].imageUrl,
      name: messageData[6].name,
      time: "Today, 20:02"),
];
