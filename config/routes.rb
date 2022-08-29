Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'books#index'

  resources :books, only: [:new, :create, :destroy, :index]

  devise_for :users, controllers: { sessions: 'users/sessions' }
  resources :mypage, only: [:index]
end
