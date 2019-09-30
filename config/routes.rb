Rails.application.routes.draw do
  root to: 'pages#home'
  get 'pages/ebook'
  get 'user_plants/index'
  get 'user_plants/show'
  get 'users/show'
  devise_for :users
  namespace :user do
    root :to => "user_plants#index"
  end
  resources :plants
  resources :user_plants
  resources :plant_types, only: [ :index, :show ]
  patch "water/:id", to: "user_plants#water_plant", as: :water_plant
  resources :users, only: [ :index, :show ] do
    member do
      post :follow, to: "users#follow"
      post :unfollow, to: "users#unfollow"
    end
    collection do
      get :leaderboard, to: "users#leaderboard"
    end
  end
  get "user/index", to: "user#index"
  post "like/:id", to: "likes#like", as: 'like'
  post "unlike/:id", to: "likes#unlike", as: 'unlike'
  patch "water-anyway/:id", to: "user_plants#water_anyway", as: :water_anyway
end
