class User < ApplicationRecord
  has_many :user_adventures, dependent: :destroy
  has_many :adventures, through: :user_adventures
  has_secure_password

  include UserValidations::Info # conerns/user_validations.rb
  validates :username, presence: true, uniqueness: true

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
