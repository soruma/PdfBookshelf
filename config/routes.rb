Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root :to => 'home#index'

  # information
  get 'home/index'
  get 'information/index'

  # user
  devise_for :users

  # book
  resources :books

  # rental
  get 'rental', to: 'rental#index'
  get 'rental/:id/addcart', to: 'rental#addcart', as: 'rental_addcart'
  get 'rental/confirmation', to: 'rental#confirmation', as: 'rental_confirmation'
  get 'rental/create', to: 'rental#create', as: 'rental_create'
  get 'rental/:id/destroy', to: 'rental#destroy', as: 'rental_destroy'
  get 'rental/lets-rental', to: 'rental#lets_rental', as: 'rental_lets_rental'
  get 'rental/show'

  # admnin
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
end
