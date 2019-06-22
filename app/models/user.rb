class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  include Gravtastic
  gravtastic

  has_many :server_records
  has_many :herga_applications
  has_many :accessories
  has_many :application_records
  has_many :client_records
  has_many :deployment_statuses
  has_many :functional_levels
  has_many :network_switches
  has_many :operating_systems
  has_many :people
  has_many :request_statuses
  has_many :request_types
  has_many :service_requests
  has_many :switch_ports
  has_many :tech_services



end
