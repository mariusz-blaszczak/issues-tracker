class AddObservedAtColumnToEntries < ActiveRecord::Migration[7.0]
  def change
    add_column :entries, :observed_at, :datetime
  end
end
