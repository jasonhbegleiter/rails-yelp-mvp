# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

10.times do
  address = Faker::FamilyGuy.location
  name = Faker::FamilyGuy.character
  phone_number = ''
  10.times do
    phone_number += (0..9).to_a.sample.to_s
  end
  category = %w(chines italian japanese french belgian).sample
  restaurant = Restaurant.new({name:name, address:address, phone_number:phone_number, category:category})
  restaurant.save
end
