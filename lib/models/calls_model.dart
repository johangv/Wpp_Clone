class CallsModel {
  final String name;
  final String time;
  final String imageUrl;
  final bool incoming;
  final bool attended;

  CallsModel(
      {required this.name,
      required this.time,
      required this.imageUrl,
      required this.incoming,
      required this.attended});
}

List<CallsModel> callsData = [
  new CallsModel(
      name: "Johan Gil",
      time: "Today, 12:30",
      imageUrl: "https://thispersondoesnotexist.com/image",
      incoming: true,
      attended: true),
  new CallsModel(
      name: "Steve Jobs",
      time: "Today, 5:30",
      imageUrl:
          "https://esports.as.com/2019/04/26/bonus/cine--series-y-anime/Vengadores-Endgame_1239786034_195960_1440x810.jpg",
      incoming: false,
      attended: false),
  new CallsModel(
      name: "Valentina Rodríguez",
      time: "Yesterday, 8:30",
      imageUrl:
          "https://upload.wikimedia.org/wikipedia/commons/d/dc/Steve_Jobs_Headshot_2010-CROP_%28cropped_2%29.jpg",
      incoming: false,
      attended: true),
  new CallsModel(
      name: "Valentina Rodríguez",
      time: "Yesterday, 4:10",
      imageUrl:
          "https://upload.wikimedia.org/wikipedia/commons/d/dc/Steve_Jobs_Headshot_2010-CROP_%28cropped_2%29.jpg",
      incoming: true,
      attended: false),
];
