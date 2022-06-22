module ChartsHelper
  def data_for_chart(issue)
    Entry.where(issue: issue).pluck(:observed_at, :answer)
  end
end
