Myflix::Application.routes.draw do

  root 'videos#index'

  get 'categories/:id' => 'categories#show' , as:"category"

  resources :videos, only: :show  do
    collection do
      post "search" => "videos#search"
    end
  end
  get 'ui(/:action)', controller: 'ui'


end



