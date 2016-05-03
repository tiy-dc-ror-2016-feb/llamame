class Company < ActiveRecord::Base
  has_many :people
  has_many :phone_numbers, as: :phone_numberable
  has_many :emails, as: :emailable
  has_many :addresses, as: :addressable
  has_many :notes, as: :noteable
  accepts_nested_attributes_for :addresses
  scope :search, -> (q) do
    where("lower(companies.name) LIKE ? ", "%#{q.downcase}%")
  end
end
