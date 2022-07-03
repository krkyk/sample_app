Rails.application.routes.draw do
  get 'comments/create'
  get 'comments/destroy'
  root to: "homes#top"
  devise_for :users
  resources :lists
  get 'goods/search'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
