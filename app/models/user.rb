class User < ApplicationRecord
  has_secure_password
  validates :email, presence: true, uniqueness: true

  has_many :goals
  has_many :requests
  # has_many :artist_relationships, class_name: "Relationship", foreign_key: "manager_id"
  # has_many :artists, through: :artist_relationships
  # has_many :manager_relationships, class_name: "Relationship", foreign_key: "artist_id"
  # has_many :managers, through: :manager_relationships
  belongs_to :relationship, optional: true

  def artists
    Relationship.where(manager_id: id).map {|relationship| User.find_by(id: relationship.artist_id)}
  end

  def artist_manager
    relationship.manager
  end

  def full_name
    full_name = first_name + " " + last_name
  end

end
