class TodayEntriesController < ApplicationController
  def index
    @entries = Issue.all.map { |issue| Entry.new(issue: issue) }
  end

  def update
    params["entries"].each do |entry|
      Entry.create!(issue_id: entry["issue_id"], answer: entry["answer"])
    end
  end
end
