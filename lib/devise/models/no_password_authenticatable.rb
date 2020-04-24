require Rails.root.join('lib/devise/strategies/no_password_authenticatable')

module Devise
  module Models
    module NoPasswordAuthenticatable
      extend ActiveSupport::Concern
    end
  end
end