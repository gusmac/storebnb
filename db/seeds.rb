# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.new(first_name: "Gus", last_name: "Mac", email: "gusmac@gmail.com", password: "testtest")
User.new(first_name: "Kevin", last_name: "Smekes", email: "kjsmekens@gmail.com", password: "testtest")
user1 = User.new(first_name: "Julian", last_name: "Leopold", email: "julian@rega-sense.ch", password: "testtest")

5.times do
  StorageSpace.create(user: user1, description: "Test", title: "Big storage location", photo: "https://picsum.photos/200/300", capactiy: "15 Elephants", address_city: "Canggu", address_zip_code: "80351", address_country: "Indonesia")
end
