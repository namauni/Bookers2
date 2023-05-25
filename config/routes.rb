Rails.application.routes.draw do
devise_for :users
resources :users, only: [:index,:show, :edit, :update, :destroy]
root to: 'homes#top'
get '/homes/about' => 'homes#about',as: "about"
resources :homes,only: [:destroy]
resources :books, only: [:new, :create, :index, :show, :destroy, :edit, :update]

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
