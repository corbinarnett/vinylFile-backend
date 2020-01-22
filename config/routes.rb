Rails.application.routes.draw do
  
  namespace :api do 
    namespace :v1 do
      resources :albums do
        # only access reviews through albums like so, api/v1/albums/1/reviews
        resources :reviews
      end
    end
  end
  
end
