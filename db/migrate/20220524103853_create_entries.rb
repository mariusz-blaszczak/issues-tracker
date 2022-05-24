class CreateEntries < ActiveRecord::Migration[7.0]
  def change
    create_table :entries do |t|
      t.references :issue, null: false, foreign_key: true
      t.integer :answer

      t.timestamps
    end
  end
end
