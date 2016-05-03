class PhoneNumber < ActiveRecord::Base
  belongs_to :phone_numberable, polymorphic: true
  NUMBER_TYPES = { Cell: "Cell", Work: "Work", Home: "Home" }

  validates :number_type, inclusion: { in: NUMBER_TYPES.keys.map(&:to_s) }
end
