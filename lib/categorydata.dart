class Category {
  String img;
  String text;
  String remoteurl;
  Category(
    this.img,
    this.text, {
    this.remoteurl,
  });
}

List<Category> listcard = [
  Category("images/barbecue.png", "Barbecue"),
  Category("images/bread.png", "Bread"),
  Category("images/Burger.png", "Burger"),
  Category("images/cake.png", "Cake"),
  Category("images/chickenfries.png", "C.Fries"),
  Category("images/donut.png", "Donut"),
  Category("images/Fastfood.png", "F.Food"),
  Category("images/hotdrinks.png", "Drinks"),
  Category("images/icecream.png", "IceCream"),
  Category("images/Tea.png", "Tea"),
];
