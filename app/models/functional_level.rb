class FunctionalLevel < ApplicationRecord
  belongs_to :user
  has_many :server_records
end
