class Adventure < ApplicationRecord
  has_many :user_adventures, dependent: :destroy
  has_many :users, through: :user_adventures
end
