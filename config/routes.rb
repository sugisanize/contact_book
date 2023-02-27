Rails.application.routes.draw do
  get 'contacts/index'
  devise_for :users
  root to: "contacts#index"
  resources :users, only: [:edit, :update]
  resources :contacts, only: [:index, :new, :create]

end
