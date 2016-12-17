Rails.application.routes.draw do
  get 'information/index'

  resources :books
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root :to => 'information#index'
end
