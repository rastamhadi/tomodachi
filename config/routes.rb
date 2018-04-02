Rails.application.routes.draw do
  resources :users do
    resources :friendships, only: [:create, :destroy]
  end
end
