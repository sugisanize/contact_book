Rails.application.routes.draw do
  devise_for :users
  get 'contacts/index'
  root to: "contacts#index"
  resources :users, only: [:index, :show, :edit, :update, :destroy]
  get 'withdrawal/:id', to: 'users#withdrawal', as: 'withdrawal'
  resources :contacts do
    resources :comments, only: [:index, :new, :create, :edit, :update, :destroy]
  end

end
