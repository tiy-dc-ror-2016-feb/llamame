module ApplicationHelper
  MEDIUMS = {
    email: :envelope,
    phone: :phone,
    in_person: :user,
    question: :question
  }.with_indifferent_access.freeze

  def icon_type(medium)
    fa_icon(MEDIUMS[medium] || :question)
  end
end
