class Job < ApplicationRecord
  has_many :user
  has_many :messages
  has_many :message_users, through: :messages, source: :user
end
