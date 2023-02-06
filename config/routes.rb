Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      root to: 'shops#index'
    end
  end
  namespace :api do
    namespace :v1 do
      resources :shops do
        resources :products
      end
    end
  end
  
  resources :products do
    resources :categories
  end
  
  resources :categories
end
