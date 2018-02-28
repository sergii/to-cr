require "application_system_test_case"

class TicketsTest < ApplicationSystemTestCase
  test "visiting the index" do
    visit tickets_url

    assert_selector "h2", text: "Log in"
  end
end