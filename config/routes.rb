Rails.application.routes.draw do
  get 'dogs', to: 'dogs#index'
  root to: 'dogs#index'

  get 'dogs/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
