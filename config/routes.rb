Rails.application.routes.draw do
  get 'contacts/index'
  devise_for :users
  root to: "contacts#index"
  resources :users, only: [:edit, :update]
  resources :contacts do
    resources :comments, only: :create
  end

end
