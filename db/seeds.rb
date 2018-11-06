# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


snoop = Artist.create(name:"Snoop Dog", bio: "Snoop Dog is the illest")
rap = Genre.create(name: "Rap")
humble = Song.create(name: "Humble", artist_id: 2, genre_id:1)




