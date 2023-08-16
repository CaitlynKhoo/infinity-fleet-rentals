require 'date'
require 'faker'

Booking.destroy_all
Ship.destroy_all
User.destroy_all

User.create!(
  email: "Barry@infinityfleetrentals.com",
  password: "password1",
  name: "Admin Barry",
  phone_number: "123-456-7891",
  address: "Address One",
  date_of_birth: Date.new(1990, 1, 1),
  #user_img: "https://avatars.githubusercontent.com/u/138180537?v=4"
)

User.create!(
  email: "karthika@infinityfleetrentals.com",
  password: "password2",
  name: "Admin Karthika",
  phone_number: "123-456-7892",
  address: "Address Two",
  date_of_birth: Date.new(1990, 2, 2),
  #user_img: "https://avatars.githubusercontent.com/u/129238177?v=4"
)

User.create!(
  email: "Caitlyn@infinityfleetrentals.com",
  password: "password3",
  name: "Admin Caitlyn",
  phone_number: "123-456-7893",
  address: "Address Three",
  date_of_birth: Date.new(1990, 3, 3),
  #user_img: "https://avatars.githubusercontent.com/u/138352657?v=4"
)

User.create!(
  email: "Kostas@infinityfleetrentals.com",
  password: "password4",
  name: "Admin kostas",
  phone_number: "123-456-7894",
  address: "Address Four",
  date_of_birth: Date.new(1990, 4, 4),
  #user_img: "https://avatars.githubusercontent.com/u/133198548?v=4"
)

20.times do
  email = Faker::Internet.unique.email
  name = Faker::Name.name
  user = User.new(email: email)
  password = "123123"
  phone_number = Faker::PhoneNumber
  address = Faker::Address
  date_of_birth = Faker::Date.birthday

  user = User.new(email: email, date_of_birth: date_of_birth, address: address, name: name, phone_number: phone_number, password: password, password_confirmation: password)

  if user.save
    puts "Created user: #{user.email}"
  else
    puts "Failed to create user: #{user.email} - Errors: #{user.errors.full_messages.join(', ')}"
  end
end

users = User.all

ship_names = [
  "Millennium Falcon",
  "The Tardis",
  "Button Moon's Rocket Ship",
  "X Wing",
  "Tie Fighter",
  "Frieza's Spaceship",
  "Death Star",
  "Red Dwarf's Starbug",
  "Serenity",
  "Klingon Warbird"
]

ship_pictures_1 = [
  "https://res.cloudinary.com/dt99kdrwl/image/upload/v1692159594/Spaceships/Millenium%20Falcon/image3_mxmj6b.jpg",
  "https://res.cloudinary.com/dt99kdrwl/image/upload/v1692159596/Spaceships/The%20Tardis/image1_w0fg7n.jpg",
  "https://res.cloudinary.com/dt99kdrwl/image/upload/v1692159593/Spaceships/Button%20Moon/image2_qjpddg.jpg",
  "https://res.cloudinary.com/dt99kdrwl/image/upload/v1692159595/Spaceships/X%20Wing/image3_mi4mz0.jpg",
  "https://res.cloudinary.com/dt99kdrwl/image/upload/v1692159595/Spaceships/Tie%20Fighter/image1_j7rtqz.jpg",
  "https://res.cloudinary.com/dt99kdrwl/image/upload/v1692159593/Spaceships/Frieza%27s%20Spaceship/image3_pfi7t7.jpg",
  "https://res.cloudinary.com/dt99kdrwl/image/upload/v1692159592/Spaceships/Death%20Star/image3_tegwsa.jpg",
  "https://res.cloudinary.com/dt99kdrwl/image/upload/v1692159594/Spaceships/Starbug/image2_wsxb0p.jpg",
  "https://res.cloudinary.com/dt99kdrwl/image/upload/v1692159593/Spaceships/Firefly/image3_gyeqee.jpg",
  "https://res.cloudinary.com/dt99kdrwl/image/upload/v1692159593/Spaceships/Klingon%20Warbird/image3_jy8wim.jpg",
]

ship_pictures_2 = [
  "https://res.cloudinary.com/dt99kdrwl/image/upload/v1692159593/Spaceships/Millenium%20Falcon/image2_dkezve.jpg",
  "https://res.cloudinary.com/dt99kdrwl/image/upload/v1692159594/Spaceships/The%20Tardis/image3_aggipw.jpg",
  "https://res.cloudinary.com/dt99kdrwl/image/upload/v1692159592/Spaceships/Button%20Moon/image3_aisc8h.jpg",
  "https://res.cloudinary.com/dt99kdrwl/image/upload/v1692159594/Spaceships/X%20Wing/image2_swovvd.jpg",
  "https://res.cloudinary.com/dt99kdrwl/image/upload/v1692159594/Spaceships/Tie%20Fighter/image2_kpr32a.jpg",
  "https://res.cloudinary.com/dt99kdrwl/image/upload/v1692159593/Spaceships/Frieza%27s%20Spaceship/image1_bq6bdi.jpg",
  "https://res.cloudinary.com/dt99kdrwl/image/upload/v1692159592/Spaceships/Death%20Star/image1_ppgdda.jpg",
  "https://res.cloudinary.com/dt99kdrwl/image/upload/v1692159594/Spaceships/Starbug/image3_l0bhs0.jpg",
  "https://res.cloudinary.com/dt99kdrwl/image/upload/v1692159594/Spaceships/Firefly/image2_egrh1b.jpg",
  "https://res.cloudinary.com/dt99kdrwl/image/upload/v1692159593/Spaceships/Klingon%20Warbird/image2_tf0ied.jpg",
]

ship_pictures_3 = [
  "https://res.cloudinary.com/dt99kdrwl/image/upload/v1692159593/Spaceships/Millenium%20Falcon/image1_zygddo.jpg",
  "https://res.cloudinary.com/dt99kdrwl/image/upload/v1692159594/Spaceships/The%20Tardis/image2_mqfgvm.jpg",
  "https://res.cloudinary.com/dt99kdrwl/image/upload/v1692159592/Spaceships/Button%20Moon/image1_drh7eu.jpg",
  "https://res.cloudinary.com/dt99kdrwl/image/upload/v1692159594/Spaceships/X%20Wing/image1_kiumqh.jpg",
  "https://res.cloudinary.com/dt99kdrwl/image/upload/v1692159594/Spaceships/Tie%20Fighter/image3_cwy3zl.jpg",
  "https://res.cloudinary.com/dt99kdrwl/image/upload/v1692159593/Spaceships/Frieza%27s%20Spaceship/image2_ifjorm.jpg",
  "https://res.cloudinary.com/dt99kdrwl/image/upload/v1692159592/Spaceships/Death%20Star/image2_sskobv.jpg",
  "https://res.cloudinary.com/dt99kdrwl/image/upload/v1692159594/Spaceships/Starbug/image1_vm52oz.jpg",
  "https://res.cloudinary.com/dt99kdrwl/image/upload/v1692159594/Spaceships/Firefly/image1_glhtpv.jpg",
  "https://res.cloudinary.com/dt99kdrwl/image/upload/v1692159593/Spaceships/Klingon%20Warbird/image1_rrifyb.jpg",
]

descriptions = [
  "The Millennium Falcon, a Corellian YT-1300 light freighter, achieved legendary status in the galaxy. Known for its remarkable speed, impressive smuggling compartments, and numerous modifications, the Falcon became an iconic vessel. Piloted by Han Solo and Chewbacca, it played a pivotal role in the Rebel Alliance's victories against the oppressive Galactic Empire. With its unmatched capabilities and storied history, the Millennium Falcon remains a symbol of hope and resilience in a galaxy far, far away.",
  "The TARDIS, short for Time And Relative Dimension In Space, is the extraordinary time machine and spaceship used by the enigmatic Doctor in the long-running British TV series Doctor Who. Despite its outward appearance as a blue British police box, the TARDIS is much larger on the inside, containing countless rooms, corridors, and advanced technology. Capable of traveling anywhere in time and space, the TARDIS serves as the Doctor's constant companion, allowing for thrilling adventures that span across history, planets, and dimensions.",
  "Button Moon's Rocket Ship is a whimsical spacecraft from the charming children's stories. This endearing vessel embarks on imaginative journeys to the enchanting Button Moon, a moon shaped like a button, with its cheerful crew. Each adventure brings new encounters and discoveries as the rocket ship explores the lunar landscape and interacts with the peculiar inhabitants of Button Moon. With its cheerful demeanor and sense of wonder, the Button Moon Rocket Ship captures the hearts and imaginations of young and old alike.",
  "The X Wing starfighter is a versatile and iconic spacecraft utilized by the Rebel Alliance in their struggle against the Galactic Empire. Distinguished by its S-foils that open into an 'X' shape during combat, the X Wing offers exceptional maneuverability and firepower. Its pilots, including Luke Skywalker, skillfully navigate through dogfights and perilous missions to thwart the Empire's domination. As a symbol of resistance and courage, the X Wing is a key asset in the fight for freedom across the galaxy.",
  "The TIE Fighter, or Twin Ion Engine Fighter, is a staple of the Galactic Empire's fleet. Recognizable by its distinctive hexagonal solar panels, the TIE Fighter is swift and agile, making it an effective tool for the Empire's domination. However, its lack of shielding and life support systems makes it vulnerable in prolonged engagements. Piloted by loyal Imperial officers and stormtroopers, the TIE Fighter enforces the Emperor's rule with precision and fear, dominating the starry expanse of the galaxy.",
  "Frieza's Spaceship is the imposing and opulent vessel of the tyrant Frieza in the Dragon Ball universe. This mobile base showcases Frieza's immense power and cruel nature, embodying his dominance over the cosmos. The ship's sinister design and advanced technology reflect Frieza's status as a formidable force. With the ability to traverse galaxies and serve as a command center, Frieza's Spaceship plays a key role in his pursuit of control and conquest, striking fear into the hearts of both allies and enemies.",
  "The Death Star, a moon-sized battle station, represents the ultimate weapon of the Galactic Empire. With the capability to annihilate entire planets, it embodies the Empire's ruthless pursuit of power and control. The Death Star's imposing presence casts a shadow of fear across the galaxy, serving as a symbol of oppression and tyranny. However, its destructive potential becomes a weakness when the Rebel Alliance undertakes a daring mission to exploit its vulnerabilities, leading to a pivotal battle that changes the course of the galactic conflict.",
  "Red Dwarf's Starbug is a modest yet dependable spacecraft from the quirky sci-fi TV show Red Dwarf. Serving as the primary mode of transportation for the misfit crew, Starbug embarks on a series of comedic and often perilous escapades across space and time. Its unpretentious design and functionality contrast with the grandeur of other sci-fi vessels, making it a relatable and endearing part of the Red Dwarf universe. With its crew's eccentricities and the ship's unconventional adventures, Starbug adds an element of humor to the cosmos.",
  "The Firefly, affectionately known as Serenity, is a versatile transport ship that navigates the 'Verse in the TV series Firefly. Home to a diverse crew of smugglers, misfits, and adventurers, Serenity serves as both refuge and battleground as its inhabitants seek freedom and survival in a fractured galaxy. With its mix of technology from different cultures and its crew's resilience in the face of challenges, Serenity embodies the spirit of independence and unity, taking its crew on a journey of camaraderie and self-discovery.",
  "The Klingon Warbird is a formidable vessel from the Star Trek universe, synonymous with the Klingon Empire's martial prowess and honor-bound culture. Distinguished by its imposing design and advanced weaponry, the Warbird serves as a symbol of Klingon strength and readiness for battle. Manned by dedicated warriors, the Warbird enforces the empire's interests while reflecting the complex relationships and rivalries within the vast expanse of the Star Trek cosmos. With its imposing silhouette and cultural significance, the Klingon Warbird leaves an indelible mark on the annals of science fiction.",
]


10.times do |i|
  user_id = users[i].id
  ship = Ship.new(
    user_id: user_id,
    # description: Faker::Lorem.paragraph_by_chars(number: rand(1000..2200)),
    capacity: rand(1..500),
    price_per_day: rand(5..50) * 10,
    rating: rand(1.0..10.0),
  )
  ship.name = ship_names[i-1]
  ship.picture_1 = ship_pictures_1[i-1]
  ship.picture_2 = ship_pictures_2[i-1]
  ship.picture_3 = ship_pictures_3[i-1]
  ship.description = descriptions[i-1]


  if ship.save
    puts "Created ship with ID #{ship.id} and user_id #{user_id}"
  else
    puts "Failed to create ship - Errors: #{ship.errors.full_messages.join(', ')}"
  end
end

ships = Ship.all

20.times do
  start_date = Date.today + rand(1..10)
  end_date = Date.today + rand(11..20)
  status = "pending"
  user_id = users.sample.id
  ship_id = ships.sample.id

  booking = Booking.new(
    start_date: start_date,
    end_date: end_date,
    status: status,
    user_id: user_id,
    ship_id: ship_id
  )

  if booking.save
    puts "Created booking with ID #{booking.id} for user_id #{user_id} and ship_id #{ship_id}"
  else
    puts "Failed to create booking - Errors: #{booking.errors.full_messages.join(', ')}"
  end
end
