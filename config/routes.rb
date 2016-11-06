Rails.application.routes.draw do
  resources :blogs
  resources :games
  devise_for :users, controllers: { sessions: 'users/sessions' }
  resources :pages

  root to: 'pages#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
