# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create!(
    email: 'test@test.com',
    password: '123456',
    password_confirmation: '123456'
)

Category.create!(name: 'Play Station', priority: "1")
Category.create!(name: 'X box', priority: "2")
Category.create!(name: 'Nintendo Switch', priority: "3")
Category.create!(name: 'Gamer PC', priority: "4")


3.times do |i|
ps = Article.new(
    title: "Play Station article #{i}",
    body: "Lorem Ipsum is simply dummy 
    text of the printing and typesetting 
    industry. Lorem Ipsum has been the industry's 
    standard dummy text ever since the 1500s, 
    when an unknown printer took a galley of 
    type and scrambled it to make a type specimen book.",
    category: Category.find(1),
    user: User.first
)
xbox = Article.new(
    title: "Xbox article #{i}",
    body: "Lorem Ipsum is simply dummy 
    text of the printing and typesetting 
    industry. Lorem Ipsum has been the industry's 
    standard dummy text ever since the 1500s, 
    when an unknown printer took a galley of 
    type and scrambled it to make a type specimen book.",
    category: Category.find(2),
    user: User.first
)
nintendo = Article.new(
    title: "Nintendo article #{i}",
    body: "Lorem Ipsum is simply dummy 
    text of the printing and typesetting 
    industry. Lorem Ipsum has been the industry's 
    standard dummy text ever since the 1500s, 
    when an unknown printer took a galley of 
    type and scrambled it to make a type specimen book.",
    category: Category.find(3),
    user: User.first
)
gamer = Article.new(
    title: "Gamer PC article #{i}",
    body: "Lorem Ipsum is simply dummy 
    text of the printing and typesetting 
    industry. Lorem Ipsum has been the industry's 
    standard dummy text ever since the 1500s, 
    when an unknown printer took a galley of 
    type and scrambled it to make a type specimen book.",
    category: Category.find(4),
    user: User.first
)

ps.image.attach(io: open('https://picsum.photos/1920/1080'), filename: "#{i}_ps_image.jpg")
xbox.image.attach(io: open('https://picsum.photos/1920/1080'), filename: "#{i}_xbox_image.jpg")
nintendo.image.attach(io: open('https://picsum.photos/1920/1080'), filename: "#{i}_nintendo_image.jpg")
gamer.image.attach(io: open('https://picsum.photos/1920/1080'), filename: "#{i}_gamer_image.jpg")

ps.save
xbox.save
nintendo.save
gamer.save

end