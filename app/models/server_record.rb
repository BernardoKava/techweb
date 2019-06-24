class ServerRecord < ApplicationRecord
  belongs_to :user
  belongs_to :operating_system
  belongs_to :person
  belongs_to :deployment_status
  belongs_to :functional_level
  has_many   :server_accessories , inverse_of: :server_record
  has_many   :herga_applications
  has_many   :switch_ports


  accepts_nested_attributes_for :server_accessories, allow_destroy: true

end
