require "rails_helper"

RSpec.describe "User sign ups", type: :system do
  it "visiting the root page" do
    visit "/"
    click_link('Sign up')
    fill_in('Email', :with => 'o.grinenko@svitla.com')
    fill_in('Password', :with => 'ooma1234')
    fill_in('Password confirmation', :with => 'ooma1234')
    click_button ('Sign up')

    expect(page).to have_content "Welcome! You have signed up successfully."
  end
end