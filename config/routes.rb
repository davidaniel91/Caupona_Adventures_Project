Rails.application.routes.draw do
  resources :places # Resources needed to be updated for place/images
  get 'about/index'

  get 'reviews/index'

  get 'welcome/index'
  resources :restaurants do
    resources :reviews
  end
  
  root 'welcome#index'
  
end
