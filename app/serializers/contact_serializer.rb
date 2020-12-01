class ContactSerializer < ActiveModel::Serializer
  attributes :id, :name, :telephone, :email, :category, :company

  has_many :interactions
end
