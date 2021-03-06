Soblog::Application.routes.draw do
  root :to => "articles#index"
  resources :articles do
    resources :comments
  end
  resources :users
  resource :session
  get '/login' => "sessions#new", :as => "login"
  get '/logout' => "sessions#destroy", :as => "logout"
  get '/search' => "articles#search", :as => "search"
end
