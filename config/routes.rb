Rails.application.routes.draw do
  root to: 'posts#index'
  devise_for :users, controllers: {
    omniauth_callbacks: 'users/omniauth_callbacks',
    registrations: 'users/registrations'
  }

  resources :posts do
    collection do
      get 'calendar'
      get 'search'
    end
  end

  resources :users, only: %i[show edit]
  resources :messages, only: %i[index new create edit update destroy]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
