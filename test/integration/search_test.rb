require 'test_helper'

class SearchTest < ActionDispatch::IntegrationTest
  setup do
    login_as users(:user_1), scope: :user
  end

  test 'can find person through search using last name' do
    visit root_path
    fill_in "Search", with: "wh"
    find("#search button").click
    assert page.has_content?("Sam")
  end

  test 'can find person through search using first name' do
    visit root_path
    fill_in "Search", with: "scroo"
    find("#search button").click
    assert page.has_content?("McDuck")
  end

  focus
  test 'can find company using search' do
    visit root_path
    fill_in "Search", with: "Samsung"
    find("#search button").click
    assert page.has_content?("Samsung")
  end

  test 'tell user there are no results' do
    visit root_path
    fill_in "Search", with: "Scrooge"
    find("#search button").click
    assert page.has_content?("No Results Found!")
  end
end
