class OperatingSystem < ApplicationRecord
  belongs_to :user
  has_many :server_records
  has_many :client_records
end
