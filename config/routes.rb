Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get '/signup', to: 'users#new'
  get '/login', to: 'users#login'
  post '/login', to: 'users#logincreate'
  delete '/logout', to: 'users#logout'
  get '/transactions/no-grp', to: 'transactions#no_grp'
  resources :users, only: %i[create show]
  resources :groups, only: %i[index show new create]
  resources :transactions, only: %i[index show new create]
  root 'static_pages#home'
end
