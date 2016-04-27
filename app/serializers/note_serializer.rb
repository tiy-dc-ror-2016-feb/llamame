class NoteSerializer < ActiveModel::Serializer
  attributes :id, :noteable_id, :noteable_type, :body
  has_one :user
end
