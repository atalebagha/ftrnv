require 'test_helper'

class TimesheetRowsControllerTest < ActionController::TestCase
  setup do
    @timesheet_row = timesheet_rows(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:timesheet_rows)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create timesheet_row" do
    assert_difference('TimesheetRow.count') do
      post :create, timesheet_row: { days: @timesheet_row.days, hours: @timesheet_row.hours, timesheet_id: @timesheet_row.timesheet_id, type: @timesheet_row.type }
    end

    assert_redirected_to timesheet_row_path(assigns(:timesheet_row))
  end

  test "should show timesheet_row" do
    get :show, id: @timesheet_row
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @timesheet_row
    assert_response :success
  end

  test "should update timesheet_row" do
    patch :update, id: @timesheet_row, timesheet_row: { days: @timesheet_row.days, hours: @timesheet_row.hours, timesheet_id: @timesheet_row.timesheet_id, type: @timesheet_row.type }
    assert_redirected_to timesheet_row_path(assigns(:timesheet_row))
  end

  test "should destroy timesheet_row" do
    assert_difference('TimesheetRow.count', -1) do
      delete :destroy, id: @timesheet_row
    end

    assert_redirected_to timesheet_rows_path
  end
end
