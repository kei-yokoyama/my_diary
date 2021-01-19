Rails.application.routes.draw do
  root to: "posts#index"
  devise_for :users

  resources :posts do
    collection do
      get 'calendar'
      get 'search'
      end
  end
  

  resources :users, only: [:show, :edit]
  resources :messages, only: [:index, :new, :create, :edit, :update, :destroy]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
