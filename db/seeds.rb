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
# users = [
#   {first_name: "Cat", last_name: "Grayson", email: "chandagrayson@gmail.com", address: "1554 Pangborn Station Dr", city: "Decatur", zipcode: 30033 , state: "GA", username: "KitCat", password_digest: "#{User.digest("password")}"}
# ]
#
# users.each {|user| User.create(user)}
#
# {first_name: "", last_name: "", email: "", address: "", city: "", zipcode:  , state: "", username: "", password: }
# ]
