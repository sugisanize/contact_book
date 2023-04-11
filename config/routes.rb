Rails.application.routes.draw do
  devise_for :users
  get 'contacts/index'
  root to: "contacts#index"
  resources :users, only: [:index, :edit, :update]
  resources :contacts do
    resources :comments, only: [:index, :new, :create, :edit, :update, :destroy]
  end

end
