class FoodModel {
  String title;
  String img;
  String desc;
  int rate;
  double price;
  String category;

  FoodModel(
      this.title, this.img, this.desc, this.rate, this.price, this.category);

  static List<FoodModel> foodList = [
    FoodModel(
        "Pizza",
        "https://static.vecteezy.com/system/resources/thumbnails/025/076/438/small/pizza-isolated-illustration-ai-generative-png.png",
        "Pizza",
        4,
        8,
        "pizza"),
    FoodModel("Burger", "https://m.media-amazon.com/images/I/81hCtnYE1qL.jpg",
        "Burger", 5, 8, "pizza"),
    FoodModel("Hotpot", "https://m.media-amazon.com/images/I/81hCtnYE1qL.jpg",
        "hotpot", 4, 8, "hotpot"),
    FoodModel(
        "Pizza",
        "https://womensfitness.co.uk/wp-content/uploads/sites/3/2022/11/Shutterstock_1675475479.jpg",
        "Pizza",
        4,
        12,
        "pizza"),
    FoodModel(
        "Pizza",
        "https://womensfitness.co.uk/wp-content/uploads/sites/3/2022/11/Shutterstock_1675475479.jpg",
        "Pizza",
        4,
        8,
        "pizza"),
    FoodModel(
        "Pizza",
        "https://womensfitness.co.uk/wp-content/uploads/sites/3/2022/11/Shutterstock_1675475479.jpg",
        "Pizza",
        4,
        8,
        "pizza"),
    FoodModel(
        "Pizza",
        "https://womensfitness.co.uk/wp-content/uploads/sites/3/2022/11/Shutterstock_1675475479.jpg",
        "Pizza",
        4,
        8,
        "pizza"),
    FoodModel(
        "Pizza",
        "https://womensfitness.co.uk/wp-content/uploads/sites/3/2022/11/Shutterstock_1675475479.jpg",
        "Pizza",
        4,
        8,
        "pizza"),
    FoodModel(
        "Pizza",
        "https://womensfitness.co.uk/wp-content/uploads/sites/3/2022/11/Shutterstock_1675475479.jpg",
        "Pizza",
        4,
        8,
        "pizza"),
  ];
}
