import 'package:intl/intl.dart';

class Meal {
  final String mealTime, name, imagePath, kiloCaloriesBurnt, timeTaken;
  final String preparation;
  final List ingredients;

  Meal(
      {this.mealTime,
      this.name,
      this.imagePath,
      this.kiloCaloriesBurnt,
      this.timeTaken,
      this.preparation,
      this.ingredients});
}

List meals() {
  if (DateFormat('EEEE').format(DateTime.now()) == "Monday") {
    final meals1 = [
      Meal(
        mealTime: "BREAKFAST",
        name: "Corn Chowder",
        kiloCaloriesBurnt: "271",
        timeTaken: "10",
        imagePath: "assets/corn-chowde.jpg",
        ingredients: [
          "2 Tbsp vegetable oil",
          "1 poblano pepper without seeds and thinly sliced",
          "1 medium onion sliced",
          "2 cloves of garlic roughly chopped",
          "5 corn husks",
          "4 medium potatoes cubed",
          "1 tsp of salt"
        ],
        preparation:
            '''1. In a large pot add the oil and the sliced poblano chile. Leave it there until it begins to soften. Add the onion and garlic. Leave for five more minutes or until you see that the onion is translucent.\n
2. Add the corn kernels, potatoes, salt and cover with water, add the salt and cover. Leave for 10-15 minutes or until the vegetables are cooked.\n
3. With a ladle, add about one-third of the vegetables and liquid into the container of a blender. Blend until fully liquefied and well integrated. Return to the pot with the rest of the vegetables. If you need more liquid, add a little more water. Check for seasoning and adjust if necessary.\n
4. Serve with a drizzle of olive oil, pumpkin seeds, corn kernels, sprouts or chopped cilantro. Finish with sea salt and pepper.''',
      ),
      Meal(
          mealTime: "LUNCH",
          name: "BBQ Seitan",
          kiloCaloriesBurnt: "612",
          timeTaken: "15",
          imagePath: "assets/baked-seitan.jpg",
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
10. Once seitan is cooked, place on a clean surface or plate to rest for 3-5 minutes, then cut and serve as desired.\n'''),
      Meal(
          mealTime: "DINNER",
          name: "Salmon Salad",
          kiloCaloriesBurnt: "177",
          timeTaken: "16",
          imagePath: "assets/salmon-salad.jpg",
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
          preparation:
              '''1. Pickle onions by placing onion and vinegar in small bowl, and letting them sit for 15 minutes.\n
2. Meanwhile, line serving plate with lettuce leaves.\n
3. Cut avocado in half and remove pit. Scoop spoonfuls of avocado onto plate; season with flakey salt and aleppo pepper.\n
4. Arrange quartered beets on plate. Arrange orange and grapefruit segments on plate.\n
5. Lightly salt tomato slices. Place on plate.\n
6. Lightly salt cucumbers and place on plate.\n
7. Scatter pickled onions on plate.\n
8. Break salmon into pieces and arrange on plate.\n
9. Drizzle Citrus Shallot Vinaigrette on top and sprinkle with a little flakey salt to finish.\n'''),
    ];
    return meals1;
  } else if (DateFormat('EEEE').format(DateTime.now()) == "Tuesday") {
    final meals1 = [
      Meal(
        mealTime: "BREAKFAST",
        name: "EGGS & TOAST",
        kiloCaloriesBurnt: "164",
        timeTaken: "10",
        imagePath: "assets/Easy-French-Toast-breakfast-.jpg",
        ingredients: [
          "2 boiled eggs",
          "1 piece whole grain toast",
        ],
        preparation:
            '''1. Place eggs in a saucepan or pot and cover with cold water.\n
2. Put pan over high heat and bring water to a rolling boil. Remove pan from heat and cover.\n
3. Let the eggs stand in the hot water for 4 to 12 minutes, depending on how firm or set you want the yolks to be.''',
      ),
      Meal(
        mealTime: "LUNCH",
        name: "Chicken Soup",
        kiloCaloriesBurnt: "212",
        timeTaken: "25",
        imagePath: "assets/Chicken Soup.jpg",
        ingredients: [
          "chicken broth",
          "quinoa",
          "chicken",
          "garlic",
          "Romaine Lettuce leaves"
        ],
        preparation: '''1. Boil 2 cups chicken broth\n
2. 1/3 cup quinoa\n
3. 1/2 cup coocked chicken for 20 min\n
4. 2 cloves of garlic roughly chopped''',
      ),
      Meal(
        mealTime: "DINNER",
        name: "Pork Milanese",
        kiloCaloriesBurnt: "290",
        timeTaken: "30",
        imagePath: "assets/PorkMilanese.jpg",
        ingredients: [
          "2 boneless pork chops (about 5 ounces each)",
          "Kosher salt and freshly ground pepper",
          "2 large eggs",
          "2 teaspoons vegetable oil, plus more for frying",
          "2 tablespoons rice vinegar",
          "3 carrots, grated",
          "1 cup assorted cherry tomatoes, halved"
        ],
        preparation:
            '''1. Pound the pork chops with a meat mallet or heavy skillet until about 1/4 inch thick; season with salt and pepper. Put the flour in a shallow baking dish. Whisk the eggs, 1/2 teaspoon sesame oil and a pinch each of salt and pepper in a second dish. Put the panko in a third dish. Working with 1 chop at a time, coat in the flour and then dip in the egg, shaking off any excess; firmly press both sides in the panko. \n
2. Heat about 1/2 cup vegetable oil in a large nonstick skillet over medium-high heat until very hot (a breadcrumb should instantly sizzle in the oil). Working in batches, fry the chops, turning once, until browned and cooked through, 4 to 5 minutes. Transfer to a paper towel–lined plate to drain; season with salt. (Add more oil to the skillet between batches if needed to maintain a thin layer.) \n
3. While the chops cook, whisk the vinegar, miso, 2 teaspoons vegetable oil and the remaining 1 1/2 teaspoons sesame oil in a large bowl until smooth. Add the greens, carrots and tomatoes and toss; season with salt and pepper. Serve with the pork chops.''',
      ),
    ];
    return meals1;
  } else if (DateFormat('EEEE').format(DateTime.now()) == "Wednesday") {
    final meals1 = [
      Meal(
        mealTime: "BREAKFAST",
        name: "Chinese Chicken",
        kiloCaloriesBurnt: "196",
        timeTaken: "25",
        imagePath: "assets/ChickenLatuce.jpg",
        ingredients: [
          "2 cups, 4 handfuls, fresh shiitake mushrooms",
          "2 tablespoons light colored oil, such as vegetable oil or peanut oil",
          "Coarse salt and coarse black pepper",
          "1 orange, zested",
          "1/2 red bell pepper, diced small",
          "3 scallions, chopped",
        ],
        preparation:
            '''1. Remove tough stems from mushrooms and brush with damp towel to clean, Slice mushrooms. Chop chicken into small pieces. \n
2. Preheat a large skillet or wok to high. \n
3. Add oil to hot pan. Add chicken to the pan and sear meat by stir frying a minute or 2. Add mushrooms and cook another minute or two. Add salt and pepper to season, then garlic and ginger. Cook a minute more. Grate zest into pan, add bell pepper bits, chopped water chestnuts and scallions. Cook another minute, continuing to stir fry mixture. Add hoisin Chinese barbecue sauce and toss to coat the mixture evenly. Transfer the hot chopped barbecued chicken to serving platter and pile the quartered wedges of crisp iceberg lettuce along side. Add wedged oranges to platter to garnish. To eat, pile spoonfuls into lettuce leaves, wrapping lettuce around fillings and squeeze an orange wedge over. ''',
      ),
      Meal(
        mealTime: "LUNCH",
        name: "Tomato Salmon",
        kiloCaloriesBurnt: "186",
        timeTaken: "30",
        imagePath: "assets/TomatoeySalmon.jpg",
        ingredients: [
          "1/4 cup olive oil",
          "1 tablespoon tomato paste",
          "1 teaspoon crushed red pepper flakes",
          "1 pound cherry tomatoes",
          "Four 4- to 5-ounce frozen skinless salmon fillets"
        ],
        preparation:
            '''1.Heat the olive oil in a large saucepan over medium heat. Add the garlic and cook, stirring frequently, until fragrant but not browned, about 1 minute. Add the tomato paste, red pepper flakes and 1 teaspoon each salt and black pepper and cook, stirring constantly, until the tomato paste darkens, about 1 minute. \n
2.Add the cherry tomatoes to the saucepan, mashing a few with a wooden spoon. Cook, stirring occasionally, until the tomatoes split and soften, 8 to 10 minutes. Stir in the vinegar and 1 1/2 cups water and bring to a simmer over medium-high heat. Cook until slightly thickened, 5 to 7 minutes.  \n
3.Add the salmon to the saucepan in a single layer. Reduce the heat to medium, cover and cook until the salmon is opaque throughout and flakes easily when a paring knife is inserted between the layers, 7 to 9 minutes. Serve the salmon in shallow bowls with the tomato sauce ladled over.''',
      ),
      Meal(
        mealTime: "DINNER",
        name: "Roasted Pork",
        kiloCaloriesBurnt: "264",
        timeTaken: "30",
        imagePath: "assets/Roasted Pork.jpg",
        ingredients: [
          "3 cups mixed black and green seedless grapes",
          "10 to 12 fresh sage leaves",
          "Kosher salt and freshly ground black pepper",
          "1 pork tenderloin, trimmed and patted dry ",
          "1/2 cup couscous",
          "2 tablespoons walnuts, chopped",
        ],
        preparation:
            '''1. Position 2 oven racks in the top and middle position, and preheat to 450 degrees F. Toss the grapes and sage leaves with 2 tablespoons of the oil, 1 teaspoon salt and a few grinds of pepper on a rimmed baking sheet. Bake on the top rack until the grapes have shriveled and softened and the skins have browned, 15 to 20 minutes. Pull out some of the sage leaves to use as garnish. \n
2. Meanwhile, season the pork all over with 1/2 teaspoon salt and a few grinds of pepper. Heat the remaining tablespoon of oil in a large ovenproof skillet over high heat. Add the pork and cook, turning as needed, until well-browned on all sides, about 5 minutes. Transfer the skillet to the middle rack of the oven, and roast the pork until an instant-read thermometer inserted in the center registers 145 degrees F, 11 to 12 minutes. Set aside to rest.  \n
3. While the grapes and pork roast, put the couscous in a medium bowl. Add just enough hot water to cover the couscous, cover with plastic wrap and let sit until all the liquid is absorbed and the couscous is tender, about 5 minutes. Fluff with a fork.\n
4. Slice the pork. Put the couscous on a serving platter, and top with the pork and grapes. Sprinkle with the walnuts and reserved sage leaves. ''',
      ),
    ];
    return meals1;
  } else if (DateFormat('EEEE').format(DateTime.now()) == "Thursday") {
    final meals1 = [
      Meal(
        mealTime: "BREAKFAST",
        name: "Oatmeal",
        kiloCaloriesBurnt: "144",
        timeTaken: "10",
        imagePath: "assets/Oetmeal.jpg",
        ingredients: [
          "3/4 cup nonfat milk",
          "1/2 cup old-fashioned rolled oats",
          "1/3 cup blueberries",
          "1/4 teaspoon finely grated lemon zest",
          "1/8 teaspoon pure vanilla extract",
          "2 teaspoons honey or agave nectar",
        ],
        preparation:
            '''The night before, combine the milk, oats, blueberries, brown sugar, lemon zest, vanilla, almond extract and a pinch of salt in a glass pint jar or other container with a lid. Secure the lid and shake. Refrigerate at least 6 hours up to overnight. In the morning, top with the almonds and drizzle with honey.  ''',
      ),
      Meal(
        mealTime: "LUNCH",
        name: "Salsa Verde",
        kiloCaloriesBurnt: "216",
        timeTaken: "25",
        imagePath: "assets/SalsaVerde.jpg",
        ingredients: [
          "Vegetable oil, as needed",
          "1/3 cup Salsa Verde, recipe follows",
          "4 large eggs",
          "Kosher salt and freshly ground black pepper",
          "2 tablespoons chopped fresh cilantro leaves",
          "Corn tortillas, for serving, optional",
          "----Salsa Verde:----",
          "1 pound tomatillos, husked and rinsed",
          "1 clove garlic, smashed",
          "1/4 jalapeno chile, with seeds",
          "4 sprigs fresh cilantro",
        ],
        preparation: '''1. Preheat the oven to 400 degrees F. \n
2. Lightly oil a medium nonstick skillet with an ovenproof handle. Spoon a heaping 1/3 cup of salsa into the pan. Lightly press down the salsa to make 4 evenly spaced shallow nests and break an egg into each. Season with salt and pepper. Bake until the egg whites are cooked and the yolks are still runny, about 15 minutes. Sprinkle the cheese over the eggs and continue baking until just melted, about 1 minute more. Top with the cilantro. Serve immediately.  \n
----Salsa Verde----\n
1.Put the tomatillos in a medium saucepan with water to cover. Bring to a boil and cook until tender, about 7 minutes. Drain and remove stems from the tomatillos. \n
2.Puree the garlic, onion, jalapeno, and salt in a blender until smooth. Add the tomatillos and puree until smooth. Add the cilantro and pulse a few times to just combine, you should still see bits of cilantro in the sauce.  ''',
      ),
      Meal(
        mealTime: "DINNER",
        name: "Ribbon Pasta",
        kiloCaloriesBurnt: "193",
        timeTaken: "40",
        imagePath: "assets/zukini.jpg",
        ingredients: [
          "3/4 pound whole-wheat fettuccini",
          "2 medium green zucchini (about 1 pound)",
          "2 medium yellow zucchini (about 1 pound)",
          "4 cloves garlic, chopped",
          "1/3 cup finely minced parsley leaves, plus more for garnish",
          "1 cup thinly sliced basil leaves, plus more for garnish",
          "1/2 teaspoon red pepper flakes",
          "1/2 teaspoon fresh ground black pepper",
        ],
        preparation:
            '''1.  In a large pasta pot, cook pasta "al dente", 1 or 2 minutes less than the package instructions call for. Drain.  \n
2. Meanwhile, slice off ends of zucchini and discard. Cut zucchini in half lengthwise. Using a mandoline, or carefully with a sharp knife, slice zucchini into very thin (about 1/8-inch) slices, trying to keep some skin on each piece for color. Stack slices and cut in half lengthwise. Reserve zucchini ribbons in a large bowl.   \n
3. In the pasta pot, heat the olive oil over low-medium heat. Add garlic and cook until soft and translucent but not browned, about 1 minute. Add zucchini ribbons and 1/4 cup chicken broth, raise heat to medium-high and cook until zucchini is still somewhat firm but just cooked, about 3 minutes. Return pasta to pot and add remaining chicken stock; cook for 2 to 3 minutes, until liquid has mostly absorbed into the pasta. Add 1/4 cup of the Parmesan, parsley, basil, red pepper flakes, black pepper and toss to combine. Season with salt, to taste. Serve garnished with additional parsley, basil and the remaining 2 tablespoons of cheese.''',
      ),
    ];
    return meals1;
  } else if (DateFormat('EEEE').format(DateTime.now()) == "Friday") {
    final meals1 = [
      Meal(
        mealTime: "BREAKFAST",
        name: "Banana-Nut",
        kiloCaloriesBurnt: "186",
        timeTaken: "15",
        imagePath: "assets/Banana-Nut.jpg",
        ingredients: [
          "2 cups plain almond milk",
          "2 fully-ripened large bananas",
          "1/4 teaspoon pure vanilla extract",
          "2 cups old-fashioned rolled oats",
          "2 tablespoons unsweetened cocoa powder",
          "2 teaspoons honey or agave nectar",
          "2 tablespoons honey or agave nectar",
          "Pinch ground cinnamon",
          "2 tablespoons semisweet chocolate chips",
        ],
        preparation:
            '''1. Bring the almond milk, 1 3/4 cups water, the diced bananas, almond and vanilla extracts and pinch of salt to a boil in a large saucepan over high heat.\n
        2.  Stir in the oats, cocoa powder and 1 tablespoon of the honey and reduce the heat to medium. Cook, stirring frequently, until the oats are fully cooked to desired consistency, 6 to 7 minutes.\n
        3. Transfer to 4 bowls, top with the sliced bananas, walnuts, the remaining 1 tablespoon honey, cinnamon and chocolate chips and serve.  ''',
      ),
      Meal(
        mealTime: "LUNCH",
        name: "Lentil Soup",
        kiloCaloriesBurnt: "193",
        timeTaken: "55",
        imagePath: "assets/Lentil Soup.jpg",
        ingredients: [
          "2 tablespoons olive oil",
          "1/2 cup finely chopped carrot",
          "1/2 cup finely chopped celery",
          "2 teaspoons kosher salt",
          "1 pound lentils, picked and rinsed",
          "1 cup peeled and chopped tomatoes",
          "1/2 teaspoon freshly ground coriander",
          "1/2 teaspoon freshly ground toasted cumin",
          "1/2 teaspoon freshly ground grains of paradise",
        ],
        preparation:
            '''1. Place the olive oil into a large 6-quart Dutch oven and set over medium heat. Once hot, add the onion, carrot, celery and salt and sweat until the onions are translucent, approximately 6 to 7 minutes. Add the lentils, tomatoes, broth, coriander, cumin and grains of paradise and stir to combine. Increase the heat to high and bring just to a boil. Reduce the heat to low, cover and cook at a low simmer until the lentils are tender, approximately 35 to 40 minutes. Using a stick blender, puree to your preferred consistency. Serve immediately.   ''',
      ),
      Meal(
        mealTime: "DINNER",
        name: "Pork&Potatoes",
        kiloCaloriesBurnt: "193",
        timeTaken: "30",
        imagePath: "assets/Pork&Potatoes.jpg",
        ingredients: [
          "1 pound small fingerling potatoes",
          "2 cloves garlic",
          "Kosher salt",
          "2 teaspoons chopped fresh sage",
          "Freshly ground pepper",
          "1 tablespoon extra-virgin olive oil",
          "2 Granny Smith apples",
          "1/4 cup buttermilk",
        ],
        preparation:
            '''1.  Put the potatoes and garlic in a saucepan, cover with cold water and season with salt. Cover and bring to a boil, then uncover and continue cooking until tender, about 15 minutes. Cover and set aside. \n
2. Meanwhile, rub both sides of the pork chops with the sage, and salt and pepper to taste. Heat a large cast-iron skillet over high heat, then add 1 teaspoon olive oil and sear the chops until golden on both sides, about 5 minutes total. Transfer to a plate. Wipe out the skillet and add the remaining 2 teaspoons olive oil. Add the onion and apples and cook over medium-high heat until lightly browned, about 5 minutes. Season with salt and pepper and stir in the cider.  \n
3. Return the chops to the skillet. Cover and cook, turning once, until just cooked through, 4 to 5 minutes. Drain the potatoes, reserving 1/4 cup liquid. Return the potatoes to the pan; add the buttermilk and mash, adding cooking liquid as needed. Season with salt and pepper. Serve with the pork chops, onion and apples. Drizzle with the pan juices. ''',
      ),
    ];
    return meals1;
  } else if (DateFormat('EEEE').format(DateTime.now()) == "Saturday") {
    final meals1 = [
      Meal(
        mealTime: "BREAKFAST",
        name: "Scrambled Egg",
        kiloCaloriesBurnt: "144",
        timeTaken: "20",
        imagePath: "assets/Scrambled Egg.jpg",
        ingredients: [
          "1 avocado, diced",
          "1 large plum tomato, diced",
          "2 tablespoons chopped fresh cilantro, plus leaves for topping",
          "Juice of 2 limes",
          "6 large eggs",
          "Kosher salt",
          "2 bell peppers (any color), sliced",
          "8 6-inch flour tortillas",
        ],
        preparation:
            '''1. Gently toss the avocado, tomato, jalapeno, chopped cilantro and lime juice in a medium bowl. Whisk the eggs with 1 tablespoon water and 1/4 teaspoon salt in a separate bowl. Set aside. \n
            2. Melt the butter in a medium nonstick skillet over medium-high heat. Add the bell peppers, onion and 1/4 teaspoon salt. Cook, stirring, until softened, about 5 minutes. Remove the vegetables to a plate using a slotted spoon. Add the eggs to the skillet and cook, stirring often, until almost set, about 2 minutes. Stir in the cheese until melted. \n
             3. Warm the tortillas as the label directs. Divide the scrambled eggs, sauteed vegetables and avocado mixture among the tortillas and top with cilantro leaves. ''',
      ),
      Meal(
        mealTime: "LUNCH",
        name: "Mushroom Soup",
        kiloCaloriesBurnt: "247",
        timeTaken: "60",
        imagePath: "assets/Mushroom Soup.jpg",
        ingredients: [
          "2 tablespoons extra-virgin olive oil",
          "2 shallots, minced",
          "Kosher salt and freshly ground pepper",
          "2 cloves garlic, minced",
          "2 tablespoons madeira wine or brandy",
          "6 cups low-sodium chicken broth",
          "2 sprigs thyme",
          "3/4 cup hummus",
          "2 tablespoons roughly chopped fresh parsley",
          "2 scallions, roughly chopped",
          "Greek yogurt, for topping",
        ],
        preparation:
            '''1.Heat the olive oil in a medium saucepan over medium-high heat. Add the shallots and cook until soft, about 3 minutes. Add the mushrooms, season with salt and pepper, and cook until the liquid from the mushrooms evaporates, about 15 minutes. Add the garlic and cook 1 minute. Add the madeira wine and cook 2 minutes, scraping up any browned bits. Add the broth and thyme; simmer gently, stirring occasionally, about 30 minutes.  \n
2. Discard the thyme sprigs. Stir the hummus into the soup. Transfer half of the soup to a blender and puree (remove the filler cap to let steam escape), then return to the saucepan and simmer 15 more minutes. Remove from the heat, stir in the lemon juice and season with salt and pepper. Mix the lemon zest, parsley and scallions in a small bowl. Ladle the soup into bowls and top with the yogurt and lemon-parsley mixture.   ''',
      ),
      Meal(
        mealTime: "DINNER",
        name: "Turf Paella",
        kiloCaloriesBurnt: "193",
        timeTaken: "55",
        imagePath: "assets/Turf Paella.jpg",
        ingredients: [
          "1/4 cups uncooked basmati brown rice, rinsed",
          "1/2 teaspoon salt",
          "2 teaspoons olive oil",
          "1 onion, sliced",
          "1 bell pepper, seeded and chopped",
          "2 plum tomatoes, coarsely chopped",
          "2 tablespoons chopped fresh cilantro leaves",
          "6 olives, coarsely chopped",
        ],
        preparation:
            '''1. Cook rice in a large pot of generously salted boiling water, as you would cook pasta, until it is tender, about 30 minutes.  \n
2. Meanwhile, season each side of the steak with 1/4 teaspoon of the salt and freshly ground black pepper, to taste. Preheat a large nonstick skillet over medium-high heat and spray the steak with nonstick spray. Add the steak and cook until browned, about 5 minutes. Flip and continue cooking on the other side until browned, 5 minutes more. Transfer the cooked steak to a plate and let rest.  \n
3.  Heat the oil in the same skillet over medium-high heat. Add the garlic, onion, and bell pepper. Cook, covered, over medium heat, stirring occasionally, until the vegetables are soft, about 10 minutes. Stir in the tomatoes, broken spaghetti, chicken broth, and saffron and cook until the pasta is cooked through, 8 minutes. Drain the rice and add to the pot along with the peas. Stir until warm. Arrange the shrimp on top of the rice, cover and let shrimp steam until shrimp is just cooked through and pink, about 3 minutes.\n
4. While the shrimp cooks, slice steak against the grain into 1/4-inch thick slices. Lay over the paella. Remove from the heat. Scatter cilantro and olives over the top and serve warm from the pan. ''',
      ),
    ];
    return meals1;
  } else if (DateFormat('EEEE').format(DateTime.now()) == "Sunday"){
    final meals1 = [
      Meal(
        mealTime: "BREAKFAST",
        name: "Frittata",
        kiloCaloriesBurnt: "144",
        timeTaken: "20",
        imagePath: "assets/Asparagus Frittata.jpg",
        ingredients: [
          "1 bunch thin asparagus (about 2 cups)",
          "8 large eggs ",
          "1 cup spring salad greens ",
          "2 tablespoons milk ",
          "2 tablespoons freshly grated pecorino, optional",
          "Kosher salt and freshly ground black pepper",
        ],
        preparation:
            '''1. Gently toss the avocado, tomato, jalapeno, chopped cilantro and lime juice in a medium bowl. Whisk the eggs with 1 tablespoon water and 1/4 teaspoon salt in a separate bowl. Set aside. \n
            2. Melt the butter in a medium nonstick skillet over medium-high heat. Add the bell peppers, onion and 1/4 teaspoon salt. Cook, stirring, until softened, about 5 minutes. Remove the vegetables to a plate using a slotted spoon. Add the eggs to the skillet and cook, stirring often, until almost set, about 2 minutes. Stir in the cheese until melted. \n
             3. Warm the tortillas as the label directs. Divide the scrambled eggs, sauteed vegetables and avocado mixture among the tortillas and top with cilantro leaves. ''',
      ),
      Meal(
        mealTime: "LUNCH",
        name: "Ribollita",
        kiloCaloriesBurnt: "247",
        timeTaken: "35",
        imagePath: "assets/Vegetarian Ribollita.jpg",
        ingredients: [
          "1/4 cup extra-virgin olive oil, plus more for drizzling",
          "1 medium onion, diced",
          "1 rib celery, sliced",
          "1 medium zucchini, diced",
          "2 carrots, peeled and diced",
          "1/2 cup shaved Pecorino-Romano",
          "3 cups baby spinach leaves",
          "10 cups vegetable broth",
          "1 teaspoon dried marjoram",
          "1 can diced tomatoes, in juice",
          "Freshly ground black pepper",
        ],
        preparation:
            '''1.In a soup pot or Dutch oven heat the 1/4 cup olive oil over medium heat. Add the onions, celery, zucchini, carrots, garlic, and rosemary; season with salt and pepper. Cook until the vegetables are soft and juicy, about 10 minutes. Add the cabbage, tomatoes, basil, and marjoram and season again with salt and pepper. Cook until cabbage is just tender, about 10 minutes. Stir in the beans and vegetable broth, and adjust the heat to simmer gently for 20 minutes. \n
2. Remove the rosemary sprig. Stir in the bread and spinach, increase the heat to medium and cook until the soup thickens, about 10 minutes more. Season with salt and pepper. Ladle soup into warm bowls. Top with cheese and a little drizzle extra-virgin olive oil. ''',
      ),
      Meal(
        mealTime: "DINNER",
        name: "BLT Pasta",
        kiloCaloriesBurnt: "144",
        timeTaken: "55",
        imagePath: "assets/BLT Pasta.jpg",
        ingredients: [
          "Kosher salt",
          " 8 ounces whole wheat fusilli pasta",
          "3 strips bacon",
          "3 cloves garlic, thinly sliced",
          "4 to 5 whole fresh basil leaves, plus more for garnish, optional",
          "1/2 cup part-skim ricotta cheese",
          "1/4 cup freshly grated Parmesan",
          "8 ounces part-skim mozzarella, cut into 1/2-inch cubes",
        ],
        preparation:
            '''1. Preheat the oven to 400 degrees F. Bring a large pot of salted water to a boil. Cook the pasta according to the package directions. Drain and reserve 1/2 cup of the pasta water.  \n
2. Meanwhile, lay the bacon in a large ovenproof skillet and cook over medium heat until brown and slightly crispy, 4 to 5 minutes per side. Remove the skillet from the heat, transfer the bacon to a paper-towel-lined plate and pour off all but 1 tablespoon of the drippings. Break up the bacon into bite-size pieces.  \n
3. Return the skillet to medium heat, add the garlic and cook, stirring frequently, until soft, about 1 minute. Add the tomatoes and juices, reserved pasta water, crushed red pepper, basil, escarole and 1/2 teaspoon salt. Bring to a simmer and cook until the sauce thickens and the escarole wilts, 15 to 20 minutes.  \n
4. Mix together the ricotta and Parmesan. Add the cooked pasta and mozzarella to the sauce and stir to thoroughly coat. Drop spoonfuls of the ricotta-Parmesan mixture on top. Sprinkle with the bacon pieces and bake until bubbly and the cheese melts, 15 to 20 minutes. Let rest for a few minutes before serving. Garnish with additional basil if using. ''',
      ),
    ];
    return meals1;
  }
}
