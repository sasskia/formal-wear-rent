# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require "open-uri"

puts "Cleaning database"

Booking.destroy_all
Listing.destroy_all
User.destroy_all


puts "Creating users"
userphoto1 = URI.open('https://www.youthareawesome.com/wp-content/uploads/2013/08/male-college-student-backpack.jpeg')
user1 = User.create!(first_name: 'Harry', last_name: 'Williams', email: 'harry@gmail.com', password: 'topsecret', password_confirmation: 'topsecret', university: 'Cambridge')
user1.photo.attach(io: userphoto1, filename: 'user1.png',content_type: 'image/png')

userphoto2 = URI.open('https://images.pexels.com/photos/733872/pexels-photo-733872.jpeg?cs=srgb&dl=pexels-andrea-piacquadio-733872.jpg&fm=jpg')
user2 = User.create!(first_name: 'Jane', last_name: 'Smith', email: 'jane@gmail.com', password: 'topsecret', password_confirmation: 'topsecret', university: 'Cambridge')
user2.photo.attach(io: userphoto2, filename: 'user.png', content_type: 'image/png')

userphoto3 = URI.open('https://www2.le.ac.uk/offices/accessability/images/students/male%20student%20at%20computer%20-%20square.jpg/image_preview')
user3 = User.create!(first_name: 'Josh', last_name: 'Randall', email: 'josh@gmail.com', password: 'topsecret', password_confirmation: 'topsecret', university: 'Cambridge')
user3.photo.attach(io: userphoto3, filename: 'user.png', content_type: 'image/png')

userphoto4 = URI.open('https://i.pinimg.com/originals/97/ed/6b/97ed6b370803649addbf66144c18c194.png')
user4 = User.create!(first_name: 'Amanda', last_name: 'Duncan', email: 'amanda@gmail.com', password: 'topsecret', password_confirmation: 'topsecret', university: 'Cambridge')
user4.photo.attach(io: userphoto4, filename: 'user.png', content_type: 'image/png')

userphoto5 = URI.open('https://www.port.ac.uk/-/media/images/component---600x600---inset-content---image-button/promos---inset-content---sort-folder/study-with-us/international-students/male-student-with-glasses-speaking-at-event-600x600.jpg?h=600&la=en&w=600&hash=E0C98E1C77341474D71A1A0A61961D978F257559')
user5 = User.create!(first_name: 'Peter', last_name: 'Smith', email: 'peter@gmail.com', password: 'topsecret', password_confirmation: 'topsecret', university: 'Cambridge')
user5.photo.attach(io: userphoto5, filename: 'user.png', content_type: 'image/png')

userphoto6 = URI.open('https://static01.nyt.com/images/2019/11/17/books/review/17Salam/Salam1-superJumbo.jpg')
user6 = User.create!(first_name: 'Emily', last_name: 'Johnson', email: 'emily@gmail.com', password: 'topsecret', password_confirmation: 'topsecret', university: 'Cambridge')
user6.photo.attach(io: userphoto6, filename: 'user.png', content_type: 'image/png')

userphoto7 = URI.open('https://static01.nyt.com/images/2019/11/17/books/review/17Salam/Salam1-superJumbo.jpg')
user7 = User.create!(first_name: 'Sarah', last_name: 'Taylor', email: 'sarah@gmail.com', password: 'topsecret', password_confirmation: 'topsecret', university: 'Cambridge')
user7.photo.attach(io: userphoto7, filename: 'user.png', content_type: 'image/png')

userphoto8 = URI.open('https://www.port.ac.uk/-/media/images/component---600x600---inset-content---image-button/promos---inset-content---sort-folder/study-with-us/international-students/male-student-with-glasses-speaking-at-event-600x600.jpg?h=600&la=en&w=600&hash=E0C98E1C77341474D71A1A0A61961D978F257559')
user8 = User.create!(first_name: 'Alex', last_name: 'Brilliante', email: 'alex@gmail.com', password: 'topsecret', password_confirmation: 'topsecret', university: 'Cambridge')
user8.photo.attach(io: userphoto8, filename: 'user.png', content_type: 'image/png')

userphoto9 = URI.open('https://www.port.ac.uk/-/media/images/component---600x600---inset-content---image-button/promos---inset-content---sort-folder/study-with-us/international-students/male-student-with-glasses-speaking-at-event-600x600.jpg?h=600&la=en&w=600&hash=E0C98E1C77341474D71A1A0A61961D978F257559')
user9 = User.create!(first_name: 'Dipesh', last_name: 'Patel', email: 'dipesh@gmail.com', password: 'topsecret', password_confirmation: 'topsecret', university: 'Cambridge')
user9.photo.attach(io: userphoto9, filename: 'user.png', content_type: 'image/png')

userphoto10 = URI.open('https://www.port.ac.uk/-/media/images/component---600x600---inset-content---image-button/promos---inset-content---sort-folder/study-with-us/international-students/male-student-with-glasses-speaking-at-event-600x600.jpg?h=600&la=en&w=600&hash=E0C98E1C77341474D71A1A0A61961D978F257559')
user10 = User.create!(first_name: 'Simeon', last_name: 'De Montford', email: 'simeon@gmail.com', password: 'topsecret', password_confirmation: 'topsecret', university: 'Cambridge')
user10.photo.attach(io: userphoto10, filename: 'user.png', content_type: 'image/png')

userphoto11 = URI.open('https://www.port.ac.uk/-/media/images/component---600x600---inset-content---image-button/promos---inset-content---sort-folder/study-with-us/international-students/male-student-with-glasses-speaking-at-event-600x600.jpg?h=600&la=en&w=600&hash=E0C98E1C77341474D71A1A0A61961D978F257559')
user11 = User.create!(first_name: 'Vernon', last_name: 'Ashford', email: 'vernon@gmail.com', password: 'topsecret', password_confirmation: 'topsecret', university: 'Cambridge')
user11.photo.attach(io: userphoto11, filename: 'user.png', content_type: 'image/png')

userphoto12 = URI.open('https://www.port.ac.uk/-/media/images/component---600x600---inset-content---image-button/promos---inset-content---sort-folder/study-with-us/international-students/male-student-with-glasses-speaking-at-event-600x600.jpg?h=600&la=en&w=600&hash=E0C98E1C77341474D71A1A0A61961D978F257559')
user12 = User.create!(first_name: 'Xavier', last_name: 'St John', email: 'xavier@gmail.com', password: 'topsecret', password_confirmation: 'topsecret', university: 'Cambridge')
user12.photo.attach(io: userphoto12, filename: 'user.png', content_type: 'image/png')


puts "Creating listings"


file1 = URI.open('https://d310a9hpolx59w.cloudfront.net/product_photos/77277788/file_09464f7ebc_original.jpg')
item1 = Listing.new(name: 'Black dress', category: 'dress', gender: 'women', description: 'Beautiful and very classic black dress.', size: '10', price_per_night: 20, user_id: user2.id)
item1.photos.attach(io: file1, filename: 'blackdress.png', content_type: 'image/png')
item1.save!

file2 = URI.open('https://imageuk.millybridal.org/22924/b22924.jpg?v=190330')
item2 = Listing.new(name: 'Silver gown', category: 'gown', gender: 'women', description: 'Very shiny and very elegant gown.', size: 'M', price_per_night: 30, user_id: user5.id)
item2.photos.attach(io: file2, filename: 'silvergown.png', content_type: 'image/png')
item2.save!

file3 = URI.open('https://bespokedailyshop.com/wp-content/uploads/2020/03/Kingsbury-Sky-Blue-Slim-Fit-Tuxedo-1.jpg')
item3 = Listing.new(name: 'Light blue tuxedo', category: 'tuxedo', gender: 'men', description: 'Very handsome and fancy tuxedo.', size: 'M', price_per_night: 20, user_id: user1.id)
item3.photos.attach(io: file3, filename: 'tuxedo.png', content_type: 'image/png')
item3.save!

file4 = URI.open('https://d2h1pu99sxkfvn.cloudfront.net/b0/18675947/867047659_4cd1830661084b3e90fffd0297d3986a/P0.jpg')
item4 = Listing.new(name: 'Black formal shoes', category: 'black tie', gender: 'men', description: 'Super chic and super nice.', size: 'M', price_per_night: 10, user_id: user3.id)
item4.photos.attach(io: file4, filename: 'blacktie.png', content_type: 'image/png')
item4.save!

file5 = URI.open('https://d2h1pu99sxkfvn.cloudfront.net/b0/2151183/221005299_gebk42XZfC/P0.jpg')
item5 = Listing.new(name: 'Self-tying maroon bowtie', category: 'black tie', gender: 'men', description: 'This bowtie is funky!', size: 'S', price_per_night: 3, user_id: user5.id)
item5.photos.attach(io: file5, filename: 'tuxedo1.png', content_type: 'image/png')
item5.save!

file6 = URI.open('https://i.pinimg.com/originals/66/54/e6/6654e6770edce8f93adb42ede0753e0d.jpg')
item6 = Listing.new(name: 'Full white tie', category: 'white tie', gender: 'men', description: 'Full White Tie for your next ball!', size: 'S', price_per_night: 30, user_id: user3.id)
item6.photos.attach(io: file6, filename: 'whitetie.png', content_type: 'image/png')
item6.save!

file7 = URI.open('https://picture-cdn.wheretoget.it/ubj457-l-610x610-shoes-black+heels-strap+heels-heels+straps-sexy-cute-high+heels-black-heel-stilettos-strappy+heels-heels-strap-ankle+strap+heels-black+shoes-black+sandal+heels.jpg')
item7 = Listing.new(name: 'Black heels', category: 'heels', gender: 'women', description: 'Black heels to go with any dress!', size: '6', price_per_night: 10, user_id: user7.id)
item7.photos.attach(io: file7, filename: 'blackheels.png', content_type: 'image/png')
item7.save!

file8 = URI.open('https://ae01.alicdn.com/kf/HTB14lgUa6DuK1RjSszdq6xGLpXa0/Glitter-Ball-Gown-Sparkly-Prom-Dress-Deep-V-Neck-Burgundy-Sequin-Long-Womens-Formal-Evening-Dresses.jpg_q50.jpg')
item8 = Listing.new(name: 'Chic maroon ball gown', category: 'gown', gender: 'women', description: 'The ultimate showstopper!', size: 'M', price_per_night: 15, user_id: user7.id)
item8.photos.attach(io: file8, filename: 'maroongown.png', content_type: 'image/png')
item8.save!

file9 = URI.open('https://d2h1pu99sxkfvn.cloudfront.net/b0/20500348/875008704_933d3345add7434b9ef2a8772e51e3f1/P0.jpg')
item9 = Listing.new(name: 'Magenta pocket square', category: 'black tie', gender: 'men', description: 'silky design', size: 'Standard', price_per_night: 3, user_id: user5.id)
item9.photos.attach(io: file9, filename: 'blackbowtie.png', content_type: 'image/png')
item9.save!

file10 = URI.open('https://d2h1pu99sxkfvn.cloudfront.net/b0/4448666/482694818_5VgC1sGUkI/P0.jpg')
item10 = Listing.new(name: 'Glitter gown', category: 'gown', gender: 'women', description: 'Super shiny, makes you feel like a star.', size: 'S', price_per_night: 10, user_id: user7.id)
item10.photos.attach(io: file10, filename: 'sparklegown.png', content_type: 'image/png')
item10.save!

file11 = URI.open('https://d2h1pu99sxkfvn.cloudfront.net/b0/6161378/314657430_WP7DKENBbI/P0.jpg')
item11 = Listing.new(name: 'Misty blue suit', category: 'tuxedo', gender: 'men', description: 'Stylish and perfect fit.', size: 'S', price_per_night: 15, user_id: user1.id)
item11.photos.attach(io: file11, filename: 'bluesuit.png', content_type: 'image/png')
item11.save!

file12 = URI.open('https://d2h1pu99sxkfvn.cloudfront.net/b0/11305014/488847038_orxK6k3qu2/P0.jpg')
item12 = Listing.new(name: 'Lanvin tie', category: 'tuxedo', gender: 'men', description: 'Red and extremely elegant. Looks good.', size: 'Standard', price_per_night: 6, user_id: user1.id)
item12.photos.attach(io: file12, filename: 'redtie.png', content_type: 'image/png')
item12.save!

file13 = URI.open('https://d2h1pu99sxkfvn.cloudfront.net/b0/3206395/797440783_185416c0a893431598cd46055a4028b0/P0.jpg')
item13 = Listing.new(name: 'Red stilettos', category: 'heels', gender: 'women', description: 'Comfortable and look really nice. Brand new.', size: '7', price_per_night: 10, user_id: user6.id)
item13.photos.attach(io: file13, filename: 'redheels.png', content_type: 'image/png')
item13.save!

file14 = URI.open('https://d2h1pu99sxkfvn.cloudfront.net/b0/21747890/812587157_c35d0367df40460c921dcdad74d27e62/P0.jpg')
item14 = Listing.new(name: 'Navy bowtie', category: 'black tie', gender: 'men', description: 'Comfortable and look really nice. Brand new.', size: '7', price_per_night: 10, user_id: user6.id)
item14.photos.attach(io: file14, filename: 'redheels.png', content_type: 'image/png')
item14.save!

file15 = URI.open('https://d2h1pu99sxkfvn.cloudfront.net/b0/20728081/866555087_be1ae5c0d9e44da8810de7ca0c4f8389/P0.jpg')
item15 = Listing.new(name: 'Black Velvet jacket', category: 'black tie', gender: 'men', description: 'Comfortable and look really nice. Brand new.', size: '7', price_per_night: 10, user_id: user6.id)
item15.photos.attach(io: file15, filename: 'redheels.png', content_type: 'image/png')
item15.save!


puts "Creating bookings"
booking1 = Booking.create!(user_id: user4.id, listing_id: item2.id, start_date: Time.current.next_month + 100000, end_date: Time.current.next_month + 600000, confirmed: true)
booking2 = Booking.create!(user_id: user4.id, listing_id: item4.id, start_date: Time.current.next_month + 100000, end_date: Time.current.next_month + 300000)
booking3 = Booking.create!(user_id: user5.id, listing_id: item3.id, start_date: Time.current.next_month + 100000, end_date: Time.current.next_month + 600000)
booking4 = Booking.create!(user_id: user1.id, listing_id: item9.id, start_date: Time.current.next_month + 100000, end_date: Time.current.next_month + 600000)
booking5 = Booking.create!(user_id: user1.id, listing_id: item6.id, start_date: Time.now.beginning_of_month - 3.day, end_date: Time.now.beginning_of_month - 1.day)
booking6 = Booking.create!(user_id: user2.id, listing_id: item2.id, start_date: Time.now.beginning_of_month - 3.day, end_date: Time.now.beginning_of_month - 1.day)
booking7 = Booking.create!(user_id: user7.id, listing_id: item4.id, start_date: 14.days.from_now, end_date: 18.days.from_now)
booking8 = Booking.create!(user_id: user7.id, listing_id: item5.id, start_date: 16.days.from_now, end_date: 22.days.from_now)


puts "Creating reviews"
review1 = Review.create!(user_id: user8.id, listing_id: item4.id, rating: 4, content: "These were a great pair of shoes")
review2 = Review.create!(user_id: user9.id, listing_id: item4.id, rating: 2, content: "Fit was not great not going to lie")
review3 = Review.create!(user_id: user10.id, listing_id: item4.id, rating: 4, content: "Quick delivery, great lender! Would rent again")
review4 = Review.create!(user_id: user9.id, listing_id: item5.id, rating: 5, content: "Great value for money, brilliant!")
review5 = Review.create!(user_id: user11.id, listing_id: item5.id, rating: 2, content: "Bit of wear and tear, not as advertised")
review6 = Review.create!(user_id: user12.id, listing_id: item5.id, rating: 5, content: "Massive fan of this bowtie! Looks great")


