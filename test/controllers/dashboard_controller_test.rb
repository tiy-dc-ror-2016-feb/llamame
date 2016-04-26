require 'test_helper'

class DashboardControllerTest < ActionController::TestCase
  test "can get dashboard index" do
    get :index

    assert_response :success
  end
end
