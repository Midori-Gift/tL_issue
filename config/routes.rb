Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  # ユーザーログイン用
  devise_for :users
  
  # トップページルーティング
  root to: 'homes#top'
  
  # ユーザー関連ルーティング
  resources :users, only:[:show, :edit]
  
  # 投稿関連ルーティング
  resources :posts, only:[:new, :index, :show, :create, :destroy]
  
end
