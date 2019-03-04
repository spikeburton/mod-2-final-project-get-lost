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
  {location: "Altamaha Historic Scenic Byway", topography: "coastal"},
  {location: "Cohutta-Chattahoochee Scenic Byway", topography: "rural"},
  {location: "Enduring Farmlands Scenic Byway", topography: "pastoral"},
  {location: "Historic Effingham-Ebenezer Scenic Byway", topography: "historical"},
  {location: "Historic Piedmont Scenic Byway", topography: "scenic"},
  {location: "Interstate 185", topography: "wooded"},
  {location: "Meriwether-Pike Scenic Byway", topography: "historical"},
  {location: "Millen-Jenkins County Scenic Byway", topography: "historical"},
  {location: "Monticello Crossroads Scenic Byway", topography: "rural"},
  {location: "Ocmulgee-Piedmont Scenic Byway", topography: "fauna"},
  {location: "Ridge and Valley Scenic Byway", topography: "mountainous"},
  {location: "Russell-Brasstown National Scenic Byway", topography: "mountainous"},
  {location: "South Fulton Scenic Byway", topography: "hilly"},
  {location: "Warren County-Piedmont Scenic Byway Extension", topography: "hilly"}

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
  {first_name: "Cat", last_name: "Grayson", email: "chandagrayson@gmail.com", address: "1554 Pangborn Station Dr", city: "Decatur", zipcode: 30033, state: "GA", username: "KitCat", password_digest: "cats"},
  {first_name: "Spike", last_name: "Burton", email: "spikesemail@gmail.com", address: "Spike's Address", city: "Atlanta", zipcode: 33333, state: "GA", username: "Spike", password_digest: "spikespassword" },
  {first_name: "Emily", last_name: "Wilder", email: "emilysemail@gmail.com", address: "Emily's Address", city: "Atlanta", zipcode: 31111, state: "GA", username: "Em", password_digest: "emilyspassword" },
  {first_name: "Brit", last_name: "Butler", email: "britsemail@gmail.com", address: "Brit's Address", city: "Atlanta", zipcode: 32222, state: "GA", username: "Brit", password_digest: "britspassword" },
  {first_name: "Tez", last_name: "Smith", email: "tezsemail@gmail.com", address: "Tez's Address", city: "Atlanta", zipcode: 34444, state: "GA", username: "montez", password_digest: "tezspassword" },
  {first_name: "Ronnie", last_name: "Ricardo", email: "ronniesemail@gmail.com", address: "Ronnie's Address", city: "Atlanta", zipcode: 35555, state: "GA", username: "Roniece", password_digest: "ronniespassword"},
  {first_name: "Arthur", last_name: "Torres", email: "arthursemail@gmail.com", address: "Arthur's Address", city: "Atlanta", zipcode: 36666, state: "GA", username: "Art", password_digest: "arthurspassword"},
  {first_name: "Megan", last_name: "Fago", email: "megansemail@gmail.com", address: "Megan's Address", city: "Atlanta", zipcode: 37777, state: "GA", username: "Meg", password_digest: "meganspassword"},
  {first_name: "Blair", last_name: "Carroll", email: "blairsemail@gmail.com", address: "Blair's Address", city: "Atlanta", zipcode: 38888, state: "GA", username: "FancyBlair", password_digest: "blairspassword"},
  {first_name: "Vanessa", last_name: "Prema", email: "vanessasemail@gmail.com", address: "Vanessa's Address", city: "Atlanta", zipcode: 39999, state: "GA", username: "Nessa", password_digest: "vanessaspassword"}
]

users.each {|user| User.create(user)}
