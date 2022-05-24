require "test_helper"

class TodayEntriesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get today_entries_index_url
    assert_response :success
  end

  test "should create records for current date" do
    Entry.destroy_all

    issue1 = Issue.create!(name: "Knee pain?")
    issue2 = Issue.create!(name: "Back pain?")

    params = {
      entries: [
        { issue_id: issue1.id, answer: 1 },
        { issue_id: issue2.id, answer: 3 },
      ]
    }

    assert_changes 'Entry.count', from: 0, to: 2 do
      patch today_entries_update_path, params: params
    end
    assert_equal [1, 3], Entry.pluck(:answer).sort
  end
end
