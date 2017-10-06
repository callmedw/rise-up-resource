Rails.application.routes.draw do
  root :to => 'welcome#index'
  resources :services 
  resources :clothings

  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  
  devise_for :users, controllers: {
    sessions: 'users/sessions'
  }
  devise_for :admins
end
