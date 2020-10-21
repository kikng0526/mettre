Rails.application.routes.draw do
  get "users/show" => "users#show"
  devise_for :users, controllers: { registrations: 'users/registrations' }
  root to: "fashions#index"
  resources :users, :only => [:show, :edit, :update]
  

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :fashions do
    resource :favorites, only: [:create, :destroy]
    resource :comments,  only: [:create, :destroy]
  end
end
