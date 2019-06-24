class ServerAccessory < ApplicationRecord
  belongs_to :server_record
  belongs_to :accessory
end
