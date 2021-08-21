# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


puts "creating sellers"
puts "creating artists"
puts "creating albums"
puts "cleaning up"
Album.destroy_all
Seller.destroy_all
Artist.destroy_all
puts "Database cleaned"

Seller.create!(
  seller_name: 'Sounds of the Universe',
  location: '7 Broadwick Street, London, W1F 0DA',
  rating: 4,
  seller_url: 'https://soundsoftheuniverse.com/')

Seller.create!(
  seller_name: 'Reckless Records',
  location: '30 Berwick Street, London, W1F 8RH',
  rating: 5,
  seller_url: 'https://reckless.co.uk/')

Seller.create!(
  seller_name: 'Sister Ray',
  location: '75 Berwick Street, Soho, London, W1F 8RP',
  rating: 3,
  seller_url: 'https://sisterray.co.uk/')

Seller.create!(
  seller_name: 'Phonica Records',
  location: '51 Poland Street, London, W1F 7LZ',
  rating: 5,
  seller_url: 'https://www.phonicarecords.com/')

Seller.create!(
  seller_name: 'Flashback Records',
  location: '50 Essex Road, London, N1 8LR',
  rating: 4,
  seller_url: 'https://www.flashback.co.uk/')

Seller.create!(
  seller_name: 'Rough Trade East',
  location: 'Draywalk, 91 Brick Lane, London, E1 6QL',
  rating: 5,
  seller_url: 'https://www.roughtrade.com/')

Seller.create!(
  seller_name: 'Let it Roll Records',
  location: '121 Kentish Town Road, London, NW1 8PB',
  rating: '(3..5).sample',
  seller_url: 'https://letitrollrecords.com/')

Seller.create!(
  seller_name: 'World of Echo',
  location: '128 Columbia Road, London, E2 7RG',
  rating: 4,
  seller_url: 'https://worldofechomusic.com/')

Seller.create!(
  seller_name: 'Peckham Soul',
  location: 'Bussey Building, 133 Rye Lane, London, SE15 4ST',
  rating: 3,
  seller_url: 'https://www.peckhamsoul.co.uk/#fwdmspPlayer0?catid=0&trackid=0')

Seller.create!(
  seller_name: 'Rough Trade West',
  location: '130 Talbot Road, London, W11 1JA',
  rating: 4,
  seller_url: 'https://www.roughtrade.com/')

Artist.create!(
  artist_name: 'The Rolling Stones',
  band_members: ["Mick Jagger", "Keith Richards", "Charlie Watts", "Ronnie Wood", "Brian Jones", "Ian Stewart", "Bill Wyman", "Mick Taylor"]
  )

Album.create!(
  album_name: 'Sticky Fingers',
  year: '1971',
  artwork_url: 'https://en.wikipedia.org/wiki/Sticky_Fingers#/media/File:The_Rolling_Stones_-_Sticky_Fingers.png',
  producers: ['Jimmy Miller'],
  record_label: 'Rolling Stones Records',
  seller_id: Seller.all.sample.id,
  genre: ['rock'],
  artist_id: Artist.all.sample.id
  )

Album.create!(
  album_name: 'Exile on Main Street',
  year: '1972',
  artwork_url: 'https://en.wikipedia.org/wiki/Exile_on_Main_St.#/media/File:ExileMainSt.jpg',
  producers: ['Jimmy Miller'],
  record_label: 'Rolling Stones Records',
  seller_id: Seller.all.sample.id,
  genre: ['rock'],
  artist_id: Artist.all.sample.id
  )

Album.create!(
  album_name: 'Goats Head Soup',
  year: '1973',
  artwork_url: 'https://en.wikipedia.org/wiki/Goats_Head_Soup#/media/File:The_Rolling_Stones_-_Goats_Head_Soup.jpg',
  producers: ['Jimmy Miller'],
  record_label: 'Rolling Stones Records',
  seller_id: Seller.all.sample.id,
  genre: ['rock'],
  artist_id: Artist.all.sample.id
  )

Album.create!(
  album_name: 'It\'s Only Rock \'n Roll',
  year: '1974',
  artwork_url: 'https://en.wikipedia.org/wiki/It%27s_Only_Rock_%27n_Roll#/media/File:IORNRCover.jpg',
  producers: ["The Glimmer Twins"],
  record_label: 'Rolling Stones Records',
  seller_id: Seller.all.sample.id,
  genre: ['rock'],
  artist_id: Artist.all.sample.id
  )

Album.create!(
  album_name: 'Black and Blue',
  year: '1976',
  artwork_url: 'https://en.wikipedia.org/wiki/Black_and_Blue#/media/File:Blackblue.jpg',
  producers: ["The Glimmer Twins"],
  record_label: 'Rolling Stones Records',
  seller_id: Seller.all.sample.id,
  genre: ['rock'],
  artist_id: Artist.all.sample.id
  )

Album.create!(
  album_name: 'Some Girls',
  year: '1978',
  artwork_url: 'https://en.wikipedia.org/wiki/Some_Girls#/media/File:Some_Girls.png',
  producers: ["The Glimmer Twins"],
  record_label: 'Rolling Stones Records',
  seller_id: Seller.all.sample.id,
  genre: ['rock'],
  artist_id: Artist.all.sample.id
  )

Album.create!(
  album_name: 'Emotional Rescue',
  year: '1980',
  artwork_url: 'https://en.wikipedia.org/wiki/Emotional_Rescue#/media/File:EmotionalRescue.jpg',
  producers: ["The Glimmer Twins"],
  record_label: 'Rolling Stones Records',
  seller_id: Seller.all.sample.id,
  genre: ['rock, disco'],
  artist_id: Artist.all.sample.id
  )

Album.create!(
  album_name: 'Tattoo You',
  year: '1981',
  artwork_url: 'https://en.wikipedia.org/wiki/Tattoo_You#/media/File:TattooYou81.jpg',
  producers: ["The Glimmer Twins"],
  record_label: 'Rolling Stones Records',
  seller_id: Seller.all.sample.id,
  genre: ['rock'],
  artist_id: Artist.all.sample.id
  )

Album.create!(
  album_name: 'Undercover',
  year: '1983',
  artwork_url: 'https://en.wikipedia.org/wiki/Undercover_(Rolling_Stones_album)#/media/File:Undercoverstones.jpg',
  producers: ["The Glimmer Twins", "Chris Kimsey"],
  record_label: 'Rolling Stones Records',
  seller_id: Seller.all.sample.id,
  genre: ['rock'],
  artist_id: Artist.all.sample.id
  )

Album.create!(
  album_name: 'Dirty Work',
  year: '1986',
  artwork_url: 'https://en.wikipedia.org/wiki/Dirty_Work_(Rolling_Stones_album)#/media/File:DirtyworkRS.jpg',
  producers: ["Steve Lilywhite", "The Glimmer Twins"],
  record_label: 'CBS Records',
  seller_id: Seller.all.sample.id,
  genre: ['rock'],
  artist_id: Artist.all.sample.id
  )

Album.create!(
  album_name: 'Steel Wheels',
  year: '1989',
  artwork_url: 'https://en.wikipedia.org/wiki/Steel_Wheels#/media/File:SteelWheels89.jpg',
  producers: ["The Glimmer Twins", "Chris Kimsey"],
  record_label: 'CBS Records',
  seller_id: Seller.all.sample.id,
  genre: ['rock', 'hard rock'],
  artist_id: Artist.all.sample.id
  )

Album.create!(
  album_name: 'Voodoo Lounge',
  year: '1994',
  artwork_url: 'https://en.wikipedia.org/wiki/Voodoo_Lounge#/media/File:VoodooLounge94.jpg',
  producers: ["The Glimmer Twins", "Don Was"],
  record_label: 'Virgin Records',
  seller_id: Seller.all.sample.id,
  genre: ['blues rock', 'hard rock', 'roots rock'],
  artist_id: Artist.all.sample.id
  )

Album.create!(
  album_name: 'Bridges to Babylon',
  year: '1997',
  artwork_url: 'https://en.wikipedia.org/wiki/Bridges_to_Babylon#/media/File:BridgesBabylon97.jpg',
  producers: ["The Glimmer Twins", "Don Was"],
  record_label: 'Virgin Records',
  seller_id:Seller.all.sample.id,
  genre: ['blues rock', 'hard rock'],
  artist_id: Artist.all.sample.id
  )

Album.create!(
  album_name: 'A Bigger Bang',
  year: '2005',
  artwork_url: 'https://en.wikipedia.org/wiki/A_Bigger_Bang#/media/File:A_bigger_band_album_cover_(Wikipedia).jpg',
  producers: ["The Glimmer Twins", "Don Was"],
  record_label: 'Virgin Records',
  seller_id: Seller.all.sample.id,
  genre: ['rock'],
  artist_id: Artist.all.sample.id
  )

Album.create!(
  album_name: 'Blue & Lonesome',
  year: '2016',
  artwork_url: 'https://en.wikipedia.org/wiki/Blue_%26_Lonesome_(Rolling_Stones_album)#/media/File:The_Rolling_Stones_-_Blue_&_Lonesome.png',
  producers: ["The Glimmer Twins"],
  record_label: 'Polydor',
  seller_id: Seller.all.sample.id,
  genre: ['electric blues', 'blues rock', 'Chicago blues'],
  artist_id: Artist.all.sample.id
  )

puts "done"
