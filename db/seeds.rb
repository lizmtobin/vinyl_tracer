# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


puts "creating sellers"
puts "cleaning up"
Seller.destroy_all

Seller.create!(
  seller_name: 'Sounds of the Universe',
  location: '7 Broadwick Street, London, W1F 0DA',
  rating: '[1..5].sample',
  seller_url: 'https://soundsoftheuniverse.com/')

Seller.create!(
  seller_name: 'Reckless Records',
  location: '30 Berwick Street, London, W1F 8RH',
  rating: '[1..5].sample',
  seller_url: 'https://reckless.co.uk/')

Seller.create!(
  seller_name: 'Sister Ray',
  location: '75 Berwick Street, Soho, London, W1F 8RP',
  rating: '[1..5].sample',
  seller_url: 'https://sisterray.co.uk/')

Seller.create!(
  seller_name: 'Phonica Records',
  location: '51 Poland Street, London, W1F 7LZ',
  rating: '[1..5].sample',
  seller_url: 'https://www.phonicarecords.com/')

Seller.create!(
  seller_name: 'Flashback Records',
  location: '50 Essex Road, London, N1 8LR',
  rating: '[1..5].sample',
  seller_url: 'https://www.flashback.co.uk/')

Seller.create!(
  seller_name: 'Rough Trade East',
  location: 'Draywalk, 91 Brick Lane, London, E1 6QL',
  rating: '[1..5].sample',
  seller_url: 'https://www.roughtrade.com/')

Seller.create!(
  seller_name: 'Let it Roll Records',
  location: '121 Kentish Town Road, London, NW1 8PB',
  rating: '[1..5].sample',
  seller_url: 'https://letitrollrecords.com/')

Seller.create!(
  seller_name: 'World of Echo',
  location: '128 Columbia Road, London, E2 7RG',
  rating: '[1..5].sample',
  seller_url: 'https://worldofechomusic.com/')

Seller.create!(
  seller_name: 'Peckham Soul',
  location: 'Bussey Building, 133 Rye Lane, London, SE15 4ST',
  rating: '[1..5].sample',
  seller_url: 'https://www.peckhamsoul.co.uk/#fwdmspPlayer0?catid=0&trackid=0')

Seller.create!(
  seller_name: 'Rough Trade West',
  location: '130 Talbot Road, London, W11 1JA',
  rating: '[1..5].sample',
  seller_url: 'https://www.roughtrade.com/')





puts "done"
