# NOTES
## Project Setup
Run `rails new mod-2-final-project-get-lost -T -B` to generate the project skeleton. Edit the `Gemfile` to setup the correct version of the `sqlite3` gem. Also add `pry-rails`,`rspec-rails` and `capybara` to the development/test group. Uncomment the line for the `bcrypt` gem. Run `bundle` to install all the dependencies. Run `rails console` to check everything is working. Run `rails generate rspec:install` to generate spec file structure. Add `require 'capybara/rspec'` to `rails_helper.rb` to setup Capybara. Run `git` with an initial commit.
## Features
### Welcome
* Root path, `index` routes to `/`
### Signup
* Controller Actions
  * `new` routes to `/signup`
  * `validate` validates basic user info, routes to `/signup`
### User
* Controller Actions
  * `create`: Validates sign up information and persists user to database
  * `edit`: Edit basic user information, routes to `/settings`
  * `update`: Update basic user information
  * `destroy`: Delete user account
## Further Resources
### Weather API?
