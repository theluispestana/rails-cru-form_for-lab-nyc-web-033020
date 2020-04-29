# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Song.destroy_all
Artist.destroy_all
Genre.destroy_all

20.times do
  Artist.create(name: Faker::JapaneseMedia::DragonBall.character, bio: Faker::Movies::Lebowski.quote)
  Genre.create(name: Faker::Music.genre)
end

20.times do 
  Song.create(name: Faker::Artist.name, artist_id: Artist.all.sample.id, genre_id: Genre.all.sample.id)
end
