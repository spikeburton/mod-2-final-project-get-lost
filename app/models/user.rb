class User < ApplicationRecord
  has_many :user_adventures, dependent: :destroy
  has_many :adventures, through: :user_adventures
  has_secure_password
  validates :username, presence: true, uniqueness: true
end
