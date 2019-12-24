class Del < ApplicationRecord
  belongs_to :user
  belongs_to :job
  belongs_to :request
end
