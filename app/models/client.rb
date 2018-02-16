class Client < ApplicationRecord
  has_one :profile, dependent: :destroy
end
