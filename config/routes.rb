Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :instruments, only: [:index, :show] do
    resources :rental_requests, only: [:create]
  end

  resource :profile, only: [:show]
  namespace :owner do
    resources :instruments, only: [:new, :create]
    resources :rental_requests, only: [] do
      member do
        patch :accept
        patch :decline
      end
    end
  end
end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
