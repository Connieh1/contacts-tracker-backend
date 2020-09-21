class ContactSerializer < ActiveModel::Serializer
  attributes :id, :name, :category, :company

  has_many :interactions
end
