Rails.application.routes.draw do

  resources :client_records
  resources :switch_ports
  resources :network_switches
  resources :service_requests
  resources :request_statuses
  resources :tech_services
  resources :request_types
  resources :people
  resources :herga_applications
  resources :accessories
  resources :operating_systems
  resources :deployment_statuses
  resources :functional_levels
  resources :server_records
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users
  root 'static_pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
