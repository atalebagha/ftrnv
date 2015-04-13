require 'test_helper'

class VisaRequestsControllerTest < ActionController::TestCase
  setup do
    @visa_request = visa_requests(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:visa_requests)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create visa_request" do
    assert_difference('VisaRequest.count') do
      post :create, visa_request: { code: @visa_request.code, date: @visa_request.date, description: @visa_request.description, project_id: @visa_request.project_id, purpose: @visa_request.purpose, user_id: @visa_request.user_id }
    end

    assert_redirected_to visa_request_path(assigns(:visa_request))
  end

  test "should show visa_request" do
    get :show, id: @visa_request
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @visa_request
    assert_response :success
  end

  test "should update visa_request" do
    patch :update, id: @visa_request, visa_request: { code: @visa_request.code, date: @visa_request.date, description: @visa_request.description, project_id: @visa_request.project_id, purpose: @visa_request.purpose, user_id: @visa_request.user_id }
    assert_redirected_to visa_request_path(assigns(:visa_request))
  end

  test "should destroy visa_request" do
    assert_difference('VisaRequest.count', -1) do
      delete :destroy, id: @visa_request
    end

    assert_redirected_to visa_requests_path
  end
end
