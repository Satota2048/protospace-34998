Rails.application.routes.draw do
  devise_for :users
  # get 'prototypes/index'
  #ルートにアクセスするとプロトタイプコントローラーのインデックスビューに遷移する
  root to: "prototypes#index"

  #prototypesはコントローラー名
  resources :prototypes, only: [:new, :create, :edit, :update, :show, :destroy] do
    resources :comments, only: :create 
  end

  resources :users, only: :show

end
