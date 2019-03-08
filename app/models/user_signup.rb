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
    # concerns/user_validations.rb
    include UserValidations::Info
  end
end
