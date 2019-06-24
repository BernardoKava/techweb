class ServiceRequest < ApplicationRecord
  belongs_to :user
  belongs_to :request_status
  belongs_to :request_type
  belongs_to :tech_service

end
