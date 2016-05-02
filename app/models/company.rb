class Company < ActiveRecord::Base
  has_many :people
  has_many :phone_numbers, as: :phone_numberable
  has_many :emails, as: :emailable
  has_many :addresses, as: :addressable
  has_many :notes, as: :noteable
  accepts_nested_attributes_for :addresses

  def self.search(search)
    where("name LIKE ?", "%#{search}%")
    where("content LIKE ?", "%#{search}%")
  end

end
