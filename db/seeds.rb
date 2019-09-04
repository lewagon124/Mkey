# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
  # movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Recipe.destroy_all
User.destroy_all
Item.destroy_all


chen = User.create(
  email: "1@mokey.com",
  password: "1mokey"
)

# Recipe 1
chicken = Recipe.new(
  name: "Pasta Chicken Salad",
  video: File.open("./app/assets/images/recipes/recipe_chicken.mp4"),
  image: File.open("./app/assets/images/recipes/recipe_salad.png"),
  desc: "Salads that will be the starring role in your meal.",
  prep_time: 10,
  cook_time: 0,
)

chicken.user = chen
  chicken.save!

chicken_steps = Step.create!([
  {number: 1, content: "Boil water, add the pasta and cook according to package instructions. ", recipe_id: chicken.id},
  {number: 2, content: "Drain water, and let the pasta chill. Meanwhile, season each of the chicken breasts with 1 Tbsp. olive oil, salt and pepper. Grill for 6-8 minutes on each side. ", recipe_id: chicken.id},
  {number: 3, content: "Cut the chicken into bite size pieces. ", recipe_id: chicken.id},
  {number: 4, content: "In a large bowl combine pasta, romaine lettuce, tomatoes, croutons, parmesan, and caesar dressing. ", recipe_id: chicken.id},
  {number: 5, content: "Toss gently and serve! Enjoy!", recipe_id: chicken.id}
  ])

caesar = Item.create!({name: 'Caesar Salad Dressing ', amount_cents: '899', image: File.open('./app/assets/images/ingredients/ceasar.jpg'), condiment: 'FALSE'})
Ingredient.create!({ item: caesar, recipe: chicken })

parmesan = Item.create!({name: 'Parmesan ', amount_cents: '899', image: File.open('./app/assets/images/ingredients/parmesan.jpg'), condiment: 'FALSE'})
Ingredient.create!({ item_id: parmesan.id, recipe: chicken, quantity:"10 oz"})
croutons = Item.create!({name: 'Croutons ', amount_cents: '299', image: File.open('./app/assets/images/ingredients/croutons.jpg'), condiment: 'FALSE'})
Ingredient.create!({ item_id: croutons.id, recipe: chicken, quantity:"1 cup"})
grape = Item.create!({name: 'Grape Tomatoes ', amount_cents: '499', image: File.open('./app/assets/images/ingredients/tomatoes.jpg'), condiment: 'FALSE'})
Ingredient.create!({ item_id: grape.id, recipe: chicken, quantity:"5 ct"})
romaine = Item.create!({name: 'Romaine Lettuce ', amount_cents: '399', image: File.open('./app/assets/images/ingredients/lettuce.jpg'), condiment: 'FALSE'})
Ingredient.create!({ item_id: romaine.id, recipe: chicken, quantity:"1 ct"})
pepper = Item.create!({name: 'Pepper ', amount_cents: '199', image: File.open('./app/assets/images/ingredients/saltpepper.jpg'), condiment: 'TRUE'})
Ingredient.create!({ item_id: pepper.id, recipe: chicken, quantity:"2 oz"})
salt = Item.create!({name: 'Salt ', amount_cents: '99', image: File.open('./app/assets/images/ingredients/saltpepper.jpg'), condiment: 'TRUE'})
Ingredient.create!({ item_id: salt.id, recipe: chicken, quantity:"1 oz"})
olive = Item.create!({name: 'Olive Oil ', amount_cents: '829', image: File.open('./app/assets/images/ingredients/olive_oil.jpg'), condiment: 'TRUE'})
Ingredient.create!({ item_id: olive.id, recipe: chicken, quantity:"15 oz"})
breasts = Item.create!({name: 'Chicken Breasts', amount_cents: '1599', image: File.open('./app/assets/images/ingredients/chicken.jpg'), condiment: 'FALSE'})
Ingredient.create!({ item_id: breasts.id, recipe: chicken, quantity:"4 ct"})
farfalle = Item.create!({name: 'Farfalle Pasta', amount_cents: '525', image: File.open('./app/assets/images/ingredients/penne.jpg'), condiment: 'FALSE'})
Ingredient.create!({ item_id: farfalle.id, recipe: chicken, quantity:"4 cups"})

# Recipe 2
hashbrown = Recipe.new(
  name: "Hash-Brown Waffles",
  video: File.open("./app/assets/images/recipes/hashbrown.mp4"),
  image: File.open("./app/assets/images/recipes/hashbrown.png"),
  desc: "Quick, easy, and simply delicious!",
  prep_time: 10,
  cook_time: 0,
)

hashbrown.user = chen
  hashbrown.save!

# directions
hashbrown_steps = Step.create!([
  {number: 1, content: "Shred the potatoes, then wring out excess water. Mix potatoes with cheddar, French’s Crispy Fried Onions, salt, and Club House Black Pepper Pure Ground. Fold in whisked eggs. ", recipe_id: hashbrown.id},
  {number: 2, content: "reheat waffle iron on high. Spray iron with cooking spray. Evenly spread half of the potato batter in the waffle iron and close. Cook for 5–7 minutes until nicely browned. ", recipe_id: hashbrown.id},
  {number: 3, content: "Using a fork, remove hash-brown waffle from iron. Cook the second waffle using the rest of the potato batter. ", recipe_id: hashbrown.id},
  {number: 4, content: "Enjoy ", recipe_id: hashbrown.id}
  ])

# ingredients
potato = Item.create!({name: 'Potato', amount_cents: '499', image: File.open('./app/assets/images/ingredients/potatoes.jpg'), condiment: 'FALSE'})
Ingredient.create!({ item_id: potato.id, recipe: hashbrown, quantity:"2 cups ct" })

cheddar = Item.create!({name: 'Cheddar Cheese ', amount_cents: '699', image: File.open('./app/assets/images/ingredients/cheddar.jpg'), condiment: 'FALSE'})
Ingredient.create!({ item_id: cheddar.id, recipe: hashbrown, quantity:"1 ct"})

egg = Item.create!({name: 'Eggs', amount_cents: '329', image: File.open('./app/assets/images/ingredients/eggs.jpg'), condiment: 'FALSE'})
Ingredient.create!({ item_id: egg.id, recipe: hashbrown, quantity:"3 ct"})

onion = Item.create!({name: 'Onions', amount_cents: '129', image: File.open('./app/assets/images/ingredients/yellow_onion.jpg'), condiment: 'FALSE'})
Ingredient.create!({ item_id: onion.id, recipe: hashbrown, quantity:"1 ct"})

scallion = Item.create!({name: 'Scallion ', amount_cents: '99', image: File.open('./app/assets/images/ingredients/scallion.jpg'), condiment: 'FALSE'})
Ingredient.create!({ item_id: scallion.id, recipe: hashbrown, quantity:"3 ct"})

salt_pepper = Item.create!({name: 'Salt & Pepper', amount_cents: '99', image: File.open('./app/assets/images/ingredients/saltpepper.jpg'), condiment: 'TRUE'})
Ingredient.create!({ item_id: salt.id, recipe: hashbrown, quantity:"4 oz"})


# recipe #3
chocobread = Recipe.new(
  name: "Chocolate Infinity Braid",
  video: File.open("./app/assets/images/recipes/chocobread.mp4"),
  image: File.open("./app/assets/images/recipes/chocobread.png"),
  desc: "Flaky puff pastry filled with chocolate-hazelnut.",
  prep_time: 8,
  cook_time: 0,
)

chocobread.user = chen
  chocobread.save!

# directions
chocobread_steps = Step.create!([
  {number: 1, content: "Use a spatula to spread the chocolate hazelnut spread evenly over 1 puff pastry sheet, leaving a ¼-inch (6 mm) border all around. Brush the border with egg wash. Place the other sheet of puff pastry on top.
Cut the pastry sheets into 9 squares. ", recipe_id: chocobread.id},
  {number: 2, content: "Preheat the oven to 400˚F (200˚C). Grease a baking sheet with nonstick spray ", recipe_id: chocobread.id},
  {number: 3, content: "Take 1 square and make 5 even cuts crosswise across the center. Do not cut all the way through the edges. ", recipe_id: chocobread.id},
  {number: 4, content: "Take 2 fingers and place them under the first cut, then over the next. Repeat until your fingers reach all the way through the square. Use the other hand to feed the farthest corner through the gap your fingers created. ", recipe_id: chocobread.id},
  {number: 5, content: "Gently pull the corner all the way through to form a braid. Repeat with the rest of the squares. ", recipe_id: chocobread.id},
  {number: 6, content: "Transfer the braids to the prepared baking sheet and brush with egg wash. ", recipe_id: chocobread.id},
  {number: 7, content: "Bake for 14 minutes, or until golden brown. ", recipe_id: chocobread.id},
  {number: 8, content: "Enjoy ", recipe_id: chocobread.id}
  ])

# ingredients
puff = Item.create!({name: 'Puff Pastry', amount_cents: '399', image: File.open('./app/assets/images/ingredients/puff.png'), condiment: 'FALSE'})
Ingredient.create!({ item_id: puff.id, recipe: chocobread, quantity:"17.3 oz" })

egg = Item.create!({name: 'Eggs', amount_cents: '329', image: File.open('./app/assets/images/ingredients/eggs.jpg'), condiment: 'FALSE'})
Ingredient.create!({ item_id: egg.id, recipe: chocobread, quantity:"1 ct"})

hazelnut = Item.create!({name: 'Hazelnut spread', amount_cents: '329', image: File.open('./app/assets/images/ingredients/hazelnut.png'), condiment: 'FALSE'})
Ingredient.create!({ item_id: hazelnut.id, recipe: chocobread, quantity:"1/2 cup"})

spray = Item.create!({name: 'Nonstick Spray', amount_cents: '329', image: File.open('./app/assets/images/ingredients/spray.png'), condiment: 'TRUE'})
Ingredient.create!({ item_id: spray.id, recipe: chocobread, quantity:"1/2 cup"})


#recipe #4
pasta = Recipe.new(
  name: "2-Ingredient low carb pasta",
  video: File.open("./app/assets/images/recipes/mozzarella.mp4"),
  image: File.open("./app/assets/images/recipes/mozzarella.png"),
  desc: "You can't go wrong with this simple pasta.",
  prep_time: 8,
  cook_time: 0,
)

pasta.user = chen
  pasta.save!

# directions
pasta_steps = Step.create!([
  {number: 1, content: "Add the mozzarella to a bowl and microwave for 1-2 minutes, until melted. ", recipe_id: pasta.id},
  {number: 2, content: "Allow the mozzarella to cool for 30 seconds. ", recipe_id: pasta.id},
  {number: 3, content: "With a spatula, gently fold the egg yolk into the cheese. ", recipe_id: pasta.id},
  {number: 4, content: "Turn the mixture out onto a parchment paper-lined baking sheet. ", recipe_id: pasta.id},
  {number: 5, content: "Place another piece of parchment paper on top of the dough and press down with your hand until thin. ", recipe_id: pasta.id},
  {number: 6, content: "Remove the top piece of parchment and cut the dough into thin strips. ", recipe_id: pasta.id},
  {number: 7, content: "Place the “pasta” on a rack and refrigerate for four hours or overnight. ", recipe_id: pasta.id},
  {number: 8, content: "Place the “pasta” in boiling water for one minute. ", recipe_id: pasta.id},
  {number: 9, content: "Drain into a colander and run cool water over the pasta to prevent sticking. ", recipe_id: pasta.id},
  {number: 10, content: "Serve with your favorite sauce. ", recipe_id: pasta.id},
  {number: 11, content: "Enjoy ", recipe_id: pasta.id}
  ])

egg = Item.create!({name: 'Eggs', amount_cents: '329', image: File.open('./app/assets/images/ingredients/eggs.jpg'), condiment: 'FALSE'})
Ingredient.create!({ item_id: egg.id, recipe: pasta})

mozzarella = Item.create!({name: 'Shredded Mozzarella Cheese', amount_cents: '1249', image: File.open('./app/assets/images/ingredients/mozzarella.png'), condiment: 'FALSE'})
Ingredient.create!({ item_id: mozzarella.id, recipe: pasta})


# recipe #5
salad = Recipe.new(
  name: "Cucumber, Tomato, and Avocado Salad",
  video: File.open("./app/assets/images/recipes/salad.mp4"),
  image: File.open("./app/assets/images/recipes/salad.png"),
  desc: "A delish salad to enjoy all year.",
  prep_time: 12,
  cook_time: 0,
)

salad.user = chen
  salad.save!

# directions
salad_steps = Step.create!([
  {number: 1, content: "Place sliced cucumber, tomatoes, avocados, onion and cilantro in a large salad bowl. ", recipe_id: salad.id},
  {number: 2, content: "Toss with olive oil, lemon juice, salt and pepper ", recipe_id: salad.id},
  {number: 4, content: "Enjoy ", recipe_id: salad.id}
  ])

cucumber = Item.create!({name: 'Cucumber', amount_cents: '129', image: File.open('./app/assets/images/ingredients/cucumber.jpg'), condiment: 'FALSE'})
Ingredient.create!({ item_id: cucumber.id, recipe: salad, quantity:"1 ct"})

tomatoes = Item.create!({name: 'Tomatoes', amount_cents: '429', image: File.open('./app/assets/images/ingredients/tomatoes.jpg'), condiment: 'FALSE'})
Ingredient.create!({ item_id: tomatoes.id, recipe: salad, quantity:"4 ct"})

avocadoes = Item.create!({name: 'Avocadoes', amount_cents: '399', image: File.open('./app/assets/images/ingredients/avocado.jpg'), condiment: 'FALSE'})
Ingredient.create!({ item_id: avocadoes.id, recipe: salad, quantity:"3 ct"})

red_onion = Item.create!({name: 'Red Onion', amount_cents: '79', image: File.open('./app/assets/images/ingredients/red_onion.jpg'), condiment: 'FALSE'})
Ingredient.create!({ item_id: red_onion.id, recipe: salad, quantity:"1/2"})

parsley = Item.create!({name: 'Cilantro', amount_cents: '179', image: File.open('./app/assets/images/ingredients/parsley.jpg'), condiment: 'FALSE'})
Ingredient.create!({ item_id: parsley.id, recipe: salad, quantity:"1/4 cup"})

olive = Item.create!({name: 'Olive Oil ', amount_cents: '829', image: File.open('./app/assets/images/ingredients/olive_oil.jpg'), condiment: 'TRUE'})
Ingredient.create!({ item_id: olive.id, recipe: salad, quantity:"1/4 cup"})

salt_pepper = Item.create!({name: 'Salt & Pepper', amount_cents: '99', image: File.open('./app/assets/images/ingredients/saltpepper.jpg'), condiment: 'TRUE'})
Ingredient.create!({ item_id: salt.id, recipe: salad, quantity:"3 oz"})


# recipe 6
salmon = Recipe.new(
  name: "Maple-Glazed Salmon",
  video: File.open("./app/assets/images/recipes/salmon.mp4"),
  image: File.open("./app/assets/images/recipes/salmon.png"),
  desc: "Fast and delicious maple glazed salmon.",
  prep_time: 12,
  cook_time: 0,
)

salmon.user = chen
  salmon.save!

syrup = Item.create!({name: 'Maply Syrup', amount_cents: '899', image: File.open('./app/assets/images/ingredients/syrup.jpg'), condiment: 'FALSE'})
Ingredient.create!({ item_id: syrup.id, recipe: salmon})

orange = Item.create!({name: 'Orange Juice', amount_cents: '399', image: File.open('./app/assets/images/ingredients/orange_juice.jpg'), condiment: 'FALSE'})
Ingredient.create!({ item_id: orange.id, recipe: salmon})

soy = Item.create!({name: 'Soy Sauce', amount_cents: '399', image: File.open('./app/assets/images/ingredients/soy.jpg'), condiment: 'FALSE'})
Ingredient.create!({ item_id: soy.id, recipe: salmon})

salmon_fillet = Item.create!({name: 'Salmon', amount_cents: '1199', image: File.open('./app/assets/images/ingredients/salmon.jpg'), condiment: 'FALSE'})
Ingredient.create!({ item_id: salmon_fillet.id, recipe: salmon})

garlic = Item.create!({name: 'Garlic', amount_cents: '99', image: File.open('./app/assets/images/ingredients/garlic.jpg'), condiment: 'FALSE'})
Ingredient.create!({ item_id: garlic.id, recipe: salmon})

lemon = Item.create!({name: 'Lemon', amount_cents: '99', image: File.open('./app/assets/images/ingredients/lemon.jpg'), condiment: 'TRUE'})
Ingredient.create!({ item_id: lemon.id, recipe: salmon})

butter = Item.create!({name: 'Salted Butter', amount_cents: '399', image: File.open('./app/assets/images/ingredients/butter.jpg'), condiment: 'TRUE'})
Ingredient.create!({ item_id: butter.id, recipe: salmon})

brocoli = Item.create!({name: 'Brocoli', amount_cents: '199', image: File.open('./app/assets/images/ingredients/brocoli.jpg'), condiment: 'TRUE'})
Ingredient.create!({ item_id: brocoli.id, recipe: salmon})

olive = Item.create!({name: 'Olive Oil ', amount_cents: '829', image: File.open('./app/assets/images/ingredients/olive_oil.jpg'), condiment: 'TRUE'})
Ingredient.create!({ item_id: olive.id, recipe: salmon})

salt_pepper = Item.create!({name: 'Salt & Pepper', amount_cents: '99', image: File.open('./app/assets/images/ingredients/saltpepper.jpg'), condiment: 'TRUE'})
Ingredient.create!({ item_id: salt.id, recipe: salmon})

# directions
salmon_steps = Step.create!([
  {number: 1, content: "For the salmon, heat vegetable oil on medium-high in a cast-iron skillet.
For the broccoli, fill a medium pot halfway with water. Add a dash of salt and start boiling water. ", recipe_id: salmon.id},
  {number: 2, content: "In the meantime, whisk together maple syrup, orange juice, soy sauce, garlic, salt, and pepper in a medium bowl. Set aside 2 tablespoons for topping later. ", recipe_id: salmon.id},
  {number: 3, content: "Place salmon fillets inside the bowl and make sure each side is covered with sauce. ", recipe_id: salmon.id},
  {number: 4, content: "Sear the salmon 2-3 minutes on each side. Brush the tops with the sauce set aside. ", recipe_id: salmon.id},
  {number: 5, content: "With the pot of water boiling, add the broccoli and cover lid. Blanch for 2 minutes then drain under cold water to stop the cooking. ", recipe_id: salmon.id},
  {number: 6, content: "In the drained pot of broccoli, stir in butter, soy sauce, some lemon zest, and red pepper flakes on low heat. Mix until broccoli is well-coated. ", recipe_id: salmon.id},
  {number: 7, content: "On each plate, serve a filet of salmon and scoop of broccoli. ", recipe_id: salmon.id},
  {number: 8, content: "Enjoy ", recipe_id: salmon.id}
  ])















# directions
# pasta_steps = Step.create!([
#   {number: 1, content: " ", recipe_id: pasta.id},
#   {number: 2, content: " ", recipe_id: pasta.id},
#   {number: 3, content: " ", recipe_id: pasta.id},
#   {number: 4, content: "Enjoy ", recipe_id: pasta.id}
#   ])
