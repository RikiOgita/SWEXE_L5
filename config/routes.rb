Rails.application.routes.draw do
    resources :tweets
    root 'tweets#index'
    get 'get_tweet/:id', to: 'tweet#get_tweet'
    
    resources :users
    get 'get_user/:id', to: 'user#get_user'
    get 'top/main'
    post 'top/login'
    get 'top/logout'
    
    resources :likes
    post 'likes/index'
    get 'likes/index'
    
end
