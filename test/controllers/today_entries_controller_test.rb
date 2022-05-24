require "test_helper"

class TodayEntriesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get today_entries_index_url
    assert_response :success
  end
end
