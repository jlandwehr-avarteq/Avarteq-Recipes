class Allergy < ActiveRecord::Base
  has_many :user_allergy
  has_many :users, through: :user_allergy
  validates :name, presence: true
end
