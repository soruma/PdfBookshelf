Rails.application.routes.draw do
  get 'home/index'

  resources :books
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root :to => 'Information#index'
end
