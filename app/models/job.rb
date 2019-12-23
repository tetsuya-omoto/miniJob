class Job < ApplicationRecord
  belongs_to :user
  has_many :messages
  has_many :requests
end
