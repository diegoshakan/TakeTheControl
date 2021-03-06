# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user = User.new(first_name: "user", last_name:"example", gender_id: 1, schooling_id: 6, 
                birthday:"01-01-1999", phone: "84991112233", email: "user@example.com", 
                password: "changeme", password_confirmation: "changeme")
user.save

Dir[File.join(Rails.root, 'db', 'seeds', '*.rb')].sort.each { |seed| load seed }