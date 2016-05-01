require 'test_helper'

class PhoneNumbersControllerTest < ActionController::TestCase
  include Devise::TestHelpers

  setup do
    sign_in users(:user_1)
    @phone_number = phone_numbers(:one)
    @person = people(:one)
  end

  test "should get index" do
    get :index, person_id: @person.id
    assert_response :success
    assert_not_nil assigns(:phone_numbers)
  end

  test "should get new" do
    get :new, person_id: @person.id
    assert_response :success
  end

  test "should create phone_number" do
    assert_difference('PhoneNumber.count') do
      post :create, person_id: @person.id, phone_number: { number: @phone_number.number, number_type: @phone_number.number_type, phone_numberable_id: @phone_number.phone_numberable_id, phone_numberable_type: @phone_number.phone_numberable_type }
    end

    assert_redirected_to person_path(@person)
  end

  test "should show phone_number" do
    get :show, id: @phone_number
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @phone_number
    assert_response :success
  end

  test "should update phone_number" do
    patch :update, id: @phone_number, phone_number: { number: @phone_number.number, number_type: @phone_number.number_type, phone_numberable_id: @phone_number.phone_numberable_id, phone_numberable_type: @phone_number.phone_numberable_type }
    assert_redirected_to phone_number_path(assigns(:phone_number))
  end

  test "should destroy phone_number" do
    assert_difference('PhoneNumber.count', -1) do
      delete :destroy, id: @phone_number
    end

    assert_redirected_to phone_numbers_path
  end
end
