class PhoneNumber < ActiveRecord::Base
  belongs_to :phone_numberable, polymorphic: true

end
