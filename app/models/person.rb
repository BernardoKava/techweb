class Person < ApplicationRecord
  has_many :herga_applications
  has_many :network_switches
  has_many :client_records
  has_many :server_records
  belongs_to :user
end
