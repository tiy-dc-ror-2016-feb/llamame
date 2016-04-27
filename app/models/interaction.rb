class Interaction < ActiveRecord::Base
  MEDIUMS = { email: "Email", phone: "Phone", in_person: "In Person" }

  validates :medium, inclusion: { in: MEDIUMS.keys.map(&:to_s) }
end
