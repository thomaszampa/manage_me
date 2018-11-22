class Goal < ApplicationRecord
  has_many :requests
  belongs_to :user

  def user_goals

  end
end
