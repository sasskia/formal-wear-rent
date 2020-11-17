# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Cleaning database"
User.destroy_all
Listing.destroy_all
Booking.destroy_all

puts "Creating users"
user1 = User.create(first_name: 'John', last_name: 'Doe', email: 'john@gmail.com', password: 'topsecret', password_confirmation: 'topsecret', university: 'Cambridge')
user2 = User.create(first_name: 'Jane', last_name: 'Smith', email: 'jane@gmail.com', password: 'topsecret', password_confirmation: 'topsecret', university: 'Oxford')
user3 = User.create(first_name: 'Josh', last_name: 'Doe', email: 'josh@gmail.com', password: 'topsecret', password_confirmation: 'topsecret', university: 'Harvard')
user4 = User.create(first_name: 'Amanda', last_name: 'Duncan', email: 'amanda@gmail.com', password: 'topsecret', password_confirmation: 'topsecret', university: 'Princeton')

puts "Creating listings"
item1 = Listing.create(name: 'Black dress', category: 'Dress', gender: 'women', description: 'Beautiful and very classic black dress.', size: '10', price_per_night: 20, user_id: user1.id)
item2 = Listing.create(name: 'Silver gown', category: 'Gown', gender: 'women', description: 'Very shiny and very elegant gown.', size: 'M', price_per_night: 50, user_id: user2.id)
item3 = Listing.create(name: 'Tuxedo', category: 'Tuxedo', gender: 'men', description: 'Very handsome and fancy tuxedo.', size: 'M', price_per_night: 20, user_id: user3.id)
item4 = Listing.create(name: 'Black tie', category: 'Black tie', gender: 'men', description: 'Super chic and super nice.', size: 'L', price_per_night: 10, user_id: user3.id)
item5 = Listing.create(name: 'Red suit', category: 'Tuxedo', gender: 'men', description: 'Super stylish and modern suit.', size: 'S', price_per_night: 30, user_id: user2.id)

puts "Creating bookings"
booking1 = Booking.create(user_id: user4.id, listing_id: item2.id, start_date: Time.now, end_date: Time.now + 60000)
booking2 = Booking.create(user_id: user4.id, listing_id: item4.id, start_date: Time.now, end_date: Time.now + 60000)
