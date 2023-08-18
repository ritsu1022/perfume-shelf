Rails.application.routes.draw do
  devise_for :users
  get 'perfumes/index'
  root to: "perfumes#index"
  resources :users, only: [:edit, :update]
  resources :perfumes, only: [:new, :create, :show, :edit, :update, :destroy]
end
