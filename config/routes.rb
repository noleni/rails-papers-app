Rails.application.routes.draw do
  get 'comments/index'
  get 'comments/new'
  get 'comments/create'
  get 'posts/index'
  get 'posts/show'
  root to: "pages#home"
  devise_for :users
  resources :posts, only: %i[index show] do
    resources :comments, only: %i[index new create]
  end
end
