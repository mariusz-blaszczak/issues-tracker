module TodayEntriesHelper

  def colorize_answered(issue, answer)
    if today_entry_already_answered?(issue, answer)
      "background: green"
    end
  end

  private

  def today_entry_already_answered?(issue, answer)
    Entry.where(issue: issue, answer: answer).last&.observed_at&.today?
  end
end
