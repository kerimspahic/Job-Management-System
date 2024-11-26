Rails.application.routes.draw do
  get "up" => "rails/health#show", as: :rails_health_check

  resource :auth, only: %i[show create destroy], controller: :auth
  resource :auth_verification, only: [ :show, :create ], controller: :auth_verification
  resources :jobs

  root "home#index"
end
