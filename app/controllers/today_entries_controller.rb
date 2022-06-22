class TodayEntriesController < ApplicationController
  def index
    @entries = Issue.all.map { |issue| Entry.new(issue: issue) }
  end

  def update
    issue = Issue.find(params.fetch("issue_id"))
    Entry.create!(answer: params.fetch("answer"), issue: issue)

    redirect_to today_entries_index_path
  end
end
