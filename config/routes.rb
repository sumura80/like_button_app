Rails.application.routes.draw do
  devise_for :users
  resources :posts
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'posts#index'

   # createアクションに対応するルーティングを追加
  post "likes/:post_id/create" => "likes#create"

   # destroyアクションに対応するルーティングを追加
  post "likes/:post_id/destroy" => "likes#destroy"
  
end
