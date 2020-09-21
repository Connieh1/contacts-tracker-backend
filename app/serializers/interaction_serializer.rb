class InteractionSerializer < ActiveModel::Serializer
  attributes :id, :contact_id, :date, :description, :notes
end
