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

chicken = Recipe.new(
  name: "chen",
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

caesar = Item.create!({name: 'Caesar Salad Dressing ', amount_cents: '8.99', image: File.open('./app/assets/images/ingredients/ceasar.jpg'), condiment: 'FALSE'})
Ingredient.create!({ item: caesar, recipe: chicken })

parmesan = Item.create!({name: 'Parmesan ', amount_cents: '8.99', image: File.open('./app/assets/images/ingredients/parmesan.jpg'), condiment: 'FALSE'})
Ingredient.create!({ item_id: parmesan.id, recipe: chicken})
croutons = Item.create!({name: 'Croutons ', amount_cents: '2.99', image: File.open('./app/assets/images/ingredients/croutons.jpg'), condiment: 'FALSE'})
Ingredient.create!({ item_id: croutons.id, recipe: chicken})
grape = Item.create!({name: 'Grape Tomatoes ', amount_cents: '4.99', image: File.open('./app/assets/images/ingredients/tomatoes.jpg'), condiment: 'FALSE'})
Ingredient.create!({ item_id: grape.id, recipe: chicken})
romaine = Item.create!({name: 'Romaine Lettuce ', amount_cents: '3.99', image: File.open('./app/assets/images/ingredients/lettuce.jpg'), condiment: 'FALSE'})
Ingredient.create!({ item_id: romaine.id, recipe: chicken})
pepper = Item.create!({name: 'Pepper ', amount_cents: '1.99', image: File.open('./app/assets/images/ingredients/saltpepper.jpg'), condiment: 'TRUE'})
Ingredient.create!({ item_id: pepper.id, recipe: chicken})
salt = Item.create!({name: 'Salt ', amount_cents: '0.99', image: File.open('./app/assets/images/ingredients/saltpepper.jpg'), condiment: 'TRUE'})
Ingredient.create!({ item_id: salt.id, recipe: chicken})
olive = Item.create!({name: 'Olive Oil ', amount_cents: '8.29', image: File.open('./app/assets/images/ingredients/olive_oil.jpg'), condiment: 'TRUE'})
Ingredient.create!({ item_id: olive.id, recipe: chicken})
breasts = Item.create!({name: 'Chicken Breasts', amount_cents: '15.99', image: File.open('./app/assets/images/ingredients/chicken.jpg'), condiment: 'FALSE'})
Ingredient.create!({ item_id: breasts.id, recipe: chicken})
farfalle = Item.create!({name: 'Farfalle Pasta', amount_cents: '5.25', image: File.open('./app/assets/images/ingredients/penne.jpg'), condiment: 'FALSE'})
Ingredient.create!({ item_id: farfalle.id, recipe: chicken})
