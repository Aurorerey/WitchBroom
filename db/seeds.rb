# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Broom.destroy_all
User.destroy_all

User.create!(nickname:"Annie", email:"annie@witch.com", password:"annieannie")
User.create(nickname:"Mireille", email:"mireille@witch.com", password:"mireillemireille" )
User.create(nickname:"Rosie", email:"rosie@witch.com", password:"rosierosie")
User.create(nickname:"Chloé", email: "chloe@witch.com", password:"chloechloe")
User.create(nickname:"Berthe", email:"berthe@witch.com", password:"bertheberthe")
User.create(nickname:"Joséphine", email: "joséphine@witch.com", password:"joséphinejoséphine")

users = User.all

Broom.create!(name: "l'intrépide", description: "Il ne craint pas l'aventure", price: 300,
  power: 45, twigs: 657, age:"34", user: users.sample)

Broom.create(name: "l'intrépide", description: "Il ne craint pas l'aventure", price: 300,
  power: 45, twigs: 657, age:"34", user: users.sample)

Broom.create(name: "l'intrépide", description: "Il ne craint pas l'aventure", price: 300,
  power: 45, twigs: 657, age:"34", user: users.sample)

Broom.create(name: "l'intrépide", description: "Il ne craint pas l'aventure", price: 300,
  power: 45, twigs: 657, age:"34", user: users.sample)

Broom.create(name: "l'intrépide", description: "Il ne craint pas l'aventure", price: 300,
  power: 45, twigs: 657, age:"34", user: users.sample)

Broom.create(name: "l'intrépide", description: "Il ne craint pas l'aventure", price: 300,
  power: 45, twigs: 657, age:"34", user: users.sample)









