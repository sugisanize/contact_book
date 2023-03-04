Rails.application.routes.draw do
  devise_for :admins, controllers:{
    registrations: 'admins/registrations',
    sessions: 'admins/sessions',
    passwords: 'admins/passwords',
    confirmations: 'admins/confirmations'
  }
  devise_for :users, controllers:{
    registrations: 'users/registrations',
    sessions: 'users/sessions',
    passwords: 'users/passwords',
    confirmations: 'users/confirmations'
  }
  get 'contacts/index'
  root to: "contacts#index"
  resources :users, only: [:index, :edit, :update]
  resources :contacts do
    resources :comments, only: :create
  end

end
