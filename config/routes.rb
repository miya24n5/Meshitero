Rails.application.routes.draw do
  
  resources :post_images, only: [ :new, :create, :index, :show, :destroy]
  devise_for :users
  root to: "homes#top"
  match 'about', to: 'homes#about', via: 'get'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

end
