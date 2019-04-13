# # This file should contain all the record creation needed to seed the database with its default values.
# # The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
# #
# # Examples:
# #
# #   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
# #   Character.create(name: 'Luke', movie: movies.first)
# # This file should contain all the record creation needed to seed the database with its default values.
# # The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
# #
# # Examples:
# #
# #   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
# #   Character.create(name: 'Luke', movie: movies.first)
(1..15).each do |i|
  User.create(name: "User#{i}", email: "user#{i}@example.com",
    password: "password", password_confirmation: "password")
end
(1..9).each do 
  Book.create(description: "GOOD EXPERIENCE")
end
categories = ["IT", "Sport", "Novel"]
its = ["Rails", "Git", "MySQL"]
sports = ["Badminton", "Volleyball", "Football"]
novels = ["Don Quixote", "Harry Potter", "God Father"]

categories.each do |category|
  Category.create(name: category)
end

its.each do |it|
  Book.create(category_id: 1, title: it,
    author: "Author",number_of_pages: 100, 
    published_date: DateTime.now.change(year: 2018)
  )
end

sports.each do |sport|
  Book.create(category_id: 2, title: sport,
    author: "Author",number_of_pages: 200, 
    published_date: DateTime.now.change(year: 2015)
  )
end

novels.each do |novel|
  Book.create(category_id: 3, title: novel,
    author: "Author",number_of_pages: 300, 
    published_date: DateTime.now.change(year: 2017)
  )
end
<<<<<<< HEAD
# users = User.all
# user  = users.first
# following = users[2..15]
# followers = users[3..12]
# following.each { |followed| user.follow(followed) }
# followers.each { |follower| follower.follow(user) }
=======
>>>>>>> 595d84eed681661bb7c6c06fb0f381c3a50e493b
