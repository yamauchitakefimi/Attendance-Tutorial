Rails.application.routes.draw do
  root 'static_pages#top'
  get '/signup', to: 'users#new'

  # ログイン機能
  get    '/login', to: 'sessions#new'
  post   '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'

  resources :users do
    member do
      get 'edit_basic_info'
      patch 'update_basic_info'
    end
<<<<<<< HEAD
<<<<<<< HEAD
=======
    resources :attendances, only: :update # この行を追加します。
>>>>>>> add-user-attendances
=======
    resources :attendances, only: :update # この行を追加します。
>>>>>>> add-user-attendances
  end
end
