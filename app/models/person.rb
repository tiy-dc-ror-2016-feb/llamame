class Person < ActiveRecord::Base
  belongs_to :company
  has_many :phone_numbers, as: :phone_numberable
  has_many :emails, as: :emailable
  has_many :addresses, as: :addressable
  has_many :notes, as: :noteable
  has_many :interactions
  accepts_nested_attributes_for :emails
  accepts_nested_attributes_for :phone_numbers
  accepts_nested_attributes_for :addresses
  scope :search, -> (q) do
    like_q = "%#{q.downcase}%"
    where("lower(people.last_name) LIKE ? OR lower(people.first_name) LIKE ?", like_q, like_q)
  end

  def full_name
    [first_name, last_name].join(" ")
  end

end
