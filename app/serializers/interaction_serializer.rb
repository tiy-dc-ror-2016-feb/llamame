class InteractionSerializer < ActiveModel::Serializer
  attributes :id, :topic, :medium, :details, :follow_up_date
end
