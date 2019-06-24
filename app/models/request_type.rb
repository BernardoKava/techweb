class RequestType < ApplicationRecord
  belongs_to :user
  has_many :service_requests
end
