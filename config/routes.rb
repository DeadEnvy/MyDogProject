Rails.application.routes.draw do
resources :dogs, only: [:index, :show]


  root to: 'dogs#index'

  get "/home", to: "dogs#index"
  get "/about", to: "about_us#index", as: "index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
