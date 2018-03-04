Rails.application.routes.draw do

  root "users#index"
  resources :users do
    collection do
      get 'requestSender'
      get 'polarFlowCallBack'
    end
  end

  get '/oauth2_callback', :to=> "users#oauth2_callback"

end
