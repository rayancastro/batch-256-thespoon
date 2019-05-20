Rails.application.routes.draw do

  # VERB PATH , to: 'CONTROLLER#ACTION'

  root to: 'pages#home'

  get '/about', to: 'pages#about'
  get '/contact', to: 'pages#contact'

  # RESTAURANTS

  get '/restaurants/:id', to: 'restaurants#show', as: :restaurant

  get '/restaurants', to: 'restaurants#index'

  post '/restaurants', to: 'restaurants#create'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
