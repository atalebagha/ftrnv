require 'test_helper'

class ContractsControllerTest < ActionController::TestCase
  setup do
    @contract = contracts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:contracts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create contract" do
    assert_difference('Contract.count') do
      post :create, contract: { car: @contract.car, employeeid: @contract.employeeid, holidays: @contract.holidays, housing: @contract.housing, length: @contract.length, position: @contract.position, project_id: @contract.project_id, reference: @contract.reference, salary: @contract.salary, start: @contract.start, title: @contract.title, vacationdays: @contract.vacationdays, visadays: @contract.visadays }
    end

    assert_redirected_to contract_path(assigns(:contract))
  end

  test "should show contract" do
    get :show, id: @contract
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @contract
    assert_response :success
  end

  test "should update contract" do
    patch :update, id: @contract, contract: { car: @contract.car, employeeid: @contract.employeeid, holidays: @contract.holidays, housing: @contract.housing, length: @contract.length, position: @contract.position, project_id: @contract.project_id, reference: @contract.reference, salary: @contract.salary, start: @contract.start, title: @contract.title, vacationdays: @contract.vacationdays, visadays: @contract.visadays }
    assert_redirected_to contract_path(assigns(:contract))
  end

  test "should destroy contract" do
    assert_difference('Contract.count', -1) do
      delete :destroy, id: @contract
    end

    assert_redirected_to contracts_path
  end
end
