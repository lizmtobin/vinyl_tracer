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
  artist_id: Artist.all.sample.id,
  tracks: ["Brown Sugar", "Sway", "Wild Horses",  "Can't You Hear Me Knocking",  "You gotta Move",  "Bitch",
    "I Got The Blues",  "Sister Morphine",  "Dead Flowers",   "Moonlight Mile"]
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
  artist_id: Artist.all.sample.id,
  tracks: ["Dancing with Mr.D", "100 Years Ago", "Coming Down Again",  "Doo Doo Doo Doo",  "Angie",  "Silver Train",
    "Hide Your Love",  "Winter",  "Can you Hear the Music",   "Star"]
  )

Album.create!(
  album_name: 'It\'s Only Rock \'n Roll',
  year: '1974',
  artwork_url: 'https://upload.wikimedia.org/wikipedia/en/5/5d/IORNRCover.jpg',
  producers: ["The Glimmer Twins"],
  record_label: 'Rolling Stones Records',
  seller_id: Seller.all.sample.id,
  genre: ['rock'],
  artist_id: Artist.all.sample.id,
  tracks: ["Brown Sugar", "Sway", "Wild Horses",  "Can\'t You Hear Me Knocking",  "You gotta Move",  "Bitch",
    "I Got The Blues",  "Sister Morphine",  "Dead Flowers",   "Moonlight Mile"]
  )

Album.create!(
  album_name: 'Black and Blue',
  year: '1976',
  artwork_url: 'https://upload.wikimedia.org/wikipedia/en/5/5a/Blackblue.jpg',
  producers: ["The Glimmer Twins"],
  record_label: 'Rolling Stones Records',
  seller_id: Seller.all.sample.id,
  genre: ['rock'],
  artist_id: Artist.all.sample.id,
  tracks: ["Hot Stuff", "Hand of Fate", "Cherry Oh Baby",  "Memory Motel",  "Hey Negrite",  "Melody",
    "Fool To Cry",  "Crazy Mama"]
  )

Album.create!(
  album_name: 'Some Girls',
  year: '1978',
  artwork_url: 'https://upload.wikimedia.org/wikipedia/en/6/6c/Some_Girls.png',
  producers: ["The Glimmer Twins"],
  record_label: 'Rolling Stones Records',
  seller_id: Seller.all.sample.id,
  genre: ['rock'],
  artist_id: Artist.all.sample.id,
  tracks: [ "Miss You", "When the Whip Comes Down", "Just My Imagination (Running Away with Me)",
  "Some Girls","Lies", "Far Away Eyes", "Respectable", "Before They Make Me Run",
   "Beast of Burden", "Shattered"]
  )

Album.create!(
  album_name: 'Emotional Rescue',
  year: '1980',
  artwork_url: 'https://upload.wikimedia.org/wikipedia/en/3/3b/EmotionalRescue.jpg',
  producers: ["The Glimmer Twins"],
  record_label: 'Rolling Stones Records',
  seller_id: Seller.all.sample.id,
  genre: ['rock, disco'],
  artist_id: Artist.all.sample.id,
  tracks: ["Dance (Pt. 1)", "Summer Romance", "Send It to Me", "Let Me Go", "Indian Girl",
  "Where the Boys Go", "Down in the Hole", "Emotional Rescue", "She's So Cold", "All About You"]
  )

Album.create!(
  album_name: 'Tattoo You',
  year: '1981',
  artwork_url: 'https://upload.wikimedia.org/wikipedia/en/1/16/TattooYou81.jpg',
  producers: ["The Glimmer Twins"],
  record_label: 'Rolling Stones Records',
  seller_id: Seller.all.sample.id,
  genre: ['rock'],
  artist_id: Artist.all.sample.id,
  tracks: ["Start Me Up", "Hang Fire", "Slave", "Little T&A", "Black Limousine",
  "Neighbours", "Worried About You", "Tops", "Heaven", "No Use in Crying", "Waiting on a Friend"]
  )


Album.create!(
  album_name: 'Undercover',
  year: '1983',
  artwork_url: 'https://upload.wikimedia.org/wikipedia/en/3/3b/Undercoverstones.jpg',
  producers: ["The Glimmer Twins", "Chris Kimsey"],
  record_label: 'Rolling Stones Records',
  seller_id: Seller.all.sample.id,
  genre: ['rock'],
  artist_id: Artist.all.sample.id,
  tracks: ["Undercover of the Night", "She Was Hot", "Tie You Up (The Pain of Love)",
  "Wanna Hold You", "Feel On Baby", "Too Much Blood", "Pretty Beat Up", "Too Tough",
  "All the Way Down", "It Must Be Hell"]
  )

Album.create!(
  album_name: 'Dirty Work',
  year: '1986',
  artwork_url: 'https://upload.wikimedia.org/wikipedia/en/b/be/DirtyworkRS.jpg',
  producers: ["Steve Lilywhite", "The Glimmer Twins"],
  record_label: 'CBS Records',
  seller_id: Seller.all.sample.id,
  genre: ['rock'],
  artist_id: Artist.all.sample.id,
  tracks: ["One Hit (To the Body)", "Fight", "Harlem Shuffle", "Hold Back", "Too Rude",
  "Winning Ugly", "Back to Zero", "Dirty Work", "Had It with You", "Sleep Tonight", "Key to the Highway" ]
  )

Album.create!(
  album_name: 'Steel Wheels',
  year: '1989',
  artwork_url: 'https://upload.wikimedia.org/wikipedia/en/2/24/SteelWheels89.jpg',
  producers: ["The Glimmer Twins", "Chris Kimsey"],
  record_label: 'CBS Records',
  seller_id: Seller.all.sample.id,
  genre: ['rock', 'hard rock'],
  artist_id: Artist.all.sample.id,
  tracks: ["Sad sad sad",  "Mixed Emotions", "Terrifying",  "Hold On to Your Hat",   "Hearts for Sale",
    "Blind by Love", "Rock and A Hard Place",  "Can't Be Seen",   "Almost Hear You Sigh",
    "Continental Drift",  "Break the Spell",  "Slipping away"]
  )

Album.create!(
  album_name: 'Voodoo Lounge',
  year: '1994',
  artwork_url: 'https://upload.wikimedia.org/wikipedia/en/8/84/VoodooLounge94.jpg',
  producers: ["The Glimmer Twins", "Don Was"],
  record_label: 'Virgin Records',
  seller_id: Seller.all.sample.id,
  genre: ['blues rock', 'hard rock', 'roots rock'],
  artist_id: Artist.all.sample.id,
  tracks:["Love Is Strong",  "You Got Me Rocking", "Sparks Will Fly",  "The Worst",   "New Faces",
    "Out of Tears", "I go Wild",  "Brand New Cat",   "Sweethearts Together",
    "Suck on the Jungular"]
  )

Album.create!(
  album_name: 'Bridges to Babylon',
  year: '1997',
  artwork_url: 'https://upload.wikimedia.org/wikipedia/en/3/3d/BridgesBabylon97.jpg',
  producers: ["The Glimmer Twins", "Don Was"],
  record_label: 'Virgin Records',
  seller_id:Seller.all.sample.id,
  genre: ['blues rock', 'hard rock'],
  artist_id: Artist.all.sample.id,
  tracks:["Flip the Switch",  "Anybody Seen My Baby?", "Low Down",  "Already Over Me",   "Gunface",
    "You Don't Have to Mean It", "Out of Control",  "Saint Me",   "Might as Well Get Juiced",
    "Always Suffering", "Too Tight", "Thief in the Night", "How Can I Stop"]
  )

Album.create!(
  album_name: 'A Bigger Bang',
  year: '2005',
  artwork_url: 'https://upload.wikimedia.org/wikipedia/en/b/b3/A_bigger_band_album_cover_%28Wikipedia%29.jpg',
  producers: ["The Glimmer Twins", "Don Was"],
  record_label: 'Virgin Records',
  seller_id: Seller.all.sample.id,
  genre: ['rock'],
  artist_id: Artist.all.sample.id,
  tracks:["Rough Justice",  "Let Me Down Slow", "It won't Tale Long",  "Rain Fall Down",   "Streets of Love",
    "Back of my Head", "She Saw Me Coming",  "Biggest Mistake",   "This Place Is Empty",
    "Oh No, Not You Again", "Dangerous Beauty", "Laugh, I nearly Died", "Sweet Neo Con",  "Look What the Cat Dragged In", "Driving Too Fast", "Infamy"]
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

Album.create!(
  album_name: "What's going on",
  year: '1971',
  artwork_url: 'https://upload.wikimedia.org/wikipedia/en/8/84/MarvinGayeWhat%27sGoingOnalbumcover.jpg',
  producers: ["Marvin Gaye"],
  record_label: 'Tamla',
  seller_id: Seller.all.sample.id,
  genre: ['Soul', 'psychedelic soul'],
  artist_id: Artist.last.id,
  tracks: [ "What's Going On", "What's Happening Brother", "Flyin' High (In the Friendly Sky)",
"Save the Children", "God Is Love", "Mercy Mercy Me (The Ecology)", "Right On",
"Wholy Holy", "Inner City Blues (Make Me Wanna Holler)"]
  )

Artist.create!(
  artist_name: 'The Beatles',
  band_members: ["John Lennon", "Paul McCartney", "Ringo Starr", "George Harrison"]
  )

Album.create!(
  album_name: "Rubber Soul",
  year: '1965',
  artwork_url: 'https://upload.wikimedia.org/wikipedia/en/7/74/Rubber_Soul.jpg',
  producers: [" George Martin"],
  record_label: 'Parlophone',
  seller_id: Seller.all.sample.id,
  genre: ['Rock', 'pop', 'folk rock'],
  artist_id: Artist.last.id,
  tracks: ["Drive My Car", "Norwegian Wood (This Bird Has Flown)", "You Won't See Me",
"Nowhere Man", "Think for Yourself", "The Word", "Michelle", "What Goes On", "Girl",
"I'm Looking Through You", "In My Life", "Wait", "If I Needed Someone", "Run for Your Life"]
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

Album.create!(
  album_name: "Revolver",
  year: '1966',
  artwork_url: 'https://upload.wikimedia.org/wikipedia/en/e/ec/Revolver_%28album_cover%29.jpg',
  producers: [" George Martin"],
  record_label: 'Parlophone',
  seller_id: Seller.all.sample.id,
  genre: ['Rock', 'pop'],
  artist_id: Artist.last.id,
  tracks: ["Help!", "The Night Before", "You've Got to Hide Your Love Away",
"I Need You", "Another Girl", "You're Going to Lose That Girl", "Ticket to Ride",
"Act Naturally", "It's Only Love", "You Like Me Too Much", "Tell Me What You See",
"I've Just Seen a Face", "Yesterday", "Dizzy Miss Lizzy"]
  )

Album.create!(
  album_name: "Help",
  year: '1965',
  artwork_url: 'https://upload.wikimedia.org/wikipedia/en/e/e7/Help%21_%28The_Beatles_album_-_cover_art%29.jpg',
  producers: [" George Martin"],
  record_label: 'Parlophone',
  seller_id: Seller.all.sample.id,
  genre: ['Rock', 'pop', 'psychedelia'],
  artist_id: Artist.last.id,
  tracks: ["Taxman", "Eleanor Rigby", "I'm Only Sleeping", "Love You To", "Here, There and Everywhere",
"Yellow Submarine" , "She Said She Said", "Good Day Sunshine", "And Your Bird Can Sing",
"For No One", "Doctor Robert", "I Want to Tell You", "Got to Get You into My Life",
"Tomorrow Never Knows"]
  )

Artist.create!(
  artist_name: 'Elton John',
  band_members: ["Elton John"]
  )

Album.create!(
  album_name: "Reg Strikes Back",
  year: '1988',
  artwork_url: 'https://upload.wikimedia.org/wikipedia/en/e/e5/Reg_strikes_back.JPG',
  producers: ["Gus Dudgeon"],
  record_label: ' DJM ',
  seller_id: Seller.all.sample.id,
  genre: ['Rock', 'pop'],
  artist_id: Artist.last.id,
  tracks: ["Town of Plenty", "A Word in Spanish","Mona Lisas and Mad Hatters (Part Two)",
"I Don't Wanna Go On with You Like That", "Japanese Hands", "Goodbye Marlon Brando",
"The Camera Never Lies", "Heavy Traffic", "Poor Cow", "Since God Invented Girls"]
  )

Album.create!(
  album_name: "The Captain and the Kid",
  year: '2006',
  artwork_url: 'https://upload.wikimedia.org/wikipedia/en/d/d9/Captainkid.jpg',
  producers: [" Elton John, Matt Still"],
  record_label: ' Interscope',
  seller_id: Seller.all.sample.id,
  genre: ['Rock'],
  artist_id: Artist.last.id,
  tracks: ["Postcards from Richard Nixon", "Just Like Noah's Ark", "Wouldn't Have You Any Other Way (NYC)",
"Tinderbox","And the House Fell Down", "Blues Never Fade Away", "The Bridge", "I Must Have Lost It on the Wind",
"Old '67", "The Captain and the Kid"]
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


Album.create!(
  album_name: "My Generation",
  year: '1965',
  artwork_url: 'https://upload.wikimedia.org/wikipedia/en/0/01/My-Generation--2.jpg',
  producers: ["Shel Talmy"],
  record_label: 'Brunswick',
  seller_id: Seller.all.sample.id,
  genre: ['Rock', 'Garage rock', 'Mod'],
  artist_id: Artist.last.id,
  tracks: ["Out in the Street", "I Don't Mind", "The Good's Gone", "La-La-La-Lies",
"Much Too Much", "My Generation", "The Kids Are Alright", "Please, Please, Please",
"It's Not True", "I'm a Man", "A Legal Matter", "The Ox"]
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

Album.create!(
  album_name: "Modern Life Is Rubbish",
  year: '1993',
  artwork_url: 'https://upload.wikimedia.org/wikipedia/en/1/15/Blur_-_Modern_Life_is_Rubbish.jpg',
  producers: [  "Blur", "John Smith", "Steve Lovell", "Stephen Street"],
  record_label: 'Food',
  seller_id: Seller.all.sample.id,
  genre: ['Britpop'],
  artist_id: Artist.last.id,
  tracks: ["For Tomorrow", "Advert", "Colin Zeal", "Pressure on Julian", "Star Shaped",
"Blue Jeans", "Chemical World", "Sunday Sunday", "Oily Water" ,"Miss America", "Villa Rosie",
"Coping", "Turn It Up", "Resigned"]
  )

Artist.create!(
  artist_name: 'Gorrilaz',
  band_members: ["Damon Albarn", "Jamie Hewlett"]
  )

Album.create!(
  album_name: "Demon Days",
  year: '2005',
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

Album.create!(
  album_name: "Gorrilaz",
  year: '2001',
  artwork_url: 'https://upload.wikimedia.org/wikipedia/en/4/41/GorillazAlbum.jpg',
  producers: ["Gorillaz", "Dan the Automator"],
  record_label: 'Parlaphone',
  seller_id: Seller.all.sample.id,
  genre: ['Alternative rock', 'lo-fi', 'dub', 'hip hop','trip hop'],
  artist_id: Artist.last.id,
  tracks: [ "Re-Hash", "5/4", "Tomorrow Comes Today", "New Genious (Brother)[a]",
"Clint Eastwood", "Man Research (Clapper)", "Punk", "Sound Check (Gravity)",
"Double Bass", "Rock the House", "19-2000", "Latin Simone (¿Qué Pasa Contigo?)",
"Starshine", "Slow Country", "M1 A1"]
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

Album.create!(
  album_name: "Guero",
  year: '2005',
  artwork_url: 'https://upload.wikimedia.org/wikipedia/en/5/50/Guero_cover.jpg',
  producers: ["Beck Hansen", "The Dust Brothers", "Tony Hoffer"],
  record_label: 'Interscope',
  seller_id: Seller.all.sample.id,
  genre: ['Alternative rock', 'hip hop'],
  artist_id: Artist.last.id,
  tracks: ["E-Pro", "Qué Onda Guero", "Girl", "Missing", "Black Tambourine",
"Earthquake Weather", "Hell Yes", "Broken Drum", "Scarecrow", "Go It Alone",
"Farewell Ride", "Rental Car", "Emergency Exit"]
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


Album.create!(
  album_name: "Berlin",
  year: '1973',
  artwork_url: 'https://upload.wikimedia.org/wikipedia/en/7/70/Berlinloureed.jpeg',
  producers: ["Bob Ezrin"],
  record_label: 'RCA',
  seller_id: Seller.all.sample.id,
  genre: [ 'Rock', 'art rock'],
  artist_id: Artist.last.id,
  tracks: ["Berlin", "Lady Day", "Men of Good Fortune", "Caroline Says I",
"How Do You Think It Feels", "Oh, Jim", "Caroline Says II", "The Kids",
"The Bed", "Sad Song"]
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



# Artist.create!(
#   artist_name: 'Various',
#   band_members: ["Various"]
#   )


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

Artist.create!(
  artist_name: 'Electronic',
  band_members: ['Bernard Sumner', 'Johnny Marr']
  )

Album.create!(
  album_name: "Electronic",
  year: '1991',
  artwork_url: 'https://upload.wikimedia.org/wikipedia/en/e/ef/Fact290.jpg',
  producers: ["Bernard Sumner", "Johnny Marr"],
  record_label: 'Factory',
  seller_id: Seller.all.sample.id,
  genre: ['Alternative dance', 'synth-pop', 'alternative rock'],
  artist_id: Artist.last.id,
  tracks: ["Idiot Country", "Reality", "Tighten Up", "The Patience of a Saint",
"Getting Away with It", "Gangster", "Soviet", "Get the Message", "Try All You Want",
"Some Distant Memory", "Feel Every Beat"]
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

Album.create!(
  album_name: "Behaviour",
  year: '1990',
  artwork_url: 'https://upload.wikimedia.org/wikipedia/en/a/ad/Pet_Shop_Boys_-_Behaviour.png',
  producers: ["Pet Shop Boys", "Harold Faltermeyer"],
  record_label: 'Parlophone',
  seller_id: Seller.all.sample.id,
  genre: ['Synth-pop', 'dance', 'pop'],
  artist_id: Artist.last.id,
  tracks: ["Being Boring", "This Must Be the Place I Waited Years to Leave", "To Face the Truth",
"How Can You Expect to Be Taken Seriously?", "Only the Wind", "My October Symphony",
"So Hard", "Nervously", "The End of the World", "Jealousy"]
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

Album.create!(
  album_name: "Where Am I Going?",
  year: '1967',
  artwork_url: 'https://upload.wikimedia.org/wikipedia/en/3/38/Where_Am_I_Going.jpg',
  producers: ["Johnny Franz", "Dusty Springfield"],
  record_label: 'Phillips',
  seller_id: Seller.all.sample.id,
  genre: ['Pop'],
  artist_id: Artist.last.id,
  tracks: ["Bring Him Back", "Don't Let Me Lose This Dream", "I Can't Wait Until I See My Baby's Face",
"Take Me for a Little While", "Chained to a Memory", "Sunny", "(They Long to Be) Close to You",
"Welcome Home", "Come Back to Me", "If You Go Away (Ne Me Quitte Pas)", "Broken Blossoms",
"Where Am I Going?"]
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

Album.create!(
  album_name: "Soul Sister",
  year: '1966',
  artwork_url: 'https://upload.wikimedia.org/wikipedia/en/8/82/Soul_Sister_album.jpg',
  producers: [" Clyde Otis"],
  record_label: ' Columbia',
  seller_id: Seller.all.sample.id,
  genre: ['Jazz', 'soul', 'pop', 'R&B'],
  artist_id: Artist.last.id,
  tracks: ["Until You Were Gone", "You Made Me Love You (I Didn't Want to Do It)",
"Follow Your Heart", "Ol' Man River", "Sweet Bitter Love", "A Mother's Love",
"Swanee", "(No, No) I'm Losing You", "Take a Look", "Can't You Just See Me",
"Cry Like a Baby"]
  )


Artist.create!(
  artist_name: 'The Specials',
  band_members: ["Lynval Golding", "Sir Horace Gentleman", "Terry Hall", "Roddy Radiation", "John Bradbury",
    "Neville Staples", "Jerry Dammers"]
  )

Album.create!(
  album_name: "The Specials",
  year: '1979',
  artwork_url: 'https://upload.wikimedia.org/wikipedia/en/9/94/Specials_uk_front.jpg',
  producers: ["Elvis Costello"],
  record_label: '2Tone',
  seller_id: Seller.all.sample.id,
  genre: ['Ska', 'reggae', '2 Tone'],
  artist_id: Artist.last.id,
  tracks: ["A Message to You, Rudy", "Do the Dog", "It's Up to You", "Nite Klub",
"Doesn't Make It Alright", "Concrete Jungle", "Too Hot", "Monkey Man", "(Dawning of A) New Era",
"Blank Expression", "Stupid Marriage", "Too Much Too Young", "Little Bitch", "You're Wondering Now" ]
  )

Artist.create!(
  artist_name: 'The Vinyl Tracers',
  band_members: ["Clare Amos", "Gid Berridge", "Liz Tobin"]
  )

Album.create!(
  album_name: "Live at Glastonbury",
  year: '2021',
  artwork_url: 'https://res.cloudinary.com/dslpvndc1/image/upload/v1631822160/album_cover_frpoiu.jpg',
  producers: ["Rahul", "Anne"],
  record_label: 'Le Wagon',
  seller_id: Seller.all.sample.id,
  genre: ['Ruby', 'HTML', 'CSS', 'Javascript'],
  artist_id: Artist.last.id,
  tracks: ["I love coding", "Did somebody say just code?", "Coding in the morning", "Coding at night",
"Coding in the afternoon", "I can't get no (SQL)", "Does my back-end look big in this?",
"Move to the Algorithm", "Array of light", "Seven function army", "Lucy in the sky with Bootstrap" ]
  )

Artist.create!(
  artist_name: 'The Tracers of Vinyl',
  band_members: ["Clare Amos", "Gid Berridge", "Liz Tobin"]
  )

Album.create!(
  album_name: "Born to Code",
  year: '2021',
  artwork_url: 'https://res.cloudinary.com/dslpvndc1/image/upload/v1631822160/album_cover_frpoiu.jpg',
  producers: ["Rahul", "Anne"],
  record_label: 'Le Wagon',
  seller_id: Seller.all.sample.id,
  genre: ['Ruby', 'HTML', 'CSS', 'Javascript'],
  artist_id: Artist.last.id,
  tracks: ["I love coding", "Did somebody say just code?", "Coding in the morning", "Coding at night",
"Coding in the afternoon", "I can't get no (SQL)", "Does my back-end look big in this?",
"Move to the Algorithm", "Array of light", "Seven function army", "Lucy in the sky with Bootstrap" ]
  )


puts "Albums created"
puts "done"





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





