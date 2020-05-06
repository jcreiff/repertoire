# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


artists = []
15.times do
  a = Artist.create!(name: Faker::Music::RockBand.name)
  artists << a
end

statuses = ["Future", "In Progress", "Learned", "Memorized"]
keys = ["A", "B", "C", "D", "E", "F", "G"]

50.times do
  Song.create!(title: Faker::App.name, artist_id: artists.sample.id,
               status: statuses.sample, key: keys.sample, high_note: keys.sample,
               last_performed: Faker::Date.between(from: 1.year.ago, to: Date.today),
               capo: rand(1..6), lyrics: Faker::Lorem.paragraphs,
               video: Faker::LoremFlickr.image)
end
