# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Emptying the database..."
Message.destroy_all
User.destroy_all
Channel.destroy_all

puts "Generating channels..."
channels = Channel.create([{ name: 'general' }, { name: 'London' }, { name: 'Ruby' }, { name: 'Rails' }, { name: 'React / Redux' }])

puts "Generating users..."
users = User.create([{ email: 'a@a.a', password: 'aaaaaaaa' }, { email: 'b@b.b', password: 'bbbbbbbb'}, { email: 'c@c.c', password: 'cccccccc' }])

puts "Generating messages..."
100.times do
  Message.create([{channel: channels.sample, user: users.sample, content: Faker::GreekPhilosophers.quote}])
end
