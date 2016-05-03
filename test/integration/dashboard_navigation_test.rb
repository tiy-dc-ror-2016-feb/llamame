require 'test_helper'

class DashboardNavigationTest < ActionDispatch::IntegrationTest
  setup do
    login_as users(:user_1), scope: :user
  end

  test "can view interactions in the past 24 hours" do
    visit root_path

    assert page.has_content?("Recent Interaction")

    click_button("Recent Interaction")

    assert page.has_content?("Interactions Within the Past 24 Hours")
    assert page.has_content?("Promoting Llama Sales")
  end
end
