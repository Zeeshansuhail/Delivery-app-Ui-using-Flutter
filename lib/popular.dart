class Popular {
  String img;
  String text;
  String rating;
  String hotel_name;
  String price;
  String remoteurl;
  Popular(
    this.img,
    this.text,
    this.rating,
    this.hotel_name,
    this.price, {
    this.remoteurl,
  });
}

List<Popular> listPop = [
  Popular("images/Pasta.jpg", "Pasta", "5.0", "Italien Restraurant", "\$90.0"),
  Popular("images/Burgers.jpg", "Burger", "4.5", "Mc Donalds", "\$100.0"),
  Popular("images/Noodles.jpg", "Spicy Noodles", "4.0", "Italien Restraurant",
      "\$50.0"),
  Popular("images/Salad.jpg", "Salad", "3.0", "Italien Restraurant", "\$20.0"),
  Popular(
      "images/Fruites.jpg", "Spices", "2.0", "Indian Restraurant", "\$30.0"),
];
