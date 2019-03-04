# Get Lost
## Pitch
* Do you ever feel overwhelmed by the crowded city traffic, glaring lights, and overwhelming sounds?
* Do you ever wish for quiet, open spaces lending you the chance to forget your daily stresses, and just _drive away_ your worries?
* That’s why we created *Get Lost*. It’s an opportunity to take off for a Sunday drive with little forethought. Spontaneity deserves to be rewarded with bliss!
* Come and take an adventure with us and *Get Lost*!
## Project Setup
Run `rails new mod-2-final-project-get-lost -T -B` to generate the project skeleton. Edit the `Gemfile` to setup the correct version of the `sqlite3` gem. Also add `pry-rails`,`rspec-rails` and `capybara` to the development/test group. Uncomment the line for the `bcrypt` gem. Run `bundle` to install all the dependencies. Run `rails console` to check everything is working. Run `rails generate rspec:install` to generate spec file structure. Add `require 'capybara/rspec'` to `rails_helper.rb` to setup Capybara. Run `git` with an initial commit.
## Models
### User
* `belongs_to car`
* `has_many user_adventures, dependent: :destroy`
* `has_many adventures through user_adventures`
* `has_secure_password`
* `first_name:string`
* `last_name:string`
* `email:string`
* `address:string`
* `city:string`
* `zipcode:integer`
* `state:string`
* `username:string`
* `password:digest`
* Controller Actions
  * `new`: Routes to the sign up form, `/signup`
  * `create`: Validates sign up information and persists user to database
  * `edit`: Edit basic user information, routes to `/settings`
  * `update`: Update basic user information
  * `destroy`: Delete user account

---
### UserAdventure
* `belongs_to user`
* `belongs_to adventure`
---
### Adventure
* `has_many user_adventures, dependent: :destroy`
* `has_many users through user_adventures`
* `location:string`
* `topography:string`
---
### Car
* `has_many users`
* `make:string`
* `model:string`
* `year:integer`
* `all_wheel_drive:boolean` TODO: Do we need this?
---
### Location
* `has_many adventures`
* `name:string`
---
## User Stories
1. A `user` should be able to create a new account by providing their basic information. Additionally, they should be able to choose their `car` make/model from a list of car types already in the database, OR be able to add a new car to the database.
2. A `user` should be able to edit and update basic information
3. A `user` should be able to delete their account 😪
4. A `user` should be able to view a list of all `adventures` filtered by `location`
5. A `user` should be able to save an `adventure` they like to their profile
6. A `user` should be able to delete an `adventure` from their list of saved adventures
7. A `user` should be able to view the list of `adventures` that they have saved
---
## Resources
### [Google Maps API](https://cloud.google.com/maps-platform/) - stretch goal
### Weather API - stretch goal
### Materialize - CSS/prettify it up
### Pictures Cat has taken
### Background Music
