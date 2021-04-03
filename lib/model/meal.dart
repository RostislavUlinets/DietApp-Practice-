class Meal {
  final String mealTime, name, imagePath, kiloCaloriesBurnt, timeTaken;

  Meal({
    this.mealTime,
    this.name,
    this.imagePath,
    this.kiloCaloriesBurnt,
    this.timeTaken,
  });
}

final meals = [
  Meal(
    mealTime: "BREAKFAST",
    name: "Fruit Granola",
    kiloCaloriesBurnt: "271",
    timeTaken: "10",
    imagePath: "assets/Fruit-and-Nut-Granola-via-www.SimplyScratch.com-recipe-720x720.jpg"

  ),
  Meal(
      mealTime: "DINNER",
      name: "Pesto Pasta",
      kiloCaloriesBurnt: "612",
      timeTaken: "15",
      imagePath: "assets/Fruit-and-Nut-Granola-via-www.SimplyScratch.com-recipe-720x720.jpg"

  ),
  Meal(
      mealTime: "SNACK",
      name: "Keta Snack",
      kiloCaloriesBurnt: "414",
      timeTaken: "16",
      imagePath: "assets/Fruit-and-Nut-Granola-via-www.SimplyScratch.com-recipe-720x720.jpg"

  ),

];