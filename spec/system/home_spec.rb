require "rails_helper"

RSpec.describe "Home page", type: :system do
  it "visiting the root path" do
    visit root_url

    expect(page).to have_content "Simple Code Review Viewer"
  end
end