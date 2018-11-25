class Goal < ApplicationRecord
  has_many :requests
  belongs_to :user
  belongs_to :relationship
end
