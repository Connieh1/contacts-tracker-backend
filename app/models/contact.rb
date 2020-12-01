class Contact < ApplicationRecord
  has_many :interactions
  validates :name, :telephone, :email, :category, presence: true

end
