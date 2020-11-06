require 'faker'

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Item.destroy_all
User.destroy_all


10.times do
    User.create(name: Faker::FunnyName.name,
                email: Faker::Internet.email,
                username: Faker::Internet.username)
end



item_arr = ['Masks', 'Bottle of Wine', 'Box of Tissues', 'Monopoly', 'Insomnia Cookies', 'Hand Sanitzer', 'Disinfectant Wipes', 'iPhone Charger', 'Flowers', 'Candles', 'Bath Bomb', 'Picture Frame', 'Coloring Book', 'Snuggie', 'Gloves', 'AirPods', 'Dog Treats', 'Manicure Set', 'Puzzle', '$10 Visa Giftcard', 'Slippers']

20.times do
    Item.create(name: item_arr.sample, 
                price: rand(5.00..200.00).round(2),   
                description: Faker::Lorem.sentence(word_count: 8))
end

#how would we assign a product a description, if we weren't using a placeholder?




