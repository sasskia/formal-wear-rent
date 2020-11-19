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
user1 = User.create!(first_name: 'John', last_name: 'Doe', email: 'john@gmail.com', password: 'topsecret', password_confirmation: 'topsecret', university: 'Cambridge')
user1.photo.attach(io: userphoto1, filename: 'user1.png',content_type: 'image/png')

userphoto2 = URI.open('https://images.pexels.com/photos/733872/pexels-photo-733872.jpeg?cs=srgb&dl=pexels-andrea-piacquadio-733872.jpg&fm=jpg')
user2 = User.create!(first_name: 'Jane', last_name: 'Smith', email: 'jane@gmail.com', password: 'topsecret', password_confirmation: 'topsecret', university: 'Cambridge')
user2.photo.attach(io: userphoto2, filename: 'user.png', content_type: 'image/png')

userphoto3 = URI.open('https://www2.le.ac.uk/offices/accessability/images/students/male%20student%20at%20computer%20-%20square.jpg/image_preview')
user3 = User.create!(first_name: 'Josh', last_name: 'Doe', email: 'josh@gmail.com', password: 'topsecret', password_confirmation: 'topsecret', university: 'Cambridge')
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


puts "Creating listings"


file1 = URI.open('https://d310a9hpolx59w.cloudfront.net/product_photos/77277788/file_09464f7ebc_original.jpg')
item1 = Listing.create!(name: 'Black dress', category: 'dress', gender: 'women', description: 'Beautiful and very classic black dress.', size: '10', price_per_night: 20, user_id: user2.id)
item1.photos.attach(io: file1, filename: 'blackdress.png', content_type: 'image/png')

file2 = URI.open('https://imageuk.millybridal.org/22924/b22924.jpg?v=190330')
item2 = Listing.create!(name: 'Silver gown', category: 'gown', gender: 'women', description: 'Very shiny and very elegant gown.', size: 'M', price_per_night: 50, user_id: user2.id)
item2.photos.attach(io: file2, filename: 'silvergown.png', content_type: 'image/png')

file3 = URI.open('https://bespokedailyshop.com/wp-content/uploads/2020/03/Kingsbury-Sky-Blue-Slim-Fit-Tuxedo-1.jpg')
item3 = Listing.create!(name: 'Tuxedo', category: 'tuxedo', gender: 'men', description: 'Very handsome and fancy tuxedo.', size: 'M', price_per_night: 20, user_id: user3.id)
item3.photos.attach(io: file3, filename: 'tuxedo.png', content_type: 'image/png')

file4 = URI.open('https://www.menswearstyle.co.uk/content/blogs/ffce895f-0446-4b92-bffb-f4f458fd991e_blog_ln_.jpg')
item4 = Listing.create!(name: 'Black tie', category: 'black tie', gender: 'men', description: 'Super chic and super nice.', size: 'L', price_per_night: 10, user_id: user3.id)
item4.photos.attach(io: file4, filename: 'blacktie.png', content_type: 'image/png')

file5 = URI.open('https://www.ujackets.com/wp-content/uploads/2019/12/just-mercy-bryan-stevenson-suit.jpg')
item5 = Listing.create!(name: 'Red suit', category: 'tuxedo', gender: 'men', description: 'Super stylish and modern suit.', size: 'S', price_per_night: 30, user_id: user3.id)
item5.photos.attach(io: file5, filename: 'tuxedo1.png', content_type: 'image/png')

file6 = URI.open('https://media.gq.com/photos/56462ad96ff00fb522b08b4e/master/w_2812,h_4045,c_limit/Obama%20Style%202011%20White%20Tie.jpg')
item6 = Listing.create!(name: 'Full white tie', category: 'white tie', gender: 'men', description: 'Full White Tie for your next ball!', size: 'S', price_per_night: 30, user_id: user3.id)
item6.photos.attach(io: file6, filename: 'whitetie.png', content_type: 'image/png')

file7 = URI.open('https://picture-cdn.wheretoget.it/ubj457-l-610x610-shoes-black+heels-strap+heels-heels+straps-sexy-cute-high+heels-black-heel-stilettos-strappy+heels-heels-strap-ankle+strap+heels-black+shoes-black+sandal+heels.jpg')
item7 = Listing.create!(name: 'Black heels', category: 'heels', gender: 'women', description: 'Black heels to go with any dress!', size: '6', price_per_night: 10, user_id: user7.id)
item7.photos.attach(io: file7, filename: 'blackheels.png', content_type: 'image/png')

file8 = URI.open('https://ae01.alicdn.com/kf/HTB14lgUa6DuK1RjSszdq6xGLpXa0/Glitter-Ball-Gown-Sparkly-Prom-Dress-Deep-V-Neck-Burgundy-Sequin-Long-Womens-Formal-Evening-Dresses.jpg_q50.jpg')
item8 = Listing.create!(name: 'Chic maroon ball gown', category: 'gown', gender: 'women', description: 'The ultimate showstopper!', size: 'M', price_per_night: 15, user_id: user7.id)
item8.photos.attach(io: file8, filename: 'maroongown.png', content_type: 'image/png')

file9 = URI.open('https://cdn.etonshirts.com/dyn/media/catalog/product/A/1/A101600501800_tbofu_1/914x/black_silk_bow_tie_-_self_tied.jpg')
item9 = Listing.create!(name: 'Self-tying black bowtie', category: 'black tie', gender: 'men', description: 'silky design', size: 'Standard', price_per_night: 3, user_id: user3.id)
item9.photos.attach(io: file9, filename: 'blackbowtie.png', content_type: 'image/png')


puts "Creating bookings"
booking1 = Booking.create!(user_id: user4.id, listing_id: item2.id, start_date: Time.current.next_month + 100000, end_date: Time.current.next_month + 600000, confirmed: true)
booking2 = Booking.create!(user_id: user4.id, listing_id: item4.id, start_date: Time.current.next_month + 100000, end_date: Time.current.next_month + 300000)
booking3 = Booking.create!(user_id: user4.id, listing_id: item3.id, start_date: Time.current.next_month + 100000, end_date: Time.current.next_month + 600000)
booking4 = Booking.create!(user_id: user1.id, listing_id: item9.id, start_date: Time.current.next_month + 100000, end_date: Time.current.next_month + 600000)
booking5 = Booking.create!(user_id: user1.id, listing_id: item5.id, start_date: Time.now.beginning_of_month - 3.day, end_date: Time.now.beginning_of_month - 1.day)
