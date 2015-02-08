PostitTemplate::Application.routes.draw do
  root to: 'welcome#index'
  
  resources :scripts do
  end
end
