Rails.application.routes.draw do
  devise_for :users
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # get '/employees', to: 'employees#index'
  # get '/employees/:id', to: 'employees#show'
  resources :employees

  root 'employees#index'
end
