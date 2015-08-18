Rails.application.routes.draw do
  devise_for :users
  resources :profiles do 
  	collection do
  	end
  end
  root 'profiles#index'
end



  
