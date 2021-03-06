class TodayEntriesController < ApplicationController
  def index
  end

  def update
    issue = Issue.find(params.fetch("issue_id"))
    Entry.create!(answer: params.fetch("answer"), issue: issue, observed_at: Time.zone.now)

    redirect_to today_entries_index_path
  end
end
