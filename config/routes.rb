Rails.application.routes.draw do
  get 'users/show'
  devise_for :users
  root to: "fashions#index"
  resources :users, :only => [:show]
  

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :fashions do
    resource :favorites, only: [:create, :destroy]
    resource :comments,  only: [:create, :destroy]
  end
end
