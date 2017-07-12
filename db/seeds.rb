# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'Seeding Database. Standby...'

# Start User Creation
puts 'Creating User One'
user_one = User.create(first_name: 'Robert',
  last_name: 'Cornell',
  email: 'robert@alkami.io',
  password: 'Uzb5728z')

user_one.skip_confirmation!
user_one.save
puts 'User One created!'
# End User Creation

