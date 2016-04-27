require 'test_helper'

class DashboardControllerTest < ActionController::TestCase
  include Devise::TestHelpers

  setup do
    @user = users(:user_1)
    sign_in users(:user_1)
  end

  test "can get dashboard index" do
    get :index

    assert_response :success
  end
end
