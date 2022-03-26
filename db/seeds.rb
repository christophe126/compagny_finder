# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'open-uri'

puts 'Destroying all files'
User.destroy_all

puts '----------Creating new users---------'

User.create(
  first_name: 'Christophe',
  last_name: 'Christophe',
  email: 'christophe@christophe.com',
  password: "christophe"
)
puts '----------Creating User Mederic Done---------'
