# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require "open-uri"

Booking.destroy_all
Animal.destroy_all
User.destroy_all

user = User.new(email: 'gregoire@monster.fr', password: '123456', password_confirmation: '123456')
      file = URI.open('https://avatars0.githubusercontent.com/u/17796594?s=400&u=f6de9d96550d08d6272ed71df20e485f45bcfa83&v=4.png')
      user.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
      user.save
      
user1 = User.new(email: 'laurene@monster.fr', password: '123456', password_confirmation: '123456')
      file = URI.open('https://avatars0.githubusercontent.com/u/70512756?v=4.png')
      user1.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
      user1.save

user2 = User.new(email: 'marion@monster.fr', password: '123456', password_confirmation: '123456')
      file = URI.open('https://avatars3.githubusercontent.com/u/71773113?s=400&u=181dfa92826d6984124888a22f85f1be2d04aa8f&v=4.png')
      user2.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
      user2.save

user3 = User.new(email: 'antony@monster.fr', password: '123456', password_confirmation: '123456')
      file = URI.open('https://avatars0.githubusercontent.com/u/70489849?s=400&u=9c4d21f36597bcf4f647b4aa276afab4d39cf8c2&v=4.png')
      user3.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
      user3.save

USERS = [user, user1, user2, user3]
# CATEGORIES = ["dragon", "unicorn", "sphinx", "phoenix", "griffin", "pegasus", "other"]
# SIZES = ["XS", "S", "M", "L", "XL", "Really Really Big"]
POWERS = ["hug", "electric", "fire", "fly", "heal", "teleportation", "hypnosis"]

animal = Animal.new(name: "Phoenix",
        description:"cute flying phoenix. associated with the sun, a phoenix obtains new life by arising from the ashes of its predecessor.",
        category: "phoenix",
        address: "2 Rue de berlin, paris",
        power: POWERS.sample,
        price: rand(30..200),
        user: USERS.sample,
        size: "L"
      )

      file  = File.open(File.join(Rails.root,'app/assets/images/seed-images/phoenix.jpg'))
      animal.photos.attach(io:file,filename: 'phoenix.jpg')
      animal.save

animal = Animal.new(name: "Hamstlion",
        description: "If you like the cuteness of a hamster and the thunderbolt of a lion. this is the animal you need",
        category: "other",
        address: "16 villa gaudelet, paris",
        power: POWERS.sample,
        price: rand(30..200),
        user: USERS.sample,
        size: "S"
      )

      file  = File.open(File.join(Rails.root,'app/assets/images/seed-images/hamstlion.jpg'))
      animal.photos.attach(io:file,filename: 'hamstlion.jpg')
      animal.save

animal = Animal.new(name: "Violet",
        description: "Nice unicorn",
        category: "unicorn",
        address: "6 rue des petits champs, Paris",
        power: POWERS.sample,
        price: rand(30..200),
        user: USERS.sample,
        size: "L"
        )

        file  = File.open(File.join(Rails.root,'app/assets/images/seed-images/violet-unicorn.jpg'))
                animal.photos.attach(io:file,filename: 'violet-unicorn.jpg')
                animal.save

animal = Animal.new(name: "Rudolph the red nose",
        description: "Your light in the night, your warmth in the cold winter",
        category: "other",
        address: "40 Boulevard Haussmann, 75009 Paris",
        power: POWERS.sample,
        price: rand(30..200),
        user: USERS.sample,
        size: "L"
        )

        file  = File.open(File.join(Rails.root,'app/assets/images/seed-images/rudolph.gif'))
                animal.photos.attach(io:file,filename: 'rudolph.gif')
                animal.save

animal = Animal.new(name: "1 eye monster",
        description: "A lovely friend even if he can't blink while driving",
        category: "griffin",
        address: "25 Quai Panhard et Levassor, 75013 Paris",
        power: POWERS.sample,
        price: rand(30..200),
        user: USERS.sample,
        size: "XS"
        )

        file  = File.open(File.join(Rails.root,'app/assets/images/seed-images/monster.jpg'))
                animal.photos.attach(io:file,filename: 'monster.jpg')
                animal.save

animal = Animal.new(name: "Winterfell dragon",
        description: "During covid19, use my dragon to fly back home without police control",
        category: "dragon",
        address: "1 Place Vendome, Paris",
        power: POWERS.sample,
        price: rand(30..200),
        user: USERS.sample,
        size: "Really Really Big"
        )

        file  = File.open(File.join(Rails.root,'app/assets/images/seed-images/winterfell_dragon.jpg'))
                animal.photos.attach(io:file,filename: 'winterfell_dragon.jpg')
                animal.save

animal = Animal.new(name: "Harry the hippogriff",
        description: "Harry already loves you. please mind the gap",
        category: "phoenix",
        address: "120 avenue de France Ilôt, 75013 Paris",
        power: POWERS.sample,
        price: rand(30..200),
        user: USERS.sample,
        size: "XL"
        )

        file  = File.open(File.join(Rails.root,'app/assets/images/seed-images/hippogriff.jpg'))
                animal.photos.attach(io:file,filename: 'hippogriff.jpg')
                animal.save

animal = Animal.new(name: "Baby groot",
        description: "Hug is not an option. can't stand fire and smoke",
        category: "griffin",
        address: "2 Route des Tribunes, 75016 Paris",
        power: POWERS.sample,
        price: rand(30..200),
        user: USERS.sample,
        size: "S"
        )

        file  = File.open(File.join(Rails.root,'app/assets/images/seed-images/babygroot.jpg'))
                animal.photos.attach(io:file,filename: 'babygroot.jpg')
                animal.save

animal = Animal.new(name: "Girorse",
        description: "The horse-riding safari.Unicorns are dead !",
        category: "other",
        address: "2 route des Tribunes, Paris",
        power: POWERS.sample,
        price: rand(30..200),
        user: USERS.sample,
        size: "M"
        )

        file  = File.open(File.join(Rails.root,'app/assets/images/seed-images/girorse.jpg'))
                animal.photos.attach(io:file,filename: 'girorse.jpg')
                animal.save

animal = Animal.new(name: "Detective pikachu",
        description: "Electric cute detective pikachu who will help you find any missing friend",
        category: "other",
        address: "31 rue d'Avron, Paris",
        power: POWERS.sample,
        price: rand(30..200),
        user: USERS.sample,
        size: "S"
        )

        file  = File.open(File.join(Rails.root,'app/assets/images/seed-images/pokemon.jpg'))
                animal.photos.attach(io:file,filename: 'pokemon.jpg')
                animal.save

animal = Animal.new(name: "Dumboflies",
        description: "Have you ever seen an elephant flies",
        category: "other",
        address: "4 Rue du Sénégal 75020 Paris",
        power: POWERS.sample,
        price: rand(30..200),
        user: USERS.sample,
        size: "XL"
        )

        file  = File.open(File.join(Rails.root,'app/assets/images/seed-images/butterflyelephant.jpg'))
                animal.photos.attach(io:file,filename: 'butterflyelephant.jpg')
                animal.save

animal = Animal.new(name: "Tigrou the rabbit",
        description: "Watch out for the bite of this tender rabbit. not suitable ovens !!",
        category: "griffin",
        address: "4 Rue du Moulin-des-Lapins, Paris",
        power: POWERS.sample,
        price: rand(30..200),
        user: USERS.sample,
        size: "XL"
        )

        file  = File.open(File.join(Rails.root,'app/assets/images/seed-images/tigerrabbit.jpg'))
                animal.photos.attach(io:file,filename: 'tigerrabbit.jpg')
                animal.save

# file = URI.open('https://giantbomb1.cbsistatic.com/uploads/original/9/99864/2419866-nes_console_set.png')
# article = Article.new(title: 'NES', body: "A great console")
# article.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')


# animal = Animal.new(name: "Hamstlion",
#         description: "If you like the cuteness of a hamster and the thunderbolt of a lion. this is the animal you need",
#         category: "other",
#         address: "16 villa gaudelet, paris",
#         power: POWERS.sample,
#         price: rand(30..200),
#         user: USERS.sample,
#         size: "S"
#       )



# animal = Animal.new(name: "",
#         description: "",
#         category: "",
#         address: "",
#         power: POWERS.sample,
#         price: rand(30..200),
#         user: USERS.sample,
#         size: ""
          # file  = File.open(File.join(Rails.root,'app/assets/images/seed-images/hamstlion.jpg'))
          #       animal.photos.attach(io:file,filename: 'hamstlion.jpg')
          #       animal.save
