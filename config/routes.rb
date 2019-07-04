Rails.application.routes.draw do
  root to: 'home#index'
  get 'home/index'
  get 'home/about'

  devise_for :users

  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'

  resources :mission_roads
  resources :mission_reasons
  resources :mission_structures
  resources :mission_places
  resources :veichles
  resources :transport_types
  resources :payment_typologies
  resources :service_stations

  resources :reimbursments do
    collection do
      get :billdownload
    end
    collection do
      get :billdownloadlist
    end
  end
  resources :free_reimbursments do
    collection do
      get :billdownload
    end
    collection do
      get :billdownloadlist
    end
  end
  resources :fuels do
    collection do
      get :billdownload
    end
  end
end
