Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  root :to => 'welcome#index'
  devise_for :users, controllers: {
    sessions: 'users/sessions'
  }
  resources :food 

end
