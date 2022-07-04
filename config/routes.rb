Rails.application.routes.draw do
  root to: "homes#top"
  devise_for :users
  resources :lists do
    resources :comments, only: [:create, :destroy]
  end
  get 'goods/search'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
