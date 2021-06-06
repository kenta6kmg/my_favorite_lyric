Rails.application.routes.draw do
  devise_for :users
  root to: 'lyrics#index'
  resources :lyrics, only: [:index, :new, :create, :destroy, :edit, :update]
  resources :users, only: :show
end