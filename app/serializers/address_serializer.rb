class addresseserializer < ActiveModel::Serializer
  attributes :id, :address_1, :address_2, :address_3, :city, :state, :zip_code, :country, :addressable_id, :addressable_type
end
