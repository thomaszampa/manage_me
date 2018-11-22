class Relationship < ApplicationRecord
  belongs_to :manager, class_name: "User", optional: true
  belongs_to :artist, class_name: "User", optional: true
end
