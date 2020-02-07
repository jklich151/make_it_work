Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/contestants/:id', to: 'contestants#show'
  get '/contestants', to: 'contestants#index'
end
