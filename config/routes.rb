Rails.application.routes.draw do
  namespace :api, defaults: { format: :json } do
    namespace :v1 do
      resources :movies, only: %i[index create]
    end
  end
  root to: 'api/v1/movies#index', defaults: { format: :json }
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
