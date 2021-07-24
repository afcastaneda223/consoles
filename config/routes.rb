Rails.application.routes.draw do
  resources :articles do
    member do
      put "like" => "articles#upvote"
      put "unlike" => "articles#downvote"
    end
    post 'comments', to: 'comments#create'
  end
  resources :categories
  devise_for :users
  root 'pages#home'
  get 'pages/playstation'
  get 'pages/xbox'
  get 'pages/nintendo'
  get 'pages/gamerpc'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
