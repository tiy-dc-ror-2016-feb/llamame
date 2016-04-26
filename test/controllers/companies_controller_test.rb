require 'test_helper'

class CompaniesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should get show" do
    @company = companies(:one)
    get :show, id: @company.id
    assert_response :success
  end

  test "should get edit" do
    @company = companies(:one)
    get :edit, id: @company.id
    assert_response :success
  end

  test "should get create" do
    company_count = Company.count
    post :create, company: { notes: "blah", salesperson: "mike" }
    assert assigns(:company).valid?
    assert_equal company_count + 1, Company.count
  end

  test "should get update" do
    @company = companies(:one)
    patch :update, id: @company.id, company: { notes: "Makes tacos" }
    assert_redirected_to company_path(id: @company.id)
    assert_equal "Makes tacos", assigns[:company].notes
  end

  test "should get destroy" do
    @company = companies(:one)
    company_count = Company.count
    delete :destroy, id: @company.id
    assert_redirected_to companies_path
    assert_equal company_count - 1, Company.count
  end

end
