UrlyTiny::Application.routes.draw do
  resources :urls
  resources :visits


  root :to => 'urls#index'
end
