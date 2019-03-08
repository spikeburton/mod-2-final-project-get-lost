# Get Lost
* Do you ever feel overwhelmed by the crowded city traffic, glaring lights, and overwhelming sounds?
* Do you ever wish for quiet, open spaces lending you the chance to forget your daily stresses, and just _drive away_ your worries?
* That’s why we created *Get Lost*. It’s an opportunity to take off for a Sunday drive with little forethought. Spontaneity deserves to be rewarded with bliss!
* Come and take an adventure with us and *Get Lost*!
## Run
Run `rails s` and direct your browser to the port of choice. For example, `http://localhost:3000`.
## Models
### User
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
## User Stories
1. A `user` should be able to create a new account by providing their basic information. They should choose a unique username and set a password.
2. A `user` should be able to edit and update basic information.
3. A `user` should be able to delete their account 😪
4. A `user` should be able to view a list of all `adventures` filtered by `topography`
5. A `user` should be able to save an `adventure` they like to their profile
6. A `user` should be able to delete an `adventure` from their list of saved adventures
7. A `user` should be able to view the list of `adventures` that they have saved
---
## Resources
### [Semantic UI](https://semantic-ui.com/)
### [Google Maps API](https://cloud.google.com/maps-platform/)
