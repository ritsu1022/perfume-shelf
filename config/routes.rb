Rails.application.routes.draw do
  get 'perfumes/index'
  root to: "perfumes#index"
end
