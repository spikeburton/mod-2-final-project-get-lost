# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


### Adventure
# * `location:string`
# * `topography:string`
adventures = [
  {name: "Altamaha Historic Scenic Byway", location: "", topography: "coastal"},
  {name: "Cohutta-Chattahoochee Scenic Byway", location: "", topography: "rural"},
  {name: "Enduring Farmlands Scenic Byway", location: "", topography: "pastoral"},
  {name: "Historic Effingham-Ebenezer Scenic Byway", location: "", topography: "historical"},
  {name: "Historic Piedmont Scenic Byway", location: "", topography: "scenic"},
  {name: "Interstate 185", location: "", topography: "wooded"},
  {name: "Meriwether-Pike Scenic Byway", location: "", topography: "historical"},
  {name: "Millen-Jenkins County Scenic Byway", location: "", topography: "historical"},
  {name: "Monticello Crossroads Scenic Byway", location: "", topography: "rural"},
  {name: "Ocmulgee-Piedmont Scenic Byway", location: "", topography: "fauna"},
  {name: "Ridge and Valley Scenic Byway", location: "", topography: "mountainous"},
  {name: "Russell-Brasstown National Scenic Byway", topography: "mountainous"},
  {name: "South Fulton Scenic Byway", location: "", topography: "hilly"},
  {name: "Warren County-Piedmont Scenic Byway Extension", location: "", topography: "hilly"}

]

adventures.each {|adventure| Adventure.create(adventure)}

### User
# * `first_name:string`
# * `last_name:string`
# * `email:string`
# * `address:string`
# * `city:string`
# * `zipcode:integer`
# * `state:string`
# * `username:string`
# * `password:digest`
users = [
  {first_name: "Cat", last_name: "Grayson", email: "chandagrayson@gmail.com", address: "1554 Pangborn Station Dr", city: "Decatur", zipcode: 30033, state: "GA", username: "KitCat", password: "cats"},
  {first_name: "Spike", last_name: "Burton", email: "spikesemail@gmail.com", address: "Spike's Address", city: "Atlanta", zipcode: 33333, state: "GA", username: "Spike", password: "spikespassword" },
  {first_name: "Emily", last_name: "Wilder", email: "emilysemail@gmail.com", address: "Emily's Address", city: "Atlanta", zipcode: 31111, state: "GA", username: "Em", password: "emilyspassword" },
  {first_name: "Brit", last_name: "Butler", email: "britsemail@gmail.com", address: "Brit's Address", city: "Atlanta", zipcode: 32222, state: "GA", username: "Brit", password: "britspassword" },
  {first_name: "Tez", last_name: "Smith", email: "tezsemail@gmail.com", address: "Tez's Address", city: "Atlanta", zipcode: 34444, state: "GA", username: "montez", password: "tezspassword" },
  {first_name: "Ronnie", last_name: "Ricardo", email: "ronniesemail@gmail.com", address: "Ronnie's Address", city: "Atlanta", zipcode: 35555, state: "GA", username: "Roniece", password: "ronniespassword"},
  {first_name: "Arthur", last_name: "Torres", email: "arthursemail@gmail.com", address: "Arthur's Address", city: "Atlanta", zipcode: 36666, state: "GA", username: "Art", password: "arthurspassword"},
  {first_name: "Megan", last_name: "Fago", email: "megansemail@gmail.com", address: "Megan's Address", city: "Atlanta", zipcode: 37777, state: "GA", username: "Meg", password: "meganspassword"},
  {first_name: "Blair", last_name: "Carroll", email: "blairsemail@gmail.com", address: "Blair's Address", city: "Atlanta", zipcode: 38888, state: "GA", username: "FancyBlair", password: "blairspassword"},
  {first_name: "Vanessa", last_name: "Prema", email: "vanessasemail@gmail.com", address: "Vanessa's Address", city: "Atlanta", zipcode: 39999, state: "GA", username: "Nessa", password: "vanessaspassword"}
]

users.each {|user| User.create(user)}

### UserAdventure
# * `belongs_to user`
# * `belongs_to adventure`
# users = users.map { |user| user.merge( { adventure_id: Adventure.all.sample.id } ) }

Adventure.all.each { |a| User.all.sample.adventures << a }
