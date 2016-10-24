class Ingredient < ActiveRecord::Base
  has_many :user_ingredients, dependent: :destroy
  has_many :users, through: :user_ingredients

  validates :name, uniqueness: true
  validates :name, presence: true
end
