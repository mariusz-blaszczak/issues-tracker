class Entry < ApplicationRecord
  belongs_to :issue

  scope :observed_today, -> { where("observed_at >= ? AND observed_at <= ?", observed_at.beginning_of_day, observed_at.end_of_day) }

  validate :validate_only_one_entry_per_day

  private

  def validate_only_one_entry_per_day
    self.observed_at ||= Time.zone.now

    if Entry.observed_today.where(issue_id: issue_id).exists?
      errors.add(:observed_at, :allowed_only_one_per_day)
    end
  end
end
