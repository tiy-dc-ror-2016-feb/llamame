require 'test_helper'

class InteractionFormTest < ActionDispatch::IntegrationTest
  setup do
    visit new_user_session_path
    fill_in("Email", with: "sam@sam.com")
    fill_in("Password", with: "passw0rd!")
    click_button("Log in")
  end

  focus
  test "add an interaction from a person's page" do
    visit root_path

    click_link("People")

    within("#person_#{people(:one).id}") do
      click_link("Show")
    end

    click_link("Add Interaction")

    fill_in("Topic", :with => "Llama Production Forecasts")
    select("Phone", :from => "Medium")
    fill_in("Details", :with => "We talked about the 5 year forecast.")
    fill_in("Follow up date", :with => "01/01/2001")
    click_button("Create Interaction")

    sleep(5)
    binding.pry
  end
end
