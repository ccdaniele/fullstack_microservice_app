class EventsUserSerializer < ActiveModel::Serializer
  attributes :id, :event_id, :user_id
    belongs_to :user
    belongs_to :event
end
