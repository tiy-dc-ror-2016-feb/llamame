require 'test_helper'

class InteractionsControllerTest < ActionController::TestCase
  include Devise::TestHelpers

  setup do
    @person = people(:one)
    @interaction = interactions(:one)
    sign_in users(:user_1)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:interactions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create interaction" do
    assert_difference('Interaction.count') do
      post :create, interaction: { details: @interaction.details, follow_up_date: @interaction.follow_up_date, medium: @interaction.medium, topic: @interaction.topic, person_id: @interaction.person_id }
    end

    assert_redirected_to person_path(id: @interaction.person_id)
  end

  test "should show interaction" do
    get :show, id: @interaction
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @interaction
    assert_response :success
  end

  test "should update interaction" do
    patch :update, id: @interaction, interaction: { details: @interaction.details, follow_up_date: @interaction.follow_up_date, medium: @interaction.medium, topic: @interaction.topic }
    assert_redirected_to interaction_path(assigns(:interaction))
  end

  test "should destroy interaction" do
    assert_difference('Interaction.count', -1) do
      delete :destroy, id: @interaction
    end

    assert_redirected_to interactions_path
  end
end
