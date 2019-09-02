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
  email: "chen01@gmail.com",
  password: "mokey1"
)

# Recipe 1
chicken = Recipe.new(
  name: "Pasta Chicken Salad",
  video: File.open("./app/assets/images/recipes/recipe_chicken.mp4"),
  image: File.open("./app/assets/images/recipes/recipe_salad.png"),
  desc: "this chicken is amazing!",
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
Ingredient.create!({ item_id: parmesan.id, recipe: chicken})
croutons = Item.create!({name: 'Croutons ', amount_cents: '299', image: File.open('./app/assets/images/ingredients/croutons.jpg'), condiment: 'FALSE'})
Ingredient.create!({ item_id: croutons.id, recipe: chicken})
grape = Item.create!({name: 'Grape Tomatoes ', amount_cents: '499', image: File.open('./app/assets/images/ingredients/tomatoes.jpg'), condiment: 'FALSE'})
Ingredient.create!({ item_id: grape.id, recipe: chicken})
romaine = Item.create!({name: 'Romaine Lettuce ', amount_cents: '399', image: File.open('./app/assets/images/ingredients/lettuce.jpg'), condiment: 'FALSE'})
Ingredient.create!({ item_id: romaine.id, recipe: chicken})
pepper = Item.create!({name: 'Pepper ', amount_cents: '199', image: File.open('./app/assets/images/ingredients/saltpepper.jpg'), condiment: 'TRUE'})
Ingredient.create!({ item_id: pepper.id, recipe: chicken})
salt = Item.create!({name: 'Salt ', amount_cents: '99', image: File.open('./app/assets/images/ingredients/saltpepper.jpg'), condiment: 'TRUE'})
Ingredient.create!({ item_id: salt.id, recipe: chicken})
olive = Item.create!({name: 'Olive Oil ', amount_cents: '829', image: File.open('./app/assets/images/ingredients/olive_oil.jpg'), condiment: 'TRUE'})
Ingredient.create!({ item_id: olive.id, recipe: chicken})
breasts = Item.create!({name: 'Chicken Breasts', amount_cents: '1599', image: File.open('./app/assets/images/ingredients/chicken.jpg'), condiment: 'FALSE'})
Ingredient.create!({ item_id: breasts.id, recipe: chicken})
farfalle = Item.create!({name: 'Farfalle Pasta', amount_cents: '525', image: File.open('./app/assets/images/ingredients/penne.jpg'), condiment: 'FALSE'})
Ingredient.create!({ item_id: farfalle.id, recipe: chicken})

# Recipe 2
hashbrown = Recipe.new(
  name: "Hash-Brown Waffles",
  video: File.open("./app/assets/images/recipes/hashbrown.mp4"),
  image: File.open("./app/assets/images/recipes/hashbrown.png"),
  desc: "Simply delish!",
  prep_time: 10,
  cook_time: 0,
)

hashbrown.user = chen
  hashbrown.save!

# directions
hashbrown_steps = Step.create!([
  {number: 1, content: "Shred the potatoes, then wring out excess water. Mix potatoes with cheddar, French’s Crispy Fried Onions, salt, and Club House Black Pepper Pure Ground. Fold in whisked eggs. ", recipe_id: hasbrown.id},
  {number: 2, content: "reheat waffle iron on high. Spray iron with cooking spray. Evenly spread half of the potato batter in the waffle iron and close. Cook for 5–7 minutes until nicely browned. ", recipe_id: hasbrown.id},
  {number: 3, content: "Using a fork, remove hash-brown waffle from iron. Cook the second waffle using the rest of the potato batter. ", recipe_id: hasbrown.id},
  {number: 4, content: "Enjoy ", recipe_id: hasbrown.id
  ])

# ingredients
potato = Item.create!({name: 'Potato', amount_cents: '499', image: File.open('./app/assets/images/ingredients/potatoes.jpg'), condiment: 'FALSE'})
Ingredient.create!({ item_id: potato_id, recipe: hashbrown })

cheddar = Item.create!({name: 'Cheddar Cheese ', amount_cents: '699', image: File.open('./app/assets/images/ingredients/cheddar.jpg'), condiment: 'FALSE'})
Ingredient.create!({ item_id: cheddar.id, recipe: hashbrown})

egg = Item.create!({name: 'Eggs', amount_cents: '329', image: File.open('./app/assets/images/ingredients/eggs.jpg'), condiment: 'FALSE'})
Ingredient.create!({ item_id: egg.id, recipe: hashbrown})

onion = Item.create!({name: 'Onions', amount_cents: '129', image: File.open('./app/assets/images/ingredients/yellow_onion.jpg'), condiment: 'FALSE'})
Ingredient.create!({ item_id: onion.id, recipe: hashbrown})

scallion = Item.create!({name: 'Scallion ', amount_cents: '99', image: File.open('./app/assets/images/ingredients/scallion.jpg'), condiment: 'FALSE'})
Ingredient.create!({ item_id: scallion.id, recipe: hashbrown})

salt_pepper = Item.create!({name: 'Salt & Pepper', amount_cents: '99', image: File.open('./app/assets/images/ingredients/saltpepper.jpg'), condiment: 'TRUE'})
Ingredient.create!({ item_id: salt.id, recipe: hashbrown})


# recipe #3
chocobread = Recipe.new(
  name: "Chocolate Infinity Braid",
  video: File.open("./app/assets/images/recipes/chocobread.mp4"),
  image: File.open("./app/assets/images/recipeschocobread.png"),
  desc: "Simply delish!",
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
  {number: 8, content: "Enjoy ", recipe_id: chocobread.id
  ])

# ingredients
puff = Item.create!({name: 'Puff Pastry', amount_cents: '399', image: File.open('./app/assets/images/ingredients/puff.jpg'), condiment: 'FALSE'})
Ingredient.create!({ item_id: puff_id, recipe: chocobread })

egg = Item.create!({name: 'Eggs', amount_cents: '329', image: File.open('./app/assets/images/ingredients/eggs.jpg'), condiment: 'FALSE'})
Ingredient.create!({ item_id: egg.id, recipe: chocobread})

hazelnut = Item.create!({name: 'Hazelnut spread', amount_cents: '329', image: File.open('./app/assets/images/ingredients/eggs.jpg'), condiment: 'FALSE'})
Ingredient.create!({ item_id: hazelnut.id, recipe: chocobread})

spray = Item.create!({name: 'Nonstick Spray', amount_cents: '329', image: File.open('./app/assets/images/ingredients/eggs.jpg'), condiment: 'TRUE'})
Ingredient.create!({ item_id: spray.id, recipe: chocobread})


#recipe #4

# directions
# chocobread_steps = Step.create!([
#   {number: 1, content: " ", recipe_id: chocobread.id},
#   {number: 2, content: " ", recipe_id: chocobread.id},
#   {number: 3, content: " ", recipe_id: chocobread.id},
#   {number: 4, content: "Enjoy ", recipe_id: chocobread.id
#   ])
