Rails.application.routes.draw do
  
  namespace :api do
    namespace :v1 do
      resources :patients do
        resources :appointments
      end
      resources :doctors do
        resources :schedules
        resources :appointments
      end
    end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
