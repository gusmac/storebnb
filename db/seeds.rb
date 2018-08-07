# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

urls = [
  "https://res.cloudinary.com/j163surf77/image/upload/v1533624821/cabin.jpg",
  "https://res.cloudinary.com/j163surf77/image/upload/v1533624851/office.jpg",
  "https://res.cloudinary.com/j163surf77/image/upload/v1533625210/room.jpg",
  "https://res.cloudinary.com/j163surf77/image/upload/v1533625349/kari.jpg"
]

user3 = User.create(
  first_name: "Gus",
  last_name: "Mac",
  email: "gusmac@gmail.com",
  password: "testtest")

user2 = User.create(
  first_name: "Kevin",
  last_name: "Smekens",
  email: "kjsmekens@gmail.com",
  password: "testtest")

user1 = User.create(
  first_name: "Julian",
  last_name: "Leopold",
  email: "julian@rega-sense.ch",
  password: "testtest")

users = [user1, user2, user3]

storage_space1 = StorageSpace.new(
  user: users.sample,
  description: "I have 5 Storages with different size. PM me",
  title: "Several storages size available",
  capacity: "20 boxes",
  address_city: "Canggu",
  address_zip_code: "80351",
  address_country: "Indonesia")

storage_space1.remote_photo_url = urls.sample
storage_space1.save

storage_space2 = StorageSpace.new(
  user: users.sample,
  description: "I have some space available in my garage. Good for a bike or a couple of boxes ",
  title: "Space available in the garage",
  capacity: "3 boxes",
  address_city: "Canggu",
  address_zip_code: "80351",
  address_country: "Indonesia")

storage_space2.remote_photo_url = urls.sample
storage_space2.save

storage_space3 = StorageSpace.new(
  user: users.sample,
  description: "Good for 2-3 surfboards",
  title: "Surfboards space available at FRii hotel",
  capacity: "5 boxes",
  address_city: "Canggu",
  address_zip_code: "80351",
  address_country: "Indonesia")

storage_space3.remote_photo_url = urls.sample
storage_space3.save

storage_space4 = StorageSpace.create(
  user: users.sample,
  description: "Good for 1 surfboard",
  title: "Surfboards space available at FRii hotel",
  capacity: "5 boxes",
  address_city: "Canggu",
  address_zip_code: "80351",
  address_country: "Indonesia")

storage_space4.remote_photo_url = urls.sample
storage_space4.save

storage_space5 = StorageSpace.create(
  user: users.sample,
  description: "Good for 3 boxes",
  title: "Boxes space available at Gita Homestay",
  capacity: "3 boxes",
  address_city: "Canggu",
  address_zip_code: "80351",
  address_country: "Indonesia")

storage_space5.remote_photo_url = urls.sample
storage_space5.save

storage_space6 = StorageSpace.create(
  user: users.sample,
  description: "Good for 2 boxes",
  title: "Boxes space available at my flat",
  capacity: "2 boxes",
  address_city: "Canggu",
  address_zip_code: "80351",
  address_country: "Indonesia")

storage_space6.remote_photo_url = urls.sample
storage_space6.save

storage_spaces = [
  storage_space1,
  storage_space2,
  storage_space3,
  storage_space4,
  storage_space5,
  storage_space6
]

5.times do
  Booking.create(
    user: users.sample,
    storage_space: storage_spaces.sample,
    start_date: "19.08.2018",
    end_date: "23.08.2018")
end

review1 = Review.create(
  description: "Loving Pineapple Storage.
  Owner is always available on whatsapp so I can call him up whenever I want to see my pineapples.",
  rating: 4
  )
review2 = Review.create(
  description: "great location and easy to pick up. Owner was easily accessible by phone",
  rating: 4
  )
review3 = Review.create(
  description: "storage slightly too small but fine!",
  rating: 3
  )
review4 = Review.create(
  description: "it was perfect for my bike",
  rating: 4
  )
review5 = Review.create(
  description: "Owner was friendly but the storage turned out to be already packed",
  rating: 2
  )

reviews = [review1, review2, review3, review4, review5]
