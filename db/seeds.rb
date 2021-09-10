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
AssociatedAct.destroy_all
Album.destroy_all
Seller.destroy_all
Artist.destroy_all
puts "Database cleaned"


Seller.create!(
  seller_name: 'Sister Ray',
  location: '75 Berwick Street, Soho, London, W1F 8RP',
  rating: 5,
  seller_url: 'https://sisterray.co.uk/',
  seller_logo: 'https://cdn.shopify.com/s/files/1/0096/1884/9839/files/Sister-Ray-Records-Logo-white2_200x@2x.png?v=1564139863')

Seller.create!(
  seller_name: 'Phonica Records',
  location: '51 Poland Street, London, W1F 7LZ',
  rating: 5,
  seller_url: 'https://www.phonicarecords.com/',
  seller_logo: 'https://d2rkyy1xo9fsdq.cloudfront.net/phonica-new-logo-white2.png')

Seller.create!(
  seller_name: 'Flashback Records',
  location: '50 Essex Road, London, N1 8LR',
  rating: 4,
  seller_url: 'https://www.flashback.co.uk/',
  seller_logo: 'https://www.flashback.co.uk/templates/untitled/images/designer/9d1501262758df2b5a3810689868caeb_logo120.jpg')

Seller.create!(
  seller_name: 'Rough Trade East',
  location: 'Draywalk, 91 Brick Lane, London, E1 6QL',
  rating: 5,
  seller_url: 'https://www.roughtrade.com/',
  seller_logo: 'https://www.roughtrade.com/assets/logo-4e4504367ced1a66e8b5bb7281e66234fdeaeb3f973516ccfa7704e7fd6c2a58.png')

Seller.create!(
  seller_name: 'Let it Roll Records',
  location: '121 Kentish Town Road, London, NW1 8PB',
  rating: '(3..5).sample',
  seller_url: 'https://letitrollrecords.com/',
  seller_logo: 'https://cdn.shopify.com/s/files/1/0085/5828/0762/files/Let-it-Roll-Records-red-2_145x@2x.png?v=1529436675')

Seller.create!(
  seller_name: 'World of Echo',
  location: '128 Columbia Road, London, E2 7RG',
  rating: 4,
  seller_url: 'https://worldofechomusic.com/',
  seller_logo: 'https://cdn.shopify.com/s/files/1/0051/1380/6921/files/WOE_LOGO_FINAL_360x-trans-white_500x.png?v=1569845297')

Seller.create!(
  seller_name: 'Peckham Soul',
  location: 'Bussey Building, 133 Rye Lane, London, SE15 4ST',
  rating: 3,
  seller_url: 'https://www.peckhamsoul.co.uk/#fwdmspPlayer0?catid=0&trackid=0',
  seller_logo: 'https://peckhamsoul.co.uk/wp-content/uploads/2020/06/logo-darkx200.png')

Seller.create!(
  seller_name: 'Rough Trade West',
  location: '130 Talbot Road, London, W11 1JA',
  rating: 4,
  seller_url: 'https://www.roughtrade.com/',
  seller_logo: 'https://www.roughtrade.com/assets/logo-4e4504367ced1a66e8b5bb7281e66234fdeaeb3f973516ccfa7704e7fd6c2a58.png')

Seller.create!(
  seller_name: 'Stranger Than Paradise',
  location: 'Mare Street Market, 117 Mare Street, London, E8 4RT',
  rating: 3,
  seller_url: 'https://www.strangerthanparadiserecords.com/',
  seller_logo: 'https://cdn.webshopapp.com/shops/252051/themes/135743/assets/logo.png?20210719094322')

Seller.create!(
  seller_name: 'Lion Coffee & Records',
  location: '118a Lower Clapton Road, London , E5 0QR',
  rating: 3,
  seller_url: 'https://lioncoffeerecords.com/',
  seller_logo: 'https://cdn.shopify.com/s/files/1/2317/9551/files/lion_180x.jpg?v=1576757977')

Seller.create!(
  seller_name: 'Sleeve Notes Records',
  location: '16 Richmond Hill, Richmond Upon Thames, TW10 6QX',
  rating: 4,
  seller_url: 'https://sleevenotesrecords.com/',
  seller_logo: 'https://cdn.shopify.com/s/files/1/0086/8050/5429/files/SNR_WHITE_SIDE_x65@2x.jpg?v=1559845747')

Seller.create!(
  seller_name: 'Honest Jon\'s',
  location: '115 Lower Stable Street, London, N1C 4DR',
  rating: 5,
  seller_url: 'https://honestjons.com/shop/latest_100_arrivals',
  seller_logo: 'https://honestjons.com/img/hjons_colour_logo.png')


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
  connection_description: "In 2009, Beck started an experiment called Record Club in which he and other musicians would record cover versions of entire albums in one day.
  The first album covered by Record Club was The Velvet Underground & Nico.",
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

Album.create!(
  album_name: "Earthling",
  year: '1997',
  artwork_url: 'https://upload.wikimedia.org/wikipedia/en/b/bf/Earthling_%28album%29.jpg',
  producers: ["David Bowie", "Reeves Gabrels", "Mark Plati"],
  record_label: 'Arista',
  seller_id: Seller.all.sample.id,
  genre: [ 'Industrial rock', 'electronica', 'drum and bass', 'jungle', 'techno'],
  artist_id: Artist.last.id,
  tracks: ["Little Wonder", "Looking for Satellites", "Battle for Britain (The Letter)",
"Seven Years in Tibet", "Dead Man Walking", "Telling Lies", "The Last Thing You Should Do",
"I'm Afraid of Americans", "Law (Earthlings on Fire)"]
  )

# AssociatedAct.create!(
#   connection_description: "David Bowie produced Lou Reed's 1972 album Transformer.",
#   artist_id: Artist.last.id,
#   album_id: Album.last.id
#   )

Artist.create!(
  artist_name: 'Queen',
  band_members: ["Freddie Mercury", "Brian May", "John Deacon", "Roger Taylor"]
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

Album.create!(
  album_name: "A night at the opera",
  year: '1975',
  artwork_url: 'https://upload.wikimedia.org/wikipedia/en/4/4d/Queen_A_Night_At_The_Opera.png',
  producers: ["Roy Thomas Baker", "Queen"],
  record_label: 'EMI',
  seller_id: Seller.all.sample.id,
  genre: [ 'Progressive rock', 'pop', 'heavy metal', 'hard rock'],
  artist_id: Artist.last.id,
  tracks: ["Death on Two Legs (Dedicated to...)", "Lazing on a Sunday Afternoon",
"I'm in Love with My Car", "You're My Best Friend", "'39", "Sweet Lady", "Seaside Rendezvous",
"The Prophet's Song", "Love of My Life", "Good Company", "Bohemian Rhapsody", "God Save the Queen"]
  )

# AssociatedAct.create!(
#   connection_description: "David Bowie sang with Queen on the 1981 single 'Under Pressure'. He also co-produced their album 'Hot Space'.",
#   artist_id: Artist.last.id,
#   album_id: Album.last.id
#   )


Artist.create!(
  artist_name: 'Various',
  band_members: ["Various"]
  )

Album.create!(
  album_name: "Trainspotting",
  year: '1996',
  artwork_url: 'https://upload.wikimedia.org/wikipedia/en/7/77/Trainspottingsoundtrack.jpg',
  producers: ["Various"],
  record_label: 'Various',
  seller_id: Seller.all.sample.id,
  genre: [ 'Various'],
  artist_id: Artist.last.id,
  tracks: [ 'Lust for Life (Iggy Pop)', 'Deep Blue Day (Brian Eno)',
'Trainspotting (Primal Scream)', 'Atomic (Sleeper)', 'Temptation (New Order)', 'Nightclubbing (Iggy Pop)',
'Sing (Blur)', 'Perfect Day (Lou Reed)', 'Mile End (Pulp)', 'For What You Dream Of (Bedrock featuring KYO)',
'2:1 (Elastica)', 'A Final Hit (Leftfield)', 'Born Slippy (Underworld)', 'Closet Romantic (Damon Albarn)']
  )


Artist.create!(
  artist_name: 'Nine Inch Nails',
  band_members: ["Trent Reznor", "Atticus Ross"]
  )

Album.create!(
  album_name: "The Crow",
  year: '1994',
  artwork_url: 'https://upload.wikimedia.org/wikipedia/en/7/72/The_Crow_soundtrack_album_cover.jpg',
  producers: ["Various"],
  record_label: 'Atlantic',
  seller_id: Seller.all.sample.id,
  genre: [ 'Various'],
  artist_id: Artist.last.id,
  tracks: ["Burn (The Cure)", "Golgotha Tenement Blues (Machines of Loving Grace)",
"Big Empty (Stone Temple Pilots)", "Dead Souls (Nine Inch Nails)",
"Darkness (Rage Against the Machine)", "Color Me Once (Violent Femmes)",
"Ghostrider (Rollins Band)", "Milktoast (Helmet)", "The Badge (Pantera)",
"Slip Slide Melting (For Love Not Lisa)", "After the Flesh (My Life with the Thrill Kill Kult)",
"Snakedriver (The Jesus and Mary Chain)", "Time Baby III (Medicine)", "It Can't Rain All the Time(Jane Siberry)"]
  )

Album.create!(
  album_name: "With Teeth",
  year: '1997',
  artwork_url: 'https://upload.wikimedia.org/wikipedia/en/e/e0/Nine_Inch_Nails_-_With_Teeth.png',
  producers: ["Trent Reznor", "Alan Moulder", "Atticus Ross"],
  record_label: 'Interscope',
  seller_id: Seller.all.sample.id,
  genre: [ 'Industrial rock', 'electronic rock', 'alternative rock', 'synth-pop'],
  artist_id: Artist.last.id,
  tracks: ["All the Love in the World", "You Know What You Are?", "The Collector",
"The Hand That Feeds", "Love Is Not Enough", "Every Day Is Exactly the Same",
"With Teeth", "Only", "Getting Smaller", "Sunspots", "The Line Begins to Blur",
"Beside You in Time", "Right Where It Belongs"]
  )



Artist.create!(
  artist_name: 'Johnny Cash',
  band_members: ["Johnny Cash"]
  )

Album.create!(
 album_name: "American IV: The Man Comes Around",
 year: '2002',
 artwork_url: 'https://upload.wikimedia.org/wikipedia/en/e/e0/AmericanIV.jpg',
 producers: ['Rick Rubin', 'John Carter Cash'],
 record_label: 'Universal',
 seller_id: Seller.all.sample.id,
 genre: ['Acoustic', 'rock', 'folk country', 'Americana'],
 artist_id: Artist.last.id,
 tracks: ["The Man Comes Around", "Hurt", "Give My Love to Rose", "Bridge Over Troubled Water",
"I Hung My Head", "The First Time Ever I Saw Your Face", "Personal Jesus",
"In My Life", "Sam Hall", "Danny Boy", "Desperado", "I'm So Lonesome I Could Cry",
"Tear Stained Letter", "Streets of Laredo", "We'll Meet Again"]
)

Artist.create!(
  artist_name: 'Red Hot Chilli Peppers',
  band_members: ['Anthony Kiedis', 'Flea', 'Chad Smith', 'John Frusciante']
  )

Album.create!(
  album_name: "Under the covers",
  year: '1998',
  artwork_url: 'https://upload.wikimedia.org/wikipedia/en/4/4f/Red_Hot_Chili_Peppers-Under_the_Covers.jpg',
  producers: [" Various"],
  record_label: 'EMI',
  seller_id: Seller.all.sample.id,
  genre: [ 'Funk rock'],
  artist_id: Artist.last.id,
  tracks: [ "They're Red Hot (Robert Johnson)",
"Fire (Jimi Hendrix Experience)",
"Subterranean Homesick Blues (Bob Dylan)",
"Higher Ground (Stevie Wonder)",
"If You Want Me to Stay (Sly and the Family Stone)",
"Why Don't You Love Me (Hank Williams)",
"Tiny Dancer (Live) (Elton John)",
"Castles Made of Sand (Live) (Jimi Hendrix Experience)",
"Dr. Funkenstein (Live) (Parliament)",
"Hollywood (Africa) (The Meters)",
"Search and Destroy (Iggy Pop and The Stooges)",
"Higher Ground (Daddy-O Mix)",
"Hollywood (Africa) (Extended Dance Mix)"]
  )

Album.create!(
  album_name: "Blood Sugar Sex Magik",
  year: '1991',
  artwork_url: 'https://upload.wikimedia.org/wikipedia/en/5/5e/RHCP-BSSM.jpg',
  producers: ["Rick Rubin"],
  record_label: ' Warner Bros.',
  seller_id: Seller.all.sample.id,
  genre: [ 'Funk rock', 'alternative rock', 'funk metal', 'rap rock'],
  artist_id: Artist.last.id,
  tracks: [ "The Power of Equality", "If You Have to Ask", "Breaking the Girl",
"Funky Monks", "Suck My Kiss", "I Could Have Lied", "Mellowship Slinky in B Major",
"The Righteous & the Wicked", "Give It Away", "Blood Sugar Sex Magik", "Under the Bridge",
"Naked in the Rain", "Apache Rose Peacock", "The Greeting Song", "My Lovely Man",
"Sir Psycho Sexy", "They're Red Hot"]
  )

Artist.create!(
  artist_name: 'Joy Division',
  band_members: ['Ian Curtis', 'Bernard Sumner', 'Peter Hook', 'Stephen Morris']
  )

Album.create!(
  album_name: "Unknown Pleasures",
  year: '1979',
  artwork_url: 'https://upload.wikimedia.org/wikipedia/en/7/70/Unknown_Pleasures_Joy_Division_LP_sleeve.jpg',
  producers: ["Martin Hannett"],
  record_label: 'Factory',
  seller_id: Seller.all.sample.id,
  genre: ['Post-punk'],
  artist_id: Artist.last.id,
  tracks: ["Disorder", "Day of the Lords", "Candidate", "Insight", "New Dawn Fades",
  "She's Lost Control", "Shadowplay", "Wilderness", "Interzone", "I Remember Nothing"]
  )

Artist.create!(
  artist_name: 'New Order',
  band_members: ['Bernard Sumner', 'Peter Hook', 'Stephen Morris', 'Gillian Gilbert']
  )

Album.create!(
  album_name: "Power, Corruption and Lies",
  year: '1983',
  artwork_url: 'https://upload.wikimedia.org/wikipedia/en/4/4f/New_Order_-_Power%2C_Corruption_%26_Lies.png',
  producers: ["New Order"],
  record_label: 'Factory',
  seller_id: Seller.all.sample.id,
  genre: ['Synth-pop', 'new wave', 'post-punk', 'synth-rock'],
  artist_id: Artist.last.id,
  tracks: ["Age of Consent", "We All Stand", "The Village", "5 8 6", "Your Silent Face",
"Ultraviolence", "Ecstasy", "Leave Me Alone"]
  )

Album.create!(
  album_name: "Technique",
  year: '1988',
  artwork_url: 'https://upload.wikimedia.org/wikipedia/en/8/8a/New_Order_-_Technique.png',
  producers: ["New Order"],
  record_label: 'Factory',
  seller_id: Seller.all.sample.id,
  genre: ['Alternative dance', 'acid house', 'dance-rock'],
  artist_id: Artist.last.id,
  tracks: ["Fine Time", "All the Way", "Love Less", "Round & Round", "Guilty Partner",
"Run", "Mr. Disco", "Vanishing Point", "Dream Attack"]
  )

Artist.create!(
  artist_name: 'Pet Shop Boys',
  band_members: ['Neil Tennant', 'Chris Lowe']
  )

Album.create!(
  album_name: "Actually",
  year: '1987',
  artwork_url: 'https://upload.wikimedia.org/wikipedia/en/f/fc/PetShopBoysActually.jpg',
  producers: ["Stephen Hague", "David Jacob", "Julian Mendelsohn", "Pet Shop Boys", "Shep Pettibone", "Andy Richards"],
  record_label: 'Parlophone',
  seller_id: Seller.all.sample.id,
  genre: ['Synth-pop', 'dance', 'pop', 'disco'],
  artist_id: Artist.last.id,
  tracks: ["One More Chance", "What Have I Done to Deserve This? \n(with Dusty Springfield)", "Shopping",
"Rent", "Hit Music", "It Couldn't Happen Here", "It's a Sin", "I Want to Wake Up", "Heart", "King's Cross"]
  )

Artist.create!(
  artist_name: 'Dusty Springfield',
  band_members: ['Dusty Springfield']
  )

Album.create!(
  album_name: "A Girl Called Dusty",
  year: '1964',
  artwork_url: 'https://upload.wikimedia.org/wikipedia/en/4/4e/A_Girl_Called_Dusty_%28Dusty_Springfield_album_-_cover_art%29.jpg',
  producers: ["Johnny Franz"],
  record_label: 'Phillips',
  seller_id: Seller.all.sample.id,
  genre: ['Pop'],
  artist_id: Artist.last.id,
  tracks: ["Mama Said", "You Don't Own Me", "Do Re Mi (Forget About the Do and Think About Me)",
"When the Lovelight Starts Shining Through His Eyes", "My Colouring Book", "Mockingbird",
"Twenty Four Hours From Tulsa", "Nothing", "Anyone Who Had a Heart", "Will You Love Me Tomorrow",
"Wishin' and Hopin'"]
  )

Artist.create!(
  artist_name: 'White Stripes',
  band_members: ['Jack White','Meg White']
  )

Album.create!(
  album_name: "Elephant",
  year: '2003',
  artwork_url: 'https://upload.wikimedia.org/wikipedia/en/1/11/Elephant%2C_The_White_Stripes.png',
  producers: ["Jack White"],
  record_label: 'V2',
  seller_id: Seller.all.sample.id,
  genre: ['Garage rock revival', 'blues rock', 'punk blues'],
  artist_id: Artist.last.id,
  tracks: ["Seven Nation Army", "Black Math", "There's No Home for You Here",
"I Just Don't Know What to Do with Myself", "In the Cold, Cold Night",
"I Want to Be the Boy to Warm Your Mother's Heart", "You've Got Her in Your Pocket",
"Ball and Biscuit", "The Hardest Button to Button", "Little Acorns", "Hypnotize",
"The Air Near My Fingers", "Girl, You Have No Faith in Medicine",
"Well It's True That We Love One Another"]
  )

Artist.create!(
  artist_name: 'George Michael',
  band_members: ["George Michael"]
  )

Album.create!(
  album_name: "Faith",
  year: '1987',
  artwork_url: 'https://upload.wikimedia.org/wikipedia/en/9/9a/George_Michael_-_Faith.png',
  producers: ["George Michael"],
  record_label: 'V2',
  seller_id: Seller.all.sample.id,
  genre: ['Pop', 'R&B', 'synthpop', 'soul', 'rock'],
  artist_id: Artist.last.id,
  tracks: ["Faith", "Father Figure", "I Want Your Sex", "One More Try", "Hard Day",
"Hand to Mouth", "Look at Your Hands", "Monkey", "Kissing a Fool"]
  )

Artist.create!(
  artist_name: 'Aretha Franklin',
  band_members: ["Aretha Franklin"]
  )

Album.create!(
  album_name: "Yeah!!!",
  year: '1987',
  artwork_url: 'https://upload.wikimedia.org/wikipedia/en/6/68/Yeah%21%21%21_album.jpg',
  producers: [" Clyde Otis"],
  record_label: ' Columbia',
  seller_id: Seller.all.sample.id,
  genre: ['R&B', 'soul'],
  artist_id: Artist.last.id,
  tracks: ["This Could Be the Start of Something", "Once In a Lifetime",
"Misty", "More" , "There Is No Greater Love", "Muddy Water", "If I Had a Hammer",
"Impossible", "Today I Love Ev'rybody", "Without The One You Love", "Trouble in Mind",
"Love for Sale"]
  )


puts "Albums created"
puts "done"

# url = "https://api.airtable.com/v0/appG8EtUMLM464yhW/Sheet%201?api_key=key4EHjHf99psrakN"

#   i = 0
#   puts "Importing albums from page #{i + 1}"
#   associated = JSON.parse(open("#{url}?page=#{i + 1}").read)['results']
#   p associated
#   associated.each do |act|
#     puts "Creating #{act['title']}"
#     Associated_act.create(
#       artist_id:
#       artist_b_id:
#       connection_description:
#

#     )

  # end

require 'net/http'
require 'uri'
require 'json'

def get_airtable_data(url)
  # Parse the URL into a URI and set up the request
  uri = URI.parse(url)
  request = Net::HTTP::Get.new(uri)
  # ! replace the bearer token with an ENV variable
  request["Authorization"] = "Bearer " + ENV["AIRTABLE_TOKEN"]

  # use SSL to make the request
  req_options = {
    use_ssl: uri.scheme == "https"
  }

  # make the request and save the response
  response = Net::HTTP.start(uri.hostname, uri.port, req_options) do |http|
    http.request(request)
  end
  # parse the response payload into JSON and symbolize all keys (deeply)
  JSON.parse(response.body, symbolize_names: true)
end

associated_acts = "https://api.airtable.com/v0/appG8EtUMLM464yhW/Associated_acts"
data = get_airtable_data(associated_acts)

tags = "https://api.airtable.com/v0/appG8EtUMLM464yhW/Sheet%201"

tags_data = get_airtable_data(tags)

puts "Creating Tags!"
# p tags_data
tags_data[:records].each do |record|
  # create a new tag using the tag name attribute from the Airtable response data for tags
  #define artist_a and artist_b
  @artist = Artist.where("artist_name ILIKE ?", "%#{record[:fields][:artist_a_name]}%").first

  @artist_b = Artist.where("artist_name ILIKE ?", "%#{record[:fields][:artist_b_name]}%").first

  @album = Album.where("album_name ILIKE ?", "%#{record[:fields][:album].delete("/\"")}%").first

  connection = record[:fields][:connection_description].delete("/\"")
    p record[:fields][:album]
    # p @artist
    # p @artist_b
    # p @album
    # p connection
  AssociatedAct.create!(:artist_id => @artist.id, :album => @album,
    :artist_b_id => @artist_b.id, :connection_description => connection)
end





