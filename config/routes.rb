Rails.application.routes.draw do

  root "users#index"
  resources :users do
    collection do
      get 'requestSender'
      get 'polarFlowCallBack'
    end
  end
end
