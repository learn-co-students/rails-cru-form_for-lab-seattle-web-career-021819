# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

artist1 = Artist.create(name: "Beyonce", bio: "the queen")
artist2 = Artist.create(name: "Jay-Z", bio: "the queen's husband")
genre1 = Genre.create(name: "rap")
genre2 = Genre.create(name: "hip-hop")
song1 = Song.create(name: "Love on Top", artist_id: 1, genre_id: 2)
