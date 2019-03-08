module UserValidations
  module Info
    extend ActiveSupport::Concern

    included do
      validates :email, presence: true, format: { with: /@/ }
      validates :first_name, presence: true
      validates :last_name, presence: true
      validates :city, presence: true
      validates :state, presence: true
    end
  end
end
