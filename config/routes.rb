Myflix::Application.routes.draw do

  root 'pages#front'

  get 'categories/:id' => 'categories#show' , as:"category"

  resources :videos, only: :show  do
    collection do
      get "search" => "videos#search"
    end
  end
  get 'ui(/:action)', controller: 'ui'

  get 'register', to: 'users#new'
  resources :users, only: 'create'

end



