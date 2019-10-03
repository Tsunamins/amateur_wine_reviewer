Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  
  get '/signup' => 'users#new' #current setup needed slash in front, no quotes around signup_path in home/index - signup link
  post '/signup' => 'users#create'
  get '/signin'=> 'sessions#new'
  post '/signin' => 'sessions#create'
  get 'logout' => 'sessions#logout'
  
 

  root 'home#index'



  resources :wines do 
    resources :reviews
  end 

  resources :reviews 
  

  resources :users do 
    resources :reviews 
  end 

  resources :users

  resources :likes
  
  resources :reviews do 
    resources :likes
  end

  resources :reviews do 
    put :like, on: :member
    get :like, on: :member
  end 

  


  #google login route
  get '/auth/:provider/callback' => 'sessions#omniauth'
end
