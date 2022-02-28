Rails.application.routes.draw do
  devise_for :users
  root to: 'lessons#index'
  resources :lessons, only: [:index, :show, :edit, :new, :create, :destroy ] do
    resources :sessions, only: [:show, :new, :create, :destroy]
  end
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
