Rails.application.routes.draw do
  devise_for :users
  get 'perfumes/index'
  root to: "perfumes#index"
  resources :perfumes, only: [:destroy]
end
