Myflix::Application.routes.draw do

  root 'videos#index'

  get 'home', to: 'videos#index'
  get '/videos/:id', to: 'videos#show' , as: 'video'

  # get "/home" => "videos#index"

  get 'ui(/:action)', controller: 'ui'
end
