require "test_helper"

class TodayEntriesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get today_entries_index_url
    assert_response :success
  end

  test "should create records for current date" do
    params = {

    }

    patch today_entries_update_path, params: params
  end
end
