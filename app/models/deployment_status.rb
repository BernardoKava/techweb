class DeploymentStatus < ApplicationRecord
  belongs_to :user
  has_many :server_records
  has_many :herga_applications
end
