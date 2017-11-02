Cart.destroy_all
Order.destroy_all
Product.destroy_all
User.destroy_all

products = [{
    artist_name: 'Prince',
    album_name: 'Batman',
    price: 5.65,
    quantity: 52,
    description: 'Prince, the icon or the symbol known as Prince, was chosen to do the soundtrack for Batman. Released in 1989, the song "Partyman" perfectly embodies what it means to be in a museum and touch whatever you want.',
    album_url1: 'https://i.imgur.com/3osIk0X.jpg',
    album_url2: 'https://i.imgur.com/Q83iBb4.jpg',
    album_url3: 'https://i.imgur.com/55Kn1t8.jpg'
    },
    {
    artist_name: 'Earth Wind & Fire',
    album_name: 'The Best of Earth Wind & Fire, Vol 1',
    price: 7.65,
    quantity: 52,
    description: 'Earth Wind & Fire released this album in 1977. Among the mountain of Earth Wind & Fire, September has proven to be a timeless classic. Soon as this songs come on you cannot help but look for a grill.',
    album_url1: 'https://i.imgur.com/0A75PGT.jpg',
    album_url2: 'https://i.imgur.com/wlXmBaA.jpg',
    album_url3: 'https://i.imgur.com/HOxQjaR.jpg'
    },
    {
    artist_name: 'Rick James',
    album_name: 'Street Songs',
    price: 3.00,
    quantity: 23,
    description: 'In the midst of the whole "Im Rick James Bitch", this man was making amazing music. This album truly has some classics. "Give It To Me Baby" is one of the best begging for love songs. "Fire and Desire" with Teena Marie will have you closing your eyes singing alone in some dimly light room.',
    album_url1: 'https://i.imgur.com/56KJ8s7.jpg',
    album_url2: 'https://i.imgur.com/eN8p78I.jpg',
    album_url3: 'https://i.imgur.com/ZayQi4n.jpg'
    },
    {
    artist_name: 'Michael Jackson',
    album_name: 'BAD',
    price: 2.50,
    quantity: 2,
    description: 'In the middle of his career, Michael Jackson released BAD and cemented himself as the greatest ever. Released in 1987, BAD topped the charts across many countries, earned countless awards, etc, but the video changed lives.',
    album_url1: 'https://i.imgur.com/bXSLMhP.png',
    album_url2: 'https://i.imgur.com/iKfGJa9.jpg',
    album_url3: 'https://i.imgur.com/YRdDhPx.jpg'
    },
    {
    artist_name: 'Stevie Wonder',
    album_name: 'Songs In The Key of Life',
    price: 1.65,
    quantity: 7,
    description: 'Stevie Wonder makes music so amazing that you will close your eyes in solidarity with Stevie. If he doesnt need to see to create this magic then you really dont either. If you have sung "Isnt She Lovely" to your significant other then please reevaluate your life.',
    album_url1: 'https://i.imgur.com/w1iN8hZ.jpg',
    album_url2: 'https://i.imgur.com/HTAywy0.jpg',
    album_url3:  'https://i.imgur.com/yC0lP74.jpg'
    },
    {
    artist_name: 'Whitney Houston',
    album_name: 'Songs In The Key of Life',
    price: 15.65,
    quantity: 6,
    description: 'In 1987, Whitney Houston released "Whitney" and put scratch marks on every dance as a result. Her song "I wanna dance with somebody" will always be in rotation forever.',
    album_url1: 'https://i.imgur.com/37MoJOm.jpg',
    album_url2: 'https://i.imgur.com/kj12vQL.jpg',
    album_url3:  'https://i.imgur.com/ghbDpmP.jpg'
    }
]

Product.create(products)