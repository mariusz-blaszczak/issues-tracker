class TodayEntriesController < ApplicationController
  def index
    @entries = Issue.all.map { |issue| Entry.new(issue: issue) }
  end

  def update

  end
end
