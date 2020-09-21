Rails.application.routes.draw do

  namespace :api do
    namespace :v1 do
      resources :contacts do
        resources :interactions
      end
    end
  end
end
