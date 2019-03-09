class Adventure < ApplicationRecord
  has_many :user_adventures, dependent: :destroy
  has_many :users, through: :user_adventures
  geocoded_by :location
  after_validation :geocode

  def self.topographies
    # self.all.collect(&:topography).uniq
    self.pluck(:topography).uniq
  end
end
