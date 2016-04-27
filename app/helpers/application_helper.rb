module ApplicationHelper
  def icon_type(medium)
    if medium == "email"
      fa_icon(:envelope)
    elsif medium == "phone"
      fa_icon(:phone)
    elsif medium == "in_person"
      fa_icon(:user)
    end
  end
end
