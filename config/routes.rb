Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :brooms, except: [:update, :edit] do
    resources :reservations, only: [:new, :create, :destroy]
  end
end
