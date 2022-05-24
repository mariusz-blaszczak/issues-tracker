require "test_helper"

class EntryTest < ActiveSupport::TestCase
  test "validation of created_at" do
    issue = Issue.create!(name: "Question?")
    Entry.create!(issue: issue)

    entry = Entry.new(issue: issue)
    assert entry.invalid?
  end
end
