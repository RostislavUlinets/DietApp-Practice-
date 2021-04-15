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
      name: "Corn Chowder",
      kiloCaloriesBurnt: "271",
      timeTaken: "10",
      imagePath:
          "assets/corn-chowde.jpg",
      ingredients: [
        "2 Tbsp vegetable oil",
        "1 poblano pepper without seeds and thinly sliced",
        "1 medium onion sliced",
        "2 cloves of garlic roughly chopped",
        "5 corn husks",
        "4 medium potatoes cubed",
        "1 tsp of salt"
      ],
      preparation: '''1. In a large pot add the oil and the sliced poblano chile. Leave it there until it begins to soften. Add the onion and garlic. Leave for five more minutes or until you see that the onion is translucent.\n
2. Add the corn kernels, potatoes, salt and cover with water, add the salt and cover. Leave for 10-15 minutes or until the vegetables are cooked.\n
3. With a ladle, add about one-third of the vegetables and liquid into the container of a blender. Blend until fully liquefied and well integrated. Return to the pot with the rest of the vegetables. If you need more liquid, add a little more water. Check for seasoning and adjust if necessary.\n
4. Serve with a drizzle of olive oil, pumpkin seeds, corn kernels, sprouts or chopped cilantro. Finish with sea salt and pepper.''',
  ),

  Meal(
      mealTime: "DINNER",
      name: "BBQ Seitan",
      kiloCaloriesBurnt: "612",
      timeTaken: "15",
      imagePath:
          "assets/baked-seitan.jpg",
      ingredients: [
      "1 c. vital wheat gluten",
      "2 Tbsp nutritional yeast",
      "1 tsp garlic powder",
      "2 tsp smoked paprika",
      "2 tsp onion powder",
      "1 Tbsp soy sauce",
      "2 Tbsp tahini",
        "1 c. veggie broth",
        "1/3 c. BBQ sauce of choice"
      ],
      preparation: '''1. Preheat the oven to 350F.\n
2. In a mixing bowl, add in vital wheat gluten, nutritional yeast, garlic powder, smoked paprika, and onion powder then with a fork mix well to combine.\n
3. Add in soy sauce, tahini and vegetable broth, then with your fork, whisk to combine liquid into the flour until a dough like ball forms.\n
4. With your hands, gently knead the gluten ball a few times making sure not to over do it. Should take no more than a minute.\n
5. Transfer dough to a lined baking sheet. Flatten and spread dough out until it is half an inch thick.\n
6. Place the baking sheet in the oven for 20-25 minutes.\n
7. Remove seitan from the oven and brush both sides with your favorite BBQ sauce. At this stage you can either grill or rebake your seitan.\n
8. Place seitan back in the oven for another 10 minutes. You may also opt to broil on high for about 2-3 minutes to help give a little char to the ends of your seitan.\n
9. Place seitan on a preheated electric grill and allow to cook and sear for about 4-5 minutes on each side or until grill marks appear on the surface of the seitan.\n
10. Once seitan is cooked, place on a clean surface or plate to rest for 3-5 minutes, then cut and serve as desired.\n'''
  ),
  Meal(
      mealTime: "SNACK",
      name: "Salmon Salad",
      kiloCaloriesBurnt: "177",
      timeTaken: "16",
      imagePath:
          "assets/salmon-salad.jpg",
      ingredients: [
        "2 Tbsp red wine vinegar",
        "1 avocado",
        "Aleppo pepper flakes",
        "Boston lettuce leaves",
        "3 roasted beets quartered",
        "2 orange peeled, cut into segments",
        "1 grapefruit peeled, cut into segments",
        "1/2 English cucumber sliced",
        "1/2 red onion"
      ],
      preparation: '''1. Pickle onions by placing onion and vinegar in small bowl, and letting them sit for 15 minutes.\n
2. Meanwhile, line serving plate with lettuce leaves.\n
3. Cut avocado in half and remove pit. Scoop spoonfuls of avocado onto plate; season with flakey salt and aleppo pepper.\n
4. Arrange quartered beets on plate. Arrange orange and grapefruit segments on plate.\n
5. Lightly salt tomato slices. Place on plate.\n
6. Lightly salt cucumbers and place on plate.\n
7. Scatter pickled onions on plate.\n
8. Break salmon into pieces and arrange on plate.\n
9. Drizzle Citrus Shallot Vinaigrette on top and sprinkle with a little flakey salt to finish.\n'''
  ),
];
