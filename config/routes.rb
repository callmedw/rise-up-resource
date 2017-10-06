Rails.application.routes.draw do
  root :to => 'services#index'
  resources :services 

  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  
  devise_for :users, controllers: {
    sessions: 'users/sessions'
  }
  devise_for :admins
end
