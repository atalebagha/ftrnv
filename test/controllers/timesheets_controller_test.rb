require 'test_helper'

class TimesheetsControllerTest < ActionController::TestCase
  setup do
    @timesheet = timesheets(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:timesheets)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create timesheet" do
    assert_difference('Timesheet.count') do
      post :create, timesheet: { auto_sort: @timesheet.auto_sort, committed: @timesheet.committed, committed_at: @timesheet.committed_at, description: @timesheet.description, lock_version: @timesheet.lock_version, month: @timesheet.month, project_id: @timesheet.project_id, start_day_cache: @timesheet.start_day_cache, year: @timesheet.year }
    end

    assert_redirected_to timesheet_path(assigns(:timesheet))
  end

  test "should show timesheet" do
    get :show, id: @timesheet
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @timesheet
    assert_response :success
  end

  test "should update timesheet" do
    patch :update, id: @timesheet, timesheet: { auto_sort: @timesheet.auto_sort, committed: @timesheet.committed, committed_at: @timesheet.committed_at, description: @timesheet.description, lock_version: @timesheet.lock_version, month: @timesheet.month, project_id: @timesheet.project_id, start_day_cache: @timesheet.start_day_cache, year: @timesheet.year }
    assert_redirected_to timesheet_path(assigns(:timesheet))
  end

  test "should destroy timesheet" do
    assert_difference('Timesheet.count', -1) do
      delete :destroy, id: @timesheet
    end

    assert_redirected_to timesheets_path
  end
end