# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'open-uri'
require 'json'


puts "creating sellers"
puts "creating artists"
puts "creating albums"
puts "cleaning up"
AssociatedAct.destroy_all
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
  artwork_url: 'https://upload.wikimedia.org/wikipedia/en/5/57/The_Rolling_Stones_-_Sticky_Fingers.png',
  producers: ['Jimmy Miller'],
  record_label: 'Rolling Stones Records',
  seller_id: Seller.all.sample.id,
  genre: ['rock'],
  artist_id: Artist.all.sample.id
  )

Album.create!(
  album_name: 'Exile on Main Street',
  year: '1972',
  artwork_url: 'https://upload.wikimedia.org/wikipedia/en/c/ca/ExileMainSt.jpg',
  producers: ['Jimmy Miller'],
  record_label: 'Rolling Stones Records',
  seller_id: Seller.all.sample.id,
  genre: ['rock'],
  artist_id: Artist.all.sample.id,
  tracks: ["Rocks Off", "Rip This Joint", "Shake Your Hips",  "Casino Boogie",  "Tumbling Dice",  "Sweet Virginia",
    "Torn and Frayed",  "Sweet Black Angel",  "Loving Cup",   "Happy", "Turd on the Run",   "Ventilator Blues",
    "I Just Want to See His Face",  "Let It Loose",   "All Down the Line",  "Stop Breaking Down",   "Shine a Light",  "Soul Survivor"]
  )

Album.create!(
  album_name: 'Goats Head Soup',
  year: '1973',
  artwork_url: 'https://upload.wikimedia.org/wikipedia/en/d/d8/The_Rolling_Stones_-_Goats_Head_Soup.jpg',
  producers: ['Jimmy Miller'],
  record_label: 'Rolling Stones Records',
  seller_id: Seller.all.sample.id,
  genre: ['rock'],
  artist_id: Artist.all.sample.id
  )

Album.create!(
  album_name: 'It\'s Only Rock \'n Roll',
  year: '1974',
  artwork_url: 'https://upload.wikimedia.org/wikipedia/en/5/5d/IORNRCover.jpg',
  producers: ["The Glimmer Twins"],
  record_label: 'Rolling Stones Records',
  seller_id: Seller.all.sample.id,
  genre: ['rock'],
  artist_id: Artist.all.sample.id
  )

Album.create!(
  album_name: 'Black and Blue',
  year: '1976',
  artwork_url: 'https://upload.wikimedia.org/wikipedia/en/5/5a/Blackblue.jpg',
  producers: ["The Glimmer Twins"],
  record_label: 'Rolling Stones Records',
  seller_id: Seller.all.sample.id,
  genre: ['rock'],
  artist_id: Artist.all.sample.id
  )

Album.create!(
  album_name: 'Some Girls',
  year: '1978',
  artwork_url: 'https://upload.wikimedia.org/wikipedia/en/6/6c/Some_Girls.png',
  producers: ["The Glimmer Twins"],
  record_label: 'Rolling Stones Records',
  seller_id: Seller.all.sample.id,
  genre: ['rock'],
  artist_id: Artist.all.sample.id
  )

Album.create!(
  album_name: 'Emotional Rescue',
  year: '1980',
  artwork_url: 'https://upload.wikimedia.org/wikipedia/en/3/3b/EmotionalRescue.jpg',
  producers: ["The Glimmer Twins"],
  record_label: 'Rolling Stones Records',
  seller_id: Seller.all.sample.id,
  genre: ['rock, disco'],
  artist_id: Artist.all.sample.id
  )

Album.create!(
  album_name: 'Tattoo You',
  year: '1981',
  artwork_url: 'https://upload.wikimedia.org/wikipedia/en/1/16/TattooYou81.jpg',
  producers: ["The Glimmer Twins"],
  record_label: 'Rolling Stones Records',
  seller_id: Seller.all.sample.id,
  genre: ['rock'],
  artist_id: Artist.all.sample.id
  )

Album.create!(
  album_name: 'Undercover',
  year: '1983',
  artwork_url: 'https://upload.wikimedia.org/wikipedia/en/3/3b/Undercoverstones.jpg',
  producers: ["The Glimmer Twins", "Chris Kimsey"],
  record_label: 'Rolling Stones Records',
  seller_id: Seller.all.sample.id,
  genre: ['rock'],
  artist_id: Artist.all.sample.id
  )

Album.create!(
  album_name: 'Dirty Work',
  year: '1986',
  artwork_url: 'https://upload.wikimedia.org/wikipedia/en/b/be/DirtyworkRS.jpg',
  producers: ["Steve Lilywhite", "The Glimmer Twins"],
  record_label: 'CBS Records',
  seller_id: Seller.all.sample.id,
  genre: ['rock'],
  artist_id: Artist.all.sample.id
  )

Album.create!(
  album_name: 'Steel Wheels',
  year: '1989',
  artwork_url: 'https://upload.wikimedia.org/wikipedia/en/2/24/SteelWheels89.jpg',
  producers: ["The Glimmer Twins", "Chris Kimsey"],
  record_label: 'CBS Records',
  seller_id: Seller.all.sample.id,
  genre: ['rock', 'hard rock'],
  artist_id: Artist.all.sample.id
  )

Album.create!(
  album_name: 'Voodoo Lounge',
  year: '1994',
  artwork_url: 'https://upload.wikimedia.org/wikipedia/en/8/84/VoodooLounge94.jpg',
  producers: ["The Glimmer Twins", "Don Was"],
  record_label: 'Virgin Records',
  seller_id: Seller.all.sample.id,
  genre: ['blues rock', 'hard rock', 'roots rock'],
  artist_id: Artist.all.sample.id
  )

Album.create!(
  album_name: 'Bridges to Babylon',
  year: '1997',
  artwork_url: 'https://upload.wikimedia.org/wikipedia/en/3/3d/BridgesBabylon97.jpg',
  producers: ["The Glimmer Twins", "Don Was"],
  record_label: 'Virgin Records',
  seller_id:Seller.all.sample.id,
  genre: ['blues rock', 'hard rock'],
  artist_id: Artist.all.sample.id
  )

Album.create!(
  album_name: 'A Bigger Bang',
  year: '2005',
  artwork_url: 'https://upload.wikimedia.org/wikipedia/en/b/b3/A_bigger_band_album_cover_%28Wikipedia%29.jpg',
  producers: ["The Glimmer Twins", "Don Was"],
  record_label: 'Virgin Records',
  seller_id: Seller.all.sample.id,
  genre: ['rock'],
  artist_id: Artist.all.sample.id
  )

Album.create!(
  album_name: 'Blue & Lonesome',
  year: '2016',
  artwork_url: 'https://upload.wikimedia.org/wikipedia/en/1/1f/The_Rolling_Stones_-_Blue_%26_Lonesome.png',
  producers: ["The Glimmer Twins"],
  record_label: 'Polydor',
  seller_id: Seller.all.sample.id,
  genre: ['electric blues', 'blues rock', 'Chicago blues'],
  artist_id: Artist.all.sample.id,
  tracks: ["Just Your Fool",  "Commit a Crime", "Blue and Lonesome",  "All of Your Love",   "I Gotta Go",
    "Everybody Knows About My Good Thing", "Ride 'Em on Down",  "Hate to See You Go",   "Hoo Doo Blues",
    "Little Rain",  "Just Like I Treat You",  "I Can't Quit You Baby"]
  )


Artist.create!(
  artist_name: 'Amy Winehouse',
  band_members: ["Amy Winehouse"]
  )


Album.create!(
  album_name: 'Back to Black',
  year: '2006',
  artwork_url: 'https://upload.wikimedia.org/wikipedia/en/6/67/Amy_Winehouse_-_Back_to_Black_%28album%29.png',
  producers: ["Mark Ronson", "Salaam Remi"],
  record_label: 'Island',
  seller_id: Seller.all.sample.id,
  genre: ['Soul', 'rhythm and blues', 'contemporary',  'R&B', 'neo soul'],
  artist_id: Artist.last.id,
  tracks: ["Rehab", "You Know I'm No Good", "Me & Mr Jones", "Just Friends",  "Back to Black", "Love Is a Losing Game", "Tears Dry on Their Own", "Wake Up Alone",  "Some Unholy War",  "He Can Only Hold Her", "Addicted"]
  )
AssociatedAct.create!(
  connection_description: "Amy Winehouse collaborated with the Rolling Stones onstage at the Isle of Wight festival in 2007 to sing 'Ain’t Too Proud To Beg'.",
  artist_id: Artist.last.id,
  album_id: Album.last.id
  )

Artist.create!(
  artist_name: 'Marvin Gaye',
  band_members: ["Marvin Gaye"]
  )


Album.create!(
  album_name: 'In the Groove',
  year: '1968',
  artwork_url: 'https://upload.wikimedia.org/wikipedia/en/8/80/Marvin-gaye-in-the-groove.jpg',
  producers: ["Norman Whitfield", "Ivy Jo Hunter", "Frank Wilson"],
  record_label: 'Tamla Motown',
  seller_id: Seller.all.sample.id,
  genre: ['Soul'],
  artist_id: Artist.last.id,
  tracks: ["You", "Tear It on Down", "Chained", "I Heard It Through the Grapevine", "At Last (I Found a Love)", "Some Kind of Wonderful",
    "Loving You Is Sweeter Than Ever",  "Change What You Can", "It's Love I Need", "Every Now And Then", "You're What's Happening (In The World Today)",
    "There Goes My Baby"]
  )

AssociatedAct.create!(
  connection_description: "Amy Winehouse covered the Marvin Gaye song 'I heard it through the grapevine' with Jools Holland and Paul Weller on  Jools Holland's New Year’s Hootenanny 2006",
  artist_id: Artist.last.id,
  album_id: Album.last.id
  )

Artist.create!(
  artist_name: 'The Beatles',
  band_members: ["John Lennon", "Paul McCartney", "Ringo Starr", "George Harrison"]
  )

Album.create!(
  album_name: "Sgt. Pepper's Lonely Hearts Club Band",
  year: '1967',
  artwork_url: 'https://upload.wikimedia.org/wikipedia/en/5/50/Sgt._Pepper%27s_Lonely_Hearts_Club_Band.jpg',
  producers: [" George Martin"],
  record_label: 'Parlophone',
  seller_id: Seller.all.sample.id,
  genre: ['Rock', 'pop', 'psychedelia', 'art rock'],
  artist_id: Artist.last.id,
  tracks: [ "Sgt. Pepper's Lonely Hearts Club Band",  "With a Little Help from My Friends",   "Lucy in the Sky with Diamonds", "Getting Better", "Fixing a Hole", "She's Leaving Home",
    "Being for the Benefit of Mr. Kite!", "Within You Without You", "When I'm Sixty-Four", "Lovely Rita",   "Good Morning Good Morning",  "Sgt. Pepper's Lonely Hearts Club Band (Reprise)",  "A Day in the Life"]
  )

AssociatedAct.create!(
  connection_description: "Marvin Gaye became one of the many acts to record a version of 'Yesterday' by The Beatles in 1970.",
  artist_id: Artist.last.id,
  album_id: Album.last.id
  )

Artist.create!(
  artist_name: 'Elton John',
  band_members: ["Elton John"]
  )

Album.create!(
  album_name: "Goodbye Yellow Brick Road",
  year: '1973',
  artwork_url: 'https://upload.wikimedia.org/wikipedia/en/8/86/Elton_John_-_Goodbye_Yellow_Brick_Road.jpg',
  producers: ["Gus Dudgeon"],
  record_label: ' DJM ',
  seller_id: Seller.all.sample.id,
  genre: ['Rock', 'pop'],
  artist_id: Artist.last.id,
  tracks: [ "Funeral for a Friend/Love Lies Bleeding",  "Candle in the Wind", "Bennie and the Jets",  "Goodbye Yellow Brick Road",
    "This Song Has No Title", "Grey Seal", "Jamaica Jerk-Off", "I've Seen That Movie Too", "Sweet Painted Lady",  "The Ballad of Danny Bailey (1909–34)",
    "Dirty Little Girl", "All the Girls Love Alice", "Your Sister Can't Twist (But She Can Rock 'n Roll)", "Saturday Night's Alright for Fighting",
    "Roy Rogers",   "Social Disease",   "Harmony"]
  )

AssociatedAct.create!(
  connection_description: "Beatles producer George Martin also produced Elton John's hit 'Candle in the wind 1997'",
  artist_id: Artist.last.id,
  album_id: Album.last.id
  )

Artist.create!(
  artist_name: 'The Who',
  band_members: ["Roger Daltrey", "Pete Townshend", "John Entwistle", "Keith Moon", "Doug Sandom", "Kenney Jones"]
  )

Album.create!(
  album_name: "Quadrophenia",
  year: '1973',
  artwork_url: 'https://upload.wikimedia.org/wikipedia/en/8/8a/Quadrophenia_%28album%29.jpg',
  producers: ["Kit Lambert", "Chris Stamp", "Pete Kameron"],
  record_label: 'MCA',
  seller_id: Seller.all.sample.id,
  genre: ['Rock', 'Hard rock'],
  artist_id: Artist.last.id,
  tracks: [ "I Am the Sea",   "The Real Me",  "Quadrophenia", "Cut My Hair",  "The Punk and the Godfather",   "I'm One",
    "The Dirty Jobs", "Helpless Dancer",  "Is It in My Head?",  "I've Had Enough", "5:15", "Sea and Sand",  "Drowned",
    "Bell Boy" ,  "Doctor Jimmy", "The Rock", "Love, Reign o'er Me"]
  )

AssociatedAct.create!(
  connection_description: "Elton John performed 'Pinball Wizard' in the 1975 film adaption of The Who's concept album 'Tommy'",
  artist_id: Artist.last.id,
  album_id: Album.last.id
  )

Artist.create!(
  artist_name: 'Blur',
  band_members: ["Damon Albarn", "Graham Coxon", "Alex James", "Dave Rowntree"]
  )


Album.create!(
  album_name: "Parklife",
  year: '1994',
  artwork_url: 'https://upload.wikimedia.org/wikipedia/en/7/7d/BlurParklife.jpg',
  producers: ["Stephen Street", "Stephen Hague", "John Smith", "Blur"],
  record_label: 'Food',
  seller_id: Seller.all.sample.id,
  genre: ['Britpop'],
  artist_id: Artist.last.id,
  tracks: ["Girls & Boys", "Tracy Jacks", "End of a Century", "Parklife (featuring Phil Daniels)",  "Bank Holiday",   "Badhead",
    "The Debt Collector", "Far Out", "To the End",  "London Loves",   "Trouble in the Message Centre", "Clover Over Dover",
    "Magic America",  "Jubilee", "This Is a Low", "Lot 105"]
  )

AssociatedAct.create!(
  connection_description: "Phil Daniels who performed the lead role in the film adaption of The Who's album 'Quadrophenia' also performs the lead vocals on the 1994 Blur hit 'Parklife'",
  artist_id: Artist.last.id,
  album_id: Album.last.id
  )

Artist.create!(
  artist_name: 'Gorrilaz',
  band_members: ["Damon Albarn", "Jamie Hewlett"]
  )

Album.create!(
  album_name: "Demon Days",
  year: '1994',
  artwork_url: 'https://upload.wikimedia.org/wikipedia/en/d/df/Gorillaz_Demon_Days.PNG',
  producers: ["Gorillaz", "Danger Mouse", "Jason Cox", "James Dring"],
  record_label: 'Parlaphone',
  seller_id: Seller.all.sample.id,
  genre: ['Alternative rock', 'hip hop', 'trip hop', 'art rock', 'pop'],
  artist_id: Artist.last.id,
  tracks: [ "Intro", "Last Living Souls", "Kids with Guns", "O Green World", "Dirty Harry" ,  "Feel Good Inc.",   "El Mañana",
    "Every Planet We Reach Is Dead", "November Has Come",   "All Alone", "White Light",   "Dare", "Fire Coming out of the Monkey's Head",
    "Don't Get Lost in Heaven", "Demon Days"]
  )

AssociatedAct.create!(
  connection_description: "Blur vocalist Damon Alburn is also the founder and vocalist / multi instrumentalist of Gorrilaz",
  artist_id: Artist.last.id,
  album_id: Album.last.id
  )

Artist.create!(
  artist_name: 'Beck',
  band_members: ["Beck Hanson"]
  )

Album.create!(
  album_name: "Odelay",
  year: '1996',
  artwork_url: 'https://upload.wikimedia.org/wikipedia/en/f/f4/Odelay.jpg',
  producers: ["Beck Hansen", "The Dust Brothers", "Mario Caldato Jr", "Brian Paulson", "Tom Rothrock", "Rob Schnapf"],
  record_label: 'DGC',
  seller_id: Seller.all.sample.id,
  genre: ['Alternative rock', 'folk rock', 'garage rock'],
  artist_id: Artist.last.id,
  tracks: [ "Devils Haircut", "Hotwax",   "Lord Only Knows", "The New Pollution",   "Derelict", "Novacane", "Jack-Ass",
    "Where It's At",  "Minus", "Sissyneck",   "Readymade", "High 5 (Rock the Catskills)",   "Ramshackle"]
  )

AssociatedAct.create!(
  connection_description: "In 2020, Beck collaborated with virtual band Gorillaz to create the song 'The Valley of the Pagans' which appears on Song Machine, Season One: Strange Timez.",
  artist_id: Artist.last.id,
  album_id: Album.last.id
  )

Artist.create!(
  artist_name: 'The Velvet Underground',
  band_members: ["Lou Reed", "Sterling Morrison", "John Cale", "Maureen Tucker", "Nico", "Doug Yule", "Walter Powers", "Willie Alexander"]
  )

Album.create!(
  album_name: "The Velvet Underground & Nico",
  year: '1967',
  artwork_url: 'https://upload.wikimedia.org/wikipedia/en/0/0c/Velvet_Underground_and_Nico.jpg',
  producers: ["Andy Warhol", "Tom Wilson"],
  record_label: 'Verve',
  seller_id: Seller.all.sample.id,
  genre: ['Art rock', 'experimental rock', 'proto-punk', 'psychedelic', 'rock', 'avant-pop'],
  artist_id: Artist.last.id,
  tracks: [ "Sunday Morning", "I'm Waiting for the Man",  "Femme Fatale",   "Venus in Furs",  "Run Run Run",  "All Tomorrow's Parties",
    "Heroin",   "There She Goes Again",   "I'll Be Your Mirror",  "The Black Angel's Death Song",  "European Son" ]
  )

AssociatedAct.create!(
  connection_description: "On June 20, 2009, Beck announced that he was starting an experiment called Record Club, in which he and other musicians would record cover versions of entire albums in one day.
  The first album covered by Beck's Record Club was The Velvet Underground & Nico.",
  artist_id: Artist.last.id,
  album_id: Album.last.id
  )
puts "Albums created"
puts "done"

Artist.create!(
  artist_name: 'Lou Reed',
  band_members: ["Lou Reed"]
  )

Album.create!(
  album_name: "Transformer",
  year: '1972',
  artwork_url: 'https://upload.wikimedia.org/wikipedia/en/f/f1/Loureedtransformer.jpeg',
  producers: ["David Bowie", "Mick Ronson"],
  record_label: 'RCA',
  seller_id: Seller.all.sample.id,
  genre: [ 'Glam rock', 'pop', 'rock','avant-pop'],
  artist_id: Artist.last.id,
  tracks: [ "Vicious", "Andy's Chest" , "Perfect Day", "Hangin' 'Round", "Walk on the Wild Side", "Make Up",
  "Satellite of Love", "Wagon Wheel", "New York Telephone Conversation", "I'm So Free", "Goodnight Ladies"  ]
  )

AssociatedAct.create!(
  connection_description: "Lou Reed was a founder member and chief songwriter for the Velvet Underground in the 1960's.",
  artist_id: Artist.last.id,
  album_id: Album.last.id
  )

Artist.create!(
  artist_name: 'David Bowie',
  band_members: ["David Bowie"]
  )

Album.create!(
  album_name: "Aladdin Sane",
  year: '1973',
  artwork_url: 'https://upload.wikimedia.org/wikipedia/en/6/6e/DavisBowieAladdinSane.jpg',
  producers: ["David Bowie", "Ken Scott"],
  record_label: 'RCA',
  seller_id: Seller.all.sample.id,
  genre: [ 'Glam rock', 'hard rock'],
  artist_id: Artist.last.id,
  tracks: ["Watch That Man", "Aladdin Sane (1913–1938–197?)", "Drive-In Saturday", "Panic in Detroit", "Cracked Actor", "Time",
  "The Prettiest Star", "Let's Spend the Night Together", "The Jean Genie", "Lady Grinning Soul"]
  )

AssociatedAct.create!(
  connection_description: "David Bowie produced Lou Reed's 1972 album Transformer.",
  artist_id: Artist.last.id,
  album_id: Album.last.id
  )

Artist.create!(
  artist_name: 'Queen',
  band_members: ["David Bowie"]
  )

Album.create!(
  album_name: "Hot Space",
  year: '1982',
  artwork_url: 'https://upload.wikimedia.org/wikipedia/en/3/3c/Queen_Hot_Space.png',
  producers: ["David Bowie", "Queen", "Arif Mardin", "Reinhold Mack"],
  record_label: 'EMI',
  seller_id: Seller.all.sample.id,
  genre: [ 'Pop', 'Rock', 'Glam rock', 'hard rock'],
  artist_id: Artist.last.id,
  tracks: [ "Staying Power", "Dancer",  "Back Chat",  "Body Language",  "Action This Day",  "Put Out the Fire", "Life Is Real (Song for Lennon)",
    "Calling All Girls",  "Las Palabras de Amor (The Words of Love)", "Cool Cat",   "Under Pressure (with David Bowie)"]
  )

AssociatedAct.create!(
  connection_description: "David Bowie sang with Queen on the 1981 single 'Under Pressure'. He also co-produced their album 'Hot Space'.",
  artist_id: Artist.last.id,
  album_id: Album.last.id
  )
puts "Albums created"
puts "done"



# url = "https://api.discogs.com/database/search?q=Nirvana&token=aCtVKDbDpMUcsVOklJkKEnvQAGCDyfemHoXbZZIh"

#   i = 0
#   puts "Importing albums from page #{i + 1}"
#   albums = JSON.parse(open("#{url}?page=#{i + 1}").read)['results']
#   p albums
#   albums.each do |album|
#     puts "Creating #{album['title']}"
#     Album.create(
#       album_name: album['title'],
#       year: album['year'],
#       artwork_url: album['cover_image'],
#       record_label: album['label'],
#       genre: album['genre']

#     )

  # end



