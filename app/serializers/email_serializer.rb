class EmailSerializer < ActiveModel::Serializer
  attributes :id, :email, :emailable_id, :emailable_type
end
