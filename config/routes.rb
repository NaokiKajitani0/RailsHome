Rails.application.routes.draw do
  resources :costs
  get '/', to: 'girls#home', as: 'home'
  get '/test', to: 'costs#test'
  resources :girls
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
