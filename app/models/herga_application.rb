class HergaApplication < ApplicationRecord
  belongs_to :user
  belongs_to :person
  belongs_to :server_record
  belongs_to :deployment_status
end
