require "rails_helper"

RSpec.describe "Tickets page", type: :system do
  it "visiting the index" do
    visit tickets_url

    expect(page).to have_content "Log in"
  end
end