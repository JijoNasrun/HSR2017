Rails.application.routes.draw do
  get 'devices/index'

  get 'devices/show'

  get 'devices/create'

  get 'devices/new'

  get 'devices/destroy'

  get 'devices/edit'

  get 'devices/update'

  get 'owners/index'

  get 'owners/show'

  get '/registration', to: 'owners#new'

  post '/registration', to: 'owners#create'

  get 'owners/destroy'

  get 'reports/index'

  get 'reports/shownew'

  get 'reports/create'

  get 'reports/update'

  get 'users/new'

  

  get 'sessions/new'

  get 'static_pages/home'

  get  '/signup',  to: 'users#new'

  post '/signup',  to: 'users#create'

  get    '/login',   to: 'sessions#new'
  
  post   '/login',   to: 'sessions#create'

  delete '/logout', to: 'sessions#destroy'



  resources :owners

  resources :users

  resources :reports_api

  root 'static_pages#home'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
