UrlyTiny::Application.routes.draw do

  get 'signup', to: 'users#new', as: 'signup'
  get 'login', to: 'sessions#new', as: 'login'
  get 'logout', to: 'sessions#destroy', as: 'logout'
  get 'link_stats', to: 'users#show', as: 'link_stats'


  resources :users, :except => [:destroy, :edit, :update, :index, :show]
  resources :sessions, :except => [:edit, :update, :index,:show]

  resources :urls, :except => [:edit, :update, :new]
  # resources :visits, :only => [:show]
  get '/:id', :to => 'visits#show'


  root :to => 'urls#index'
end

