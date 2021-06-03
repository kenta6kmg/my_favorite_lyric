Rails.application.routes.draw do
  devise_for :users
  get 'lyrics/index'
  root to: 'lyrics#index'
  resources :lyrics, only: :index
end
