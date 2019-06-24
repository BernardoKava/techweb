class ClientAccessory < ApplicationRecord
  belongs_to :client_record
  belongs_to :accessory
end
