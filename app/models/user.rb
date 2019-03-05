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

  def add_adventure(a)
    if self.adventures.exclude?(a)
      self.adventures << a
    else
      nil
    end
  end

  def remove_adventure(a)
    self.adventures.destroy(a)
  end
end
