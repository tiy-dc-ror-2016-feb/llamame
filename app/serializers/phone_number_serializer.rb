class PhoneNumberSerializer < ActiveModel::Serializer
  attributes :id, :number, :number_type, :phone_numberable_id, :phone_numberable_type
end
