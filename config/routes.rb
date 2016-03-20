Rails.application.routes.draw do
  devise_for :users do
  	member do
  		get :confirm_email
  	end 
  end 
  resources :books do 
  	resources :reviews

  end 
  root 'books#index'
  resources :charges
  
  
 
end
