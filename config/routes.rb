Rails.application.routes.draw do
  # get 'storage_spaces/create'
  # get 'storage_spaces/index'
  # get 'storage_spaces/edit'
  # get 'storage_spaces/update'
  # get 'bookings/create'
  # get 'bookings/index'
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :storage_spaces do
    resources :bookings, only: [:index, :create, :edit, :update, :show]
  end
  resources :bookings, only: [:destroy]

  get 'user/dashboard', to: 'users#dashboard', as: 'user_dashboard'

end
