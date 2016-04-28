class Person < ActiveRecord::Base
  belongs_to :company
  has_many :phone_numbers, as: :phone_numberable
  has_many :emails, as: :emailable
  has_many :addresses, as: :addressable
  has_many :notes, as: :noteable

end
