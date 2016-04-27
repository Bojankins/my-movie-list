require 'spec_helper'
require 'rails_helper'

feature "Welcome Page"do
    
  scenario "When logged out" do
  visit '/'
  expect(page).to have_content("Welcome to My Movie List")
  end
    
end