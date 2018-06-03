Rails.application.routes.draw do

  get 'home/index'

  devise_for :users
  root 'post#index2'
  
  get '/post/' => 'post#show'
  get '/edit/:id' => 'post#edit'
  get '/post/index' => 'post#index'
    
  #post
  get '/post/:id' => 'post#show'
  post '/post' => 'post#create'
  post '/post/:id' => 'post#update'
  delete '/post/:id' => 'post#delete'
  
  #comment
  post '/comment/:id' => 'comment#create'
  delete '/comment/:id' => 'comment#delete'
  
end
