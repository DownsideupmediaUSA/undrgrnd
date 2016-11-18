Rails.application.routes.draw do
  devise_for :users, :skip => [:sessions] do
  get '/auth/facebook' => 'sessions#create'
  end
  devise_scope :user do
  delete 'sign_out', :to => 'devise/sessions#destroy', :as => :destroy_user_session
  end
  resources :dashboard
  resources :songs
  resources :artists
  resources :comments
  resources :genres
  root to: "static_pages#home"



  # resources :genres
  # resources :users
  # resources :artists
  # resources :comments
  # resources :songs
  #
  # root to: "sessions#new"
  # # get 'users/edit'
  # # get 'users/index'
  # # get 'users/new'
  # # get 'users/show'
  #
  # # get 'sessions/new'
  # get 'static_pages/home'
  # get '//sign_out'
  #
  # get "auth/facebook/callback", to: "sessions#create"
  # get "auth/failure", to: redirect('/')
  # get "sign_out", to: "sessions#destroy", as:"sign_out"
  #
  # get 'comments/new'
  # get 'comments/index'
  # get 'comments/edit'
  # get 'comments/show'
  #
  # get 'artists/edit'
  # get 'artists/index'
  # get 'artists/new'
  # get 'artists/show'
  #
  # get 'songs/show'
  # get 'songs/index'
  # get 'songs/new'
  # get 'songs/edit'
  #
  # # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # # post 'users/show'
  # post 'songs/show'
  #
  # # get "/signin" => "sessions#new"
  # # post '/signin' => 'sessions#create'
  # # post '/sessions/new' => 'users#show'
  # post '/signout' => 'sessions#destroy'

end
