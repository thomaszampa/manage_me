class Request < ApplicationRecord
  has_many :category_requests
  has_many :categories, through: :category_requests
  belongs_to :user
  belongs_to :goal
end
