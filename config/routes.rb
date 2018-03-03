Rails.application.routes.draw do

  root "users#index"
  resources :users do
    collection do
      get 'index'
    end
  end
end
