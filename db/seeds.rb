# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(first_name: "Gus", last_name: "Mac", email: "gusmac@gmail.com", password: "testtest")
User.create(first_name: "Kevin", last_name: "Smekes", email: "kjsmekens@gmail.com", password: "testtest")
user1 = User.create(first_name: "Julian", last_name: "Leopold", email: "julian@rega-sense.ch", password: "testtest")

storage_space1 = StorageSpace.create(user: user1, description: "Pineapple Storage", title: "Big storage location", photo: "https://picsum.photos/500?image=45", capacity: "15k Pineapples", address_city: "Canggu", address_zip_code: "80351", address_country: "Indonesia")
5.times do
  StorageSpace.create(user: user1, description: "Test", title: "Big storage location", photo: "https://picsum.photos/500?image=60", capacity: "15 Elephants", address_city: "Canggu", address_zip_code: "80351", address_country: "Indonesia")
end

review1 = Review.create(description: "Loving Pineapple Storage. I store my pineapples there. Owner is always available on whatsapp so I can call him up whenever I want to see my pineapples.")
Booking.create(user: user1, storage_space: storage_space1, review: review1, start_date: "25.06.2018", end_date: "18.08.2018")
