Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: "registrations" }
  resources :profiles do 
  	collection do
  		get 'unverified_number'
  		post 'verify_number'
  		get  'upgrade_page'
  	end
  end
  root 'profiles#index'
end



  
