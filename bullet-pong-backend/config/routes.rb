Rails.application.routes.draw do
  #resources :players, only: [:index, :update]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api do
    namespace :v1 do
      resources :players, only: [:index, :update]
      resources :scores, only: [:index, :update]
    end
  end
end
