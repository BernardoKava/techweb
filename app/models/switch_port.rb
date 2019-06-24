class SwitchPort < ApplicationRecord
  belongs_to :user
  belongs_to :network_switch
  belongs_to :server_record
  belongs_to :client_record
end
