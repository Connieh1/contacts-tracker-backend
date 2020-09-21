class Interaction < ApplicationRecord
  belongs_to :contact
  validates :date, :description, presence: true
end
