class FoodModel {
  String title;
  String img;
  String desc;
  String subtitle;
  int rate;
  double price;
  String category;
  int qty = 1;

  FoodModel(this.title, this.img, this.desc, this.subtitle, this.rate,
      this.price, this.category);

  static List<FoodModel> foodList = [
    FoodModel(
        "Pizza",
        "https://static.vecteezy.com/system/resources/thumbnails/025/076/438/small/pizza-isolated-illustration-ai-generative-png.png",
        "Pizza",
        "pizza dough freezes well, thaws easily, ",
        4,
        8,
        "pizza"),
    FoodModel(
        "Tteokbokki (떡볶이)",
        "https://digital-bucket.prod.bfi.co.id/assets/Blog/Blog%20New/Laris%20Manis,%20Ini%20Dia%2015%20Ide%20Usaha%20Korean%20Street%20Food%20Modal%20Kecil!/Korean%20Street%20Food.jpg",
        "Spicy",
        "",
        4,
        8,
        "spicy"),
    FoodModel("Hotpot", "https://m.media-amazon.com/images/I/81hCtnYE1qL.jpg",
        "hotpot", "", 4, 8, "hotpot"),
    FoodModel(
        "Burger",
        "https://assets.bonappetit.com/photos/5b919cb83d923e31d08fed17/1:1/w_2560%2Cc_limit/basically-burger-1.jpg",
        "Burger",
        "",
        5,
        8,
        "pizza"),
    FoodModel("Hotpot", "https://m.media-amazon.com/images/I/81hCtnYE1qL.jpg",
        "hotpot", "", 4, 8, "hotpot"),
    FoodModel(
        "Fried Chicken",
        "https://www.cookinwithmima.com/wp-content/uploads/2022/06/gochujang-chicken-tenders.jpg",
        "Crispy Fried Chicken",
        "",
        5,
        12,
        "pizza"),
    FoodModel(
        "spaghetti",
        "https://static01.nyt.com/images/2022/12/23/multimedia/afg-spaghetti-alla-assassina-1-19ef/afg-spaghetti-alla-assassina-1-19ef-superJumbo.jpg",
        "Spicy Tomato Pasta",
        "",
        4,
        8,
        "Pasta"),
    FoodModel(
        "Pizza",
        "https://womensfitness.co.uk/wp-content/uploads/sites/3/2022/11/Shutterstock_1675475479.jpg",
        "Pizza",
        "",
        4,
        8,
        "pizza"),
    FoodModel(
        "Pizza",
        "https://womensfitness.co.uk/wp-content/uploads/sites/3/2022/11/Shutterstock_1675475479.jpg",
        "Pizza",
        "",
        4,
        8,
        "pizza"),
    FoodModel(
        "Pizza",
        "https://womensfitness.co.uk/wp-content/uploads/sites/3/2022/11/Shutterstock_1675475479.jpg",
        "Pizza",
        "",
        4,
        8,
        "pizza"),
  ];
}
