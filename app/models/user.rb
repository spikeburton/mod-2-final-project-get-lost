class User < ApplicationRecord
  has_many :user_adventures, dependent: :destroy
  has_many :adventures, through: :user_adventures
  has_secure_password
  validates :username, presence: true, uniqueness: true
  validates :email, presence: true, format: { with: /@/ }
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :city, presence: true
  validates :state, presence: true
end
