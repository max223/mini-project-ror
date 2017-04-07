Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'pages#home'
  get '/bonjour/(:name)', to: 'pages#salut' ,as:'salut'
  # get '/articles', to: 'posts#index' , as: 'posts'
  resources :posts
end
