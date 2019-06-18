puts 'Cleaning database...'
Restaurant.destroy_all

puts 'Creating restaurants...'
restaurants_attributes = [
  {
    name: 'Dishoom',
    address: '7 Boundary St, London E2 7JE',
    category: 'japanese',
    phone_number: '+44 20 7420 9320'
  },
  {
    name: 'Pomo',
    address: '5 Habarzel St, Tel-Aviv E2 7JE',
    category: 'italian',
    phone_number: '03-922-5320'
  },
  {
    name: 'Pizza East',
    address: '56A Hadar Yosef High St, Tel-Aviv E1 6PQ',
    category: 'italian',
    phone_number: '1-700-506-070'
  },
  {
    name: 'Oban koban',
    address: '24 Yehuda hamacabi St, Tel-Aviv E2 7JE',
    category: 'japanese',
    phone_number: '03-677-6808'
  },
  {
    name: 'Max Brener Chocolate',
    address: '7 Hanechoshet St, Tel-Aviv E1 6PQ',
    category: 'belgian',
    phone_number: '03-544-5480'
  },
  {
    name: 'Caspi',
    address: 'Nathan Alterman 7, Tel-Aviv',
    category: 'chinese',
    phone_number: '03-605-0680'
  }
]
Restaurant.create!(restaurants_attributes)
puts 'Finished!'
