class User < ActiveRecord::Base
  has_many :user_allergy, dependent: :destroy
  has_many :allergies, through: :user_allergy

  has_many :user_ingredients, dependent: :destroy
  has_many :ingredients, through: :user_ingredients
  #allows to create friendrequest
  # @mac sends a friend request to @dee
  #@mac.friend_request(@dee)
  # @dee can accept the friend request
  #@dee.accept_request(@mac)
  # @dee can also decline the friend request
  #@dee.decline_request(@mac)
  has_friendship

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
    :recoverable, :rememberable, :trackable, :validatable

  validates :username, presence: true
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates_uniqueness_of :username
end
