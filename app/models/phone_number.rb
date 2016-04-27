class PhoneNumber < ActiveRecord::Base
  NUMBER_TYPES = [ "Cell", "Work", "Home" ] 

  validates :number_type, inclusion: { in: %w( Cell Work Home ) }
end
