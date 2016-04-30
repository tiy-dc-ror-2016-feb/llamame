class PhoneNumber < ActiveRecord::Base
  belongs_to :phone_numberable, polymorphic: true
  NUMBER_TYPES = { cell: "Cell", work: "Work", home: "Home" }
  validates :number_type, inclusion: { in: %w( Cell Work Home ) }

end
