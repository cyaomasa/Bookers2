Rails.application.routes.draw do
  root  'homes#top'
  devise_for :users
  get "/homes/about" => "homes#about", as: "about"
  resources :books, only: [:new, :show, :index, :edit]
  resources :users, only: [:index, :show, :edit]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
