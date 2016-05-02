require 'test_helper'

class DashboardNavigationTest < ActionDispatch::IntegrationTest
  setup do
    visit new_user_session_path
    fill_in("Email", with: "sam@sam.com")
    fill_in("Password", with: "passw0rd!")
    click_button("Log in")
  end

  test "can view interactions in the past 24 hours" do
    visit root_path

    assert page.has_content?("Recent Interaction")

    click_button("Recent Interaction")

    assert page.has_content?("Interactions Within the Past 24 Hours")
    assert page.has_content?("Promoting Llama Sales")
  end
end
