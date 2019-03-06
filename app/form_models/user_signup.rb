module UserSignup
  class Base
    include ActiveModel::Model
    attr_accessor :user

    delegate *User.attribute_names.map { |a| [a, "#{a}="] }.flatten, to: :user

    def initialize(user_attr = {})
      @user = User.new(user_attr)
    end
  end

  class Info < Base
    validates :email, presence: true, format: { with: /@/ }
    validates :first_name, presence: true
    validates :last_name, presence: true
    validates :city, presence: true
    validates :state, presence: true
  end
end
