Myflix::Application.routes.draw do


  root 'pages#front'

  get 'home', to: "videos#index"

  get 'categories/:id' => 'categories#show' , as:"category"

  resources :videos, only: :show  do
    collection  do
      get "search" => "videos#search"
    end
  end



  resources :users, only: 'create'

  # routes for login/logout via session
  get  "register" => "users#new"
  get  "login"   => "sessions#new"
  post "login"   => "sessions#create"
  get  "logout"  => "sessions#destroy"



  get 'ui(/:action)', controller: 'ui'
end



