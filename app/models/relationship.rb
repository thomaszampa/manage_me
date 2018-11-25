class Relationship < ApplicationRecord
  has_many :goals
  has_many :requests
  has_many :categories
  belongs_to :manager, class_name: "User", optional: true
  belongs_to :artist, class_name: "User", optional: true
end
