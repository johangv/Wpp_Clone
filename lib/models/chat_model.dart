class ChatModel {
  final String name;
  String message;
  final String time;
  final String imageUrl;

  ChatModel(
      {required this.name,
      required this.message,
      required this.time,
      required this.imageUrl});
}

List<ChatModel> messageData = [
  new ChatModel(
      name: "Johan Gil",
      message: "Hola, como estás?",
      time: "12:30",
      imageUrl: "https://thispersondoesnotexist.com/image"),
  new ChatModel(
      name: "Steve Jobs",
      message: "Nos vemos más tarde",
      time: "5:30",
      imageUrl:
          "https://esports.as.com/2019/04/26/bonus/cine--series-y-anime/Vengadores-Endgame_1239786034_195960_1440x810.jpg"),
  new ChatModel(
      name: "Valentina Rodríguez",
      message: "Bien y tú?",
      time: "8:30",
      imageUrl:
          "https://upload.wikimedia.org/wikipedia/commons/d/dc/Steve_Jobs_Headshot_2010-CROP_%28cropped_2%29.jpg"),
  new ChatModel(
      name: "Felipe Ignacio",
      message: "Jajajajjajajja",
      time: "23:25",
      imageUrl:
          "https://iteragrow.com/wp-content/uploads/2018/04/buyer-persona-e1545248524290.jpg"),
  new ChatModel(
      name: "Richard Anderson",
      message: "Buenos días",
      time: "22:20",
      imageUrl:
          "https://st.depositphotos.com/2069323/2156/i/600/depositphotos_21568785-stock-photo-man-pointing.jpg"),
  new ChatModel(
      name: "Andres Casas",
      message: "XD",
      time: "18:25",
      imageUrl:
          "https://st2.depositphotos.com/2931363/6511/i/600/depositphotos_65116237-stock-photo-happy-young-man-in-shirt.jpg"),
  new ChatModel(
      name: "Jaime Ucciono",
      message: "Buena noches",
      time: "12:50",
      imageUrl:
          "https://www.caritas.org.mx/wp-content/uploads/2019/02/cualidades-persona-humanitaria.jpg"),
  new ChatModel(
      name: "Andrea Realpe",
      message: "Whats up Raul!",
      time: "23:25",
      imageUrl:
          "https://d25rq8gxcq0p71.cloudfront.net/dictionary-images/324/419665d2-74b7-49d4-b3c8-3aea253f966f.jpg"),
];
