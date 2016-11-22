Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/', to: 'contacts#index'
  get '/new', to: 'contacts#new'
  post '/contacts', to: 'contacts#index'
  get '/profile', to: 'contacts#profile'
end
