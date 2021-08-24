# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'open-uri'
require 'json'

puts "Cleaning up database..."
Album.destroy_all
puts "Database cleaned"

url = "https://api.discogs.com/database/search?q=Nirvana&token=aCtVKDbDpMUcsVOklJkKEnvQAGCDyfemHoXbZZIh"

  i = 0
  puts "Importing albums from page #{i + 1}"
  albums = JSON.parse(open("#{url}?page=#{i + 1}").read)['results']
  p albums
  albums.each do |album|
    puts "Creating #{album['title']}"
    Album.create(
      album_name: album['title'],
      year: album['year'],
      artwork_url: album['cover_image'],
      record_label: album['label'],
      genre: album['genre']

    )

  end

puts "Albums created"
