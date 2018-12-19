class Request < ApplicationRecord
  has_many :category_requests
  has_many :categories, through: :category_requests

  belongs_to :user
  belongs_to :goal
  belongs_to :relationship

  has_one_attached :request_attachment#, optional: true
end
