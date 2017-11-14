class Price < ApplicationRecord
  has_one :driver
  belongs_to :client
end
