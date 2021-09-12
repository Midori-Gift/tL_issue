Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  # ユーザーログイン用
  devise_for :users
  
  # トップページルーティング
  root to: 'homes#top'
  
  # ユーザー関連ルーティング
  resources :users, only:[:show, :edit]
  
  # 投稿関連ルーティング
  resources :posts, only:[:new, :index, :show, :create] do
    resource :postcomment, only:[:create, :destroy]
    resource :favorite, only:[:create, :destroy]
  end
  # Prefixの紛らわしさから投稿削除は個別で設定
  delete 'post/:id/destroy' => 'posts#destroy', as:'post_destroy'
end
