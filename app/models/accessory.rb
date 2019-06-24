class Accessory < ApplicationRecord
  belongs_to :user
  has_many :server_accessories
  has_many :client_accessories
end
