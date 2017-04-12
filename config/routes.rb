Rails.application.routes.draw do
  get 'about/index'

  get 'reviews/index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'welcome/index'
  resources :restaurants do
    resources :reviews
  end
  
  root 'welcome#index'
  
end
