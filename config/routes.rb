Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "jobs#index"
  resources :users, only: [:index, :create, :show] do
    collection do
      get :signup
    end
  end
  resources :jobs, only: [:index, :new, :create, :show] do
    resources :messages, only: [:create]
    resources :requests, only: [:index, :new, :create, :show]do
      resources :dels, only: [:new, :create, :show]
    end
  end
end
