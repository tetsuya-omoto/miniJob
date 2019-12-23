class Request < ApplicationRecord
  belongs_to :user
  belongs_to :job
  has_one :del
end
