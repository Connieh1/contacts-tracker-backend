class Contact < ApplicationRecord
  has_many :interactions
  validates :name, :category, presence: true

end
