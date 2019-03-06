require 'rails_helper'

RSpec.feature "Signup", type: :feature do
  # pending "add some scenarios (or delete) #{__FILE__}"
  it 'Can enter user information' do
    visit '/signup'

    fill_in :user_first_name, with: 'John'
    fill_in :user_last_name, with: 'Smith'
    fill_in :user_email, with: 'john.smith@yahoo.com'
    fill_in :user_address, with: '100 Peachtree St. NE'
    fill_in :user_city, with: 'Atlanta'
    fill_in :user_state, with: 'GA'
    fill_in :user_zipcode, with: '30303'

    click_on 'Continue'
    expect(page).to have_content "Choose a Username:"
  end
end
