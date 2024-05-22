class ScreenDataModel {
  final String titles;
  final image;
  final viewsInfo;

  ScreenDataModel(
      {required this.titles, required this.image, required this.viewsInfo});
}

List<ScreenDataModel> data = [
  ScreenDataModel(
      titles: "@ashishchanchalanivines Explain Dark | Netflix India",
      image: "assets/images/UviC8so8lv4-HD.jpg",
      viewsInfo: "Netflix India\n4.3M views \u2022 3 years ago"),
  ScreenDataModel(
      titles: "This is too much for me...ATTACK ON TITAN 3x17 and 3x18",
      image: "assets/images/1oImgZFxfOA-HD.jpg",
      viewsInfo: "Nicholas Light TV\n549K view \u2022 2 years ago"),
  ScreenDataModel(
      titles:
          "Realme GT 6T Unboxing ! *All Rounder Performance Phone @  ₹24,999*",
      image: "assets/images/I6upHAy5HSw-HD.jpg",
      viewsInfo: "Tech Burner\n119K view \u2022 6 hour ago"),
  ScreenDataModel(
      titles: "RTX 4060 Light Weight Gaming Laptop Under Rs.1 Lakh",
      image: "assets/images/OrRdEJ9_Gy4-HD.jpg",
      viewsInfo: "Venom's Tech\n8.4k views \u2022 43 minutes ago"),
];
