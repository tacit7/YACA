class Message < ApplicationRecord
  belongs_to :user
  validates :body, presence: true
  scope :load_messages, -> { order(:created_at).last(10)}
end
