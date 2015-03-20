PostitTemplate::Application.routes.draw do
  root to: 'welcome#index'
  get '/register', to: 'users#new'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  get 'logout', to: 'sessions#destroy'
  
  resources :scripts do
  end
  
  resources :users, only: [:show, :create, :edit, :update] do
  end
end
