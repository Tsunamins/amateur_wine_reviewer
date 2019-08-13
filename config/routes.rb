Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  #for now 
  get 'signup' => 'users#new'
  post 'signup' => 'users#create'
  
  root 'home#index'
  resources :users
end
