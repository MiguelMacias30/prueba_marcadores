Rails.application.routes.draw do
  resources :markers
  resources :subcategories
  resources :categories
  resources :types
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'api/category', to: 'api#index'
  root :'markers#index'
end
