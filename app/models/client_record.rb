class ClientRecord < ApplicationRecord
  belongs_to :person
  belongs_to :user
  belongs_to :operating_system
  has_many   :client_accessories, inverse_of: :client_record
  has_many   :switch_ports

  accepts_nested_attributes_for :client_accessories, allow_destroy: true

end
