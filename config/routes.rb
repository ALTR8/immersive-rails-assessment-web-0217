Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'static#index'
  get '/signin', to: 'sessions#new'
  post '/signin', to: 'sessions#create'
  resources :guests
  resources :episodes
  resources :users
  resources :appearances

  
end
