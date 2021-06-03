Rails.application.routes.draw do
  get 'lyrics/index'
  root to: "lyrics#index"
  resources :lyrics, only: :index
end
