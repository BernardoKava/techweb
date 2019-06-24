class NetworkSwitch < ApplicationRecord
  belongs_to :person
  belongs_to :user
  has_many :switch_ports, inverse_of: :network_switch

  accepts_nested_attributes_for :switch_ports, allow_destroy: true
end
