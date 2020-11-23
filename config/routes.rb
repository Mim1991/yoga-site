Rails.application.routes.draw do
  devise_for :users

  root to: 'pages#home'
  get 'about', to: 'pages#about'
  get 'blog', to: 'pages#blog'

  resources :yoga_classes do
    resources :bookings, only: [:new, :create, :edit, :update, :destroy]
  end

  resources :bookings, only: [:index, :show, :destroy] do
    member do
      get 'confirmation'
    end
  end

  get 'profile', action: :show, controller: 'users'

end
