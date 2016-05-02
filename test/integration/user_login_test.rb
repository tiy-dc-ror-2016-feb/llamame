require "test_helper"

class UserLoginTest < ActionDispatch::IntegrationTest
  test "a user cannot login with a bad username password" do
    visit new_user_session_path
    fill_in("Email", with: "admin@admin.com")
    fill_in("Password", with: "password")
    click_button("Log in")

    within ".flash-messages" do
      assert page.has_content?("Invalid email or password.")
    end
  end

  test "a user can login" do
    visit new_user_session_path
    fill_in("Email", with: "sam@sam.com")
    fill_in("Password", with: "passw0rd!")
    click_button("Log in")

    within ".flash-messages" do
      assert_equal "/", current_path
    end
  end
end
