Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'welcome/index'
  
  resources :reviews
  
  root 'welcome#index'
  
end
