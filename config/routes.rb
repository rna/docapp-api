Rails.application.routes.draw do
  
  namespace :api do
    namespace :v1 do
      resources :patients do
        resources :appointments do
          collection do
            get 'patientAppointments'
          end
        end
      end
      resources :doctors do
        resources :schedules
        resources :appointments do
          collection do
            get 'doctorAppointments'
          end
        end
      end
    end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
