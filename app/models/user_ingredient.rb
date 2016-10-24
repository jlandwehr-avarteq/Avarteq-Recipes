class UserIngredient < ActiveRecord::Base
  belongs_to :user
  belongs_to :ingredient
  validates_inclusion_of :rating, in: 1..5
end
