class Driver < ApplicationRecord
  validates :name, presence: true
  validates :contact_num, presence: true
  validates :driver_license, presence: true
  validates :ine, presence: true
  validates :address, presence: true
end
