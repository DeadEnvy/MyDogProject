Rails.application.routes.draw do
  get 'about_us/index'
resources :dogs, only: [:index, :show]


  root to: 'dogs#index'

  get "/home", to: "dogs#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
