Rails.application.routes.draw do
  # get 'customers/index'
  resources :customers, only: :index
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  get "customers/alphabetized", to: "customers#alphabetized", as: "alphabetized"
  get "customers/missing_email", to: "customers#missing_email", as: "missing_email"

  root to: "customers#index"
end
