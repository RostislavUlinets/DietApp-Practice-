class Meal {
  final String mealTime, name, imagePath, kiloCaloriesBurnt, timeTaken;
  final String preparation;
  final List ingredients;

  Meal({
    this.mealTime,
    this.name,
    this.imagePath,
    this.kiloCaloriesBurnt,
    this.timeTaken,
    this.preparation,
    this.ingredients
  });
}

final meals = [
  Meal(
      mealTime: "BREAKFAST",
      name: "Fruit Granola",
      kiloCaloriesBurnt: "271",
      timeTaken: "10",
      imagePath:
          "assets/Fruit-and-Nut-Granola-via-www.SimplyScratch.com-recipe-720x720.jpg",
      ingredients: [
        "1 cup of granola",
        "1 banana",
        "250 ml of milk",
      ],
      preparation: '''Fruit granola is such better than you think ''',
  ),

  Meal(
      mealTime: "DINNER",
      name: "Pesto Pasta",
      kiloCaloriesBurnt: "612",
      timeTaken: "15",
      imagePath:
          "assets/Fruit-and-Nut-Granola-via-www.SimplyScratch.com-recipe-720x720.jpg"),
  Meal(
      mealTime: "SNACK",
      name: "Keta Snack",
      kiloCaloriesBurnt: "414",
      timeTaken: "16",
      imagePath:
          "assets/Fruit-and-Nut-Granola-via-www.SimplyScratch.com-recipe-720x720.jpg"),
];
