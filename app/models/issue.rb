class Issue < ApplicationRecord
  has_many :entries, dependent: :destroy
end
