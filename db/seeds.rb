# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require "open-uri"

Broom.destroy_all
User.destroy_all

User.create!(nickname:"Annie", email:"annie@witch.com", password:"annieannie")
User.create(nickname:"Mireille", email:"mireille@witch.com", password:"mireillemireille" )
User.create(nickname:"Rosie", email:"rosie@witch.com", password:"rosierosie")
User.create(nickname:"Chloé", email: "chloe@witch.com", password:"chloechloe")
User.create(nickname:"Berthe", email:"berthe@witch.com", password:"bertheberthe")
User.create(nickname:"Joséphine", email: "joséphine@witch.com", password:"joséphinejoséphine")
User.create(nickname:"Jessica", email: "jessica@witch.com", password:"jessicajessica")
User.create(nickname:"Aurore", email:"aurore@witch.com", password:"auroreaurore")
User.create(nickname:"Ludovine", email: "ludovine@witch.com", password:"ludovineludovine")

users = User.all


file = URI.open('https://res.cloudinary.com/cloudpandora/image/upload/v1615471915/WitchBroom/balaisfin_euiwsh.png')
lintrepide = Broom.create!(name: "L'intrépide", description: "Il ne craint pas l'aventure, résiste à tout type d'intempéries
  , il ne vous decevra jamais.", price: 402, power: 75, twigs: 657, age:"106", user: users.sample)
lintrepide.photo.attach(io: file, filename: 'balaisfin', content_type: 'image/png')

file1 = URI.open('https://res.cloudinary.com/cloudpandora/image/upload/v1615471915/WitchBroom/balaisnature_qkbtmg.png')
lancien = Broom.create(name: "L'ancien", description: "Très très fiable, je ne le loue qu'à des sorcières de confiance,
  il est solide mais il faudra quand même en prendre grand soin.", price: 260,
  power: 45, twigs: 657, age:"345", user: users.sample)
lancien.photo.attach(io: file1, filename: 'balaisnature', content_type: 'image/png')

file2 = URI.open('https://res.cloudinary.com/cloudpandora/image/upload/v1615471915/WitchBroom/balaiswiffer_qveegv.png')
lemoderne = Broom.create(name: "Le moderne", description: "Grace à son esthétique vous pouvez l'emporter partout, même pour un date
  (attention il se supporte pas les remarques misogynes.",
 price: 300, power: 45, twigs: 657, age:"34", user: users.sample)
lemoderne.photo.attach(io: file2, filename: 'balaisswiffer', content_type: 'image/png')

file3 = URI.open('https://res.cloudinary.com/cloudpandora/image/upload/v1615471915/WitchBroom/balaispasmal_tdh1yu.png')
oldschool = Broom.create(name: "Le old school", description: "Parfait pour les sorcières qui souhaitent rester dans un style classique chic,
  il vous emmène aux Sabbats en tout fiabilité et fait toujours son petit effet.", price: 400,
  power: 45, twigs: 657, age:"34", user: users.sample)
oldschool.photo.attach(io: file3, filename: 'balaispasmal', content_type: 'image/png')

file4 = URI.open('https://res.cloudinary.com/cloudpandora/image/upload/v1615471915/WitchBroom/balaisasia_xipjse.png')
lesombre = Broom.create(name: "Le sombre", description: "Mon balai n'est pas là pour plaisanter, adoratrice de satan uniquement,
  plaisantin s'abstenir.", price: 300,
  power: 45, twigs: 657, age:"34", user: users.sample)
lesombre.photo.attach(io: file4, filename: 'balaisasia', content_type: 'image/png')

file5 = URI.open('https://res.cloudinary.com/cloudpandora/image/upload/v1615471915/WitchBroom/balaisnoir_ncmcty.png')
letrange = Broom.create(name: "L'étrange", description: "J'aime beaucoup ce balai mais il faut savoir s'en servir,
il peut vous emmener dans des endroits sans que vous lui demandiez, uniquement pour les sorcières expérimentées.", price: 300,
  power: 45, twigs: 657, age:"34", user: users.sample)
letrange.photo.attach(io: file5, filename: 'balaisnoir', content_type: 'image/png')


file7 = URI.open('https://res.cloudinary.com/cloudpandora/image/upload/v1615471915/WitchBroom/Leclassique_oootpf.png')
leclassique = Broom.create(name: "Le classique", description: "Un beau balais comme on en fait plus, peut convenir aux débutantes de la voltige.", price: 300,
  power: 45, twigs: 657, age:"34", user: users.sample)
leclassique.photo.attach(io: file7, filename: 'balaisclassique', content_type: 'image/png')

file8 = URI.open('https://res.cloudinary.com/cloudpandora/image/upload/v1615471915/WitchBroom/balaisplumeau_to4ztx.png')
leplumeau = Broom.create(name: "Le plumeau", description: "Un balais dessiné par une grande créatrice, pour les sorcières fan de mode (très peu utilisé, en parfait état).", price: 300,
  power: 45, twigs: 657, age:"34", user: users.sample)
leplumeau.photo.attach(io: file8, filename: 'balaisplumeau', content_type: 'image/png')







